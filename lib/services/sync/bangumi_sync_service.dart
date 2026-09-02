import 'dart:async';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:kazumi/modules/collect/collect_sync_merger.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/services/logging/logger.dart';
import 'package:kazumi/modules/bangumi/sync_priority.dart';
import 'package:kazumi/request/apis/bangumi_api.dart';

/// Bangumi 同步服务工具类
class BangumiSyncService {
  /// Current username, set by ping()
  String username = '';

  /// Init status, set after ping() in init()
  bool initialized = false;

  /// Number of queued Bangumi operations waiting
  int _queuedOperationCount = 0;

  /// Number of Bangumi operations running
  int _activeOperationCount = 0;

  /// Serial queue for all Bangumi operations
  Future<void> _operationQueue = Future.value();

  /// Whether any Bangumi operation is active or already queued.
  bool get isUsing => _queuedOperationCount > 0 || _activeOperationCount > 0;

  String get _configuredToken =>
      GStorage.getSetting(SettingsKeys.bangumiAccessToken).trim();

  BangumiSyncService._internal();
  static final BangumiSyncService _instance = BangumiSyncService._internal();
  factory BangumiSyncService() => _instance;

  void reset() {
    initialized = false;
    username = '';
  }

  Future<void> init() async {
    initialized = false;
    username = '';
    if (_configuredToken.isEmpty) {
      throw Exception(currentL10n.enterBangumiAccessToken);
    }
    try {
      await ping();
      initialized = true;
    } catch (e) {
      KazumiLogger().e('Bangumi: Bangumi ping failed', error: e);
      rethrow;
    }
  }

  Future<void> ping() async {
    if (isUsing) {
      throw Exception(currentL10n.bangumiOperationInProgress);
    }
    await _runExclusive(() async {
      try {
        final name = await BangumiApi.getUsername();
        if (name == null) {
          throw Exception(currentL10n.bangumiUsernameFailed);
        } else {
          username = name;
        }
      } catch (e) {
        KazumiLogger().e('Bangumi: Bangumi ping failed', error: e);
        rethrow;
      }
    });
  }

  /// Update a single collectible on Bangumi, waiting for current Bangumi work
  /// to finish and serializing multiple immediate update requests.
  Future<bool> syncCollectibleWhenIdle(int bangumiId, int localType) {
    return _runExclusive(() async {
      return BangumiApi.updateBangumiByType(
        bangumiId,
        localType,
      );
    });
  }

  Future<T> _runExclusive<T>(Future<T> Function() action) {
    final completer = Completer<T>();
    final previousOperation = _operationQueue;
    _queuedOperationCount++;

    _operationQueue = (() async {
      try {
        await previousOperation;
      } catch (_) {}

      _queuedOperationCount--;
      _activeOperationCount++;
      try {
        completer.complete(await action());
      } catch (e, stackTrace) {
        completer.completeError(e, stackTrace);
      } finally {
        _activeOperationCount--;
      }
    })();

    return completer.future;
  }

  /// Record a collectible change (used for WebDAV incremental sync)
  /// [action] 1 代表新增（add），2 代表修改（update）
  /// [type] via: [CollectType]
  Future<void> _recordCollectibleChange(
    int bangumiId,
    int action,
    int type,
  ) async {
    await GStorage.appendCollectChange(
      bangumiId: bangumiId,
      action: action,
      type: type,
    );
  }

  /// Sync Bangumi collectibles with local data
  Future<bool> syncCollectibles({
    void Function(String message, int current, int total)? onProgress,
  }) async {
    final syncEnable = GStorage.getSetting(SettingsKeys.bangumiSyncEnable);
    if (!syncEnable) {
      KazumiDialog.showToast(message: currentL10n.syncDisabled);
      KazumiLogger().i('Bangumi: sync disabled');
      return false;
    }
    if (isUsing) {
      KazumiLogger().w('Bangumi is currently syncing');
      throw Exception(currentL10n.bangumiSyncInProgress);
    }
    return _runExclusive(() async {
      try {
        onProgress?.call(currentL10n.startingBangumiSync, 0, 0);

        final priority = BangumiSyncPriority.fromValue(
          GStorage.getSetting(SettingsKeys.bangumiSyncPriority),
        );

        // 1. 全量拉取远程收藏
        final remoteCollection = await BangumiApi.getBangumiCollectibles(
          username: username,
          limit: 100,
          onProgress: onProgress,
        );

        // 2. 与本地数据对比，进行乐观合并（单向填充）之后，按照优先级处理冲突
        final mergePlan = CollectSyncMerger.planBangumi(
          localCollectibles: GStorage.collectibles.values.toList(),
          remoteCollections: remoteCollection,
          priority: priority,
        );
        final totalOperations = mergePlan.totalOperations;

        if (totalOperations == 0) {
          onProgress?.call(currentL10n.noSyncDifferences, 1, 1);
          return false;
        }

        int syncedCount = 0;
        // 3. 仅本地有：直接上传到 Bangumi
        if (mergePlan.localOnlyUploads.isNotEmpty) {
          onProgress?.call(
            currentL10n.uploadingLocalStatus,
            syncedCount,
            totalOperations,
          );
          for (final upload in mergePlan.localOnlyUploads) {
            final updated = await BangumiApi.updateBangumiByType(
              upload.bangumiId,
              upload.type,
            );
            if (!updated) {
              onProgress?.call(
                currentL10n.uploadLocalStatusFailed,
                syncedCount,
                totalOperations,
              );
              throw Exception(
                currentL10n.bangumiItemUploadFailed(upload.bangumiId),
              );
            }
            syncedCount++;
            onProgress?.call(
              currentL10n.uploadingLocalStatus,
              syncedCount,
              totalOperations,
            );
          }
        }

        // 4. 仅远程有：直接补到本地
        if (mergePlan.remoteOnlyPuts.isNotEmpty) {
          onProgress?.call(
            currentL10n.fillingMissingLocalStatus,
            syncedCount,
            totalOperations,
          );
          for (final mutation in mergePlan.remoteOnlyPuts) {
            await GStorage.putCollectible(mutation.collectible);
            await _recordCollectibleChange(
              mutation.collectible.bangumiItem.id,
              mutation.changeAction,
              mutation.collectible.type,
            );
            syncedCount++;
            onProgress?.call(
              currentL10n.fillingMissingLocalStatus,
              syncedCount,
              totalOperations,
            );
          }
        }

        // 5. 双方都有但不一致：按优先级处理
        if (priority == BangumiSyncPriority.localFirst) {
          onProgress?.call(
            currentL10n.resolvingConflictsLocalFirst,
            syncedCount,
            totalOperations,
          );
          for (final upload in mergePlan.conflictUploads) {
            final updated = await BangumiApi.updateBangumiByType(
              upload.bangumiId,
              upload.type,
            );
            if (updated != true) {
              throw Exception(
                currentL10n.bangumiItemUploadFailed(upload.bangumiId),
              );
            }
            syncedCount++;
            onProgress?.call(
              currentL10n.resolvingConflictsLocalFirst,
              syncedCount,
              totalOperations,
            );
          }
        } else {
          onProgress?.call(
            currentL10n.resolvingConflictsBangumiFirst,
            syncedCount,
            totalOperations,
          );
          for (final mutation in mergePlan.conflictLocalUpdates) {
            await GStorage.putCollectible(mutation.collectible);
            await _recordCollectibleChange(
              mutation.collectible.bangumiItem.id,
              mutation.changeAction,
              mutation.collectible.type,
            );
            syncedCount++;
            onProgress?.call(
              currentL10n.resolvingConflictsBangumiFirst,
              syncedCount,
              totalOperations,
            );
          }
        }
        onProgress?.call(currentL10n.bangumiStatusSyncComplete, 1, 1);
        return true;
      } catch (e) {
        KazumiLogger().e('Bangumi sync failed', error: e);
        rethrow;
      }
    });
  }
}
