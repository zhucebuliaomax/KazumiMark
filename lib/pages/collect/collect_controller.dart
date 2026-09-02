import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:kazumi/modules/bangumi/bangumi_item.dart';
import 'package:kazumi/modules/collect/collect_module.dart';
import 'package:kazumi/modules/collect/collect_type.dart';
import 'package:kazumi/services/sync/bangumi_sync_service.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/services/sync/webdav.dart';
import 'package:kazumi/repositories/collect_crud_repository.dart';
import 'package:kazumi/repositories/collect_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:kazumi/services/logging/logger.dart';

part 'collect_controller.g.dart';

// Define actions for handling Bangumi collect deletion.
enum _BangumiDeleteSyncAction {
  deleteLocalOnly,
  markAbandoned,
  openWeb,
  cancel,
}

class CollectController = _CollectController with _$CollectController;

abstract class _CollectController with Store {
  _CollectController(
    this._collectCrudRepository,
    this._collectRepository,
  );

  final ICollectCrudRepository _collectCrudRepository;
  final ICollectRepository _collectRepository;

  List<BangumiItem> get favorites => _collectCrudRepository.getFavorites();

  @observable
  ObservableList<CollectedBangumi> collectibles =
      ObservableList<CollectedBangumi>();

  void loadCollectibles() {
    collectibles.clear();
    collectibles.addAll(_collectCrudRepository.getAllCollectibles());
  }

  int getCollectType(BangumiItem bangumiItem) {
    return _collectCrudRepository.getCollectType(bangumiItem.id);
  }

  BangumiItem? getCollectibleBangumiItem(int id) {
    return _collectCrudRepository.getCollectible(id)?.bangumiItem;
  }

  @action
  Future<void> addCollect(BangumiItem bangumiItem, {type = 1}) async {
    if (type == 0) {
      await deleteCollect(bangumiItem);
      return;
    }

    // 1. Sync with Bangumi if enabled
    final bool syncSucceeded = await _syncBangumiCollectIfEnabled(
      bangumiItem.id,
      type,
    );
    if (!syncSucceeded) {
      return;
    }

    final int currentCollectType = getCollectType(bangumiItem);
    final int collectChangeAction = currentCollectType == 0 ? 1 : 2;

    // 2. Update local database and change logs
    await _collectCrudRepository.addCollectible(bangumiItem, type);
    await GStorage.appendCollectChange(
      bangumiId: bangumiItem.id,
      action: collectChangeAction,
      type: type,
    );
    loadCollectibles();
  }

  @action
  Future<void> deleteCollect(BangumiItem bangumiItem) async {
    // Resolve how to handle deletion with user
    final action = await _resolveBangumiDeleteSyncAction(bangumiItem);
    switch (action) {
      case _BangumiDeleteSyncAction.markAbandoned:
        await addCollect(
          bangumiItem,
          type: CollectType.abandoned.value,
        );
        return;

      case _BangumiDeleteSyncAction.openWeb:
        await _deleteCollectLocally(bangumiItem);
        await _openBangumiSubjectPage(bangumiItem.id);
        return;

      case _BangumiDeleteSyncAction.deleteLocalOnly:
        await _deleteCollectLocally(bangumiItem);
        return;

      case _BangumiDeleteSyncAction.cancel:
      case null:
        return;
    }
  }

  Future<void> _deleteCollectLocally(BangumiItem bangumiItem) async {
    await _collectCrudRepository.deleteCollectible(bangumiItem.id);
    await GStorage.appendCollectChange(
      bangumiId: bangumiItem.id,
      action: 3,
      type: 5,
    );
    loadCollectibles();
  }

  Future<_BangumiDeleteSyncAction?> _resolveBangumiDeleteSyncAction(
      BangumiItem bangumiItem) async {
    final bool syncEnable = GStorage.getSetting(SettingsKeys.bangumiSyncEnable);
    if (!syncEnable) {
      return _BangumiDeleteSyncAction.deleteLocalOnly;
    }

    final bangumi = BangumiSyncService();
    if (!bangumi.initialized) {
      return _BangumiDeleteSyncAction.deleteLocalOnly;
    }

    return KazumiDialog.show<_BangumiDeleteSyncAction>(
      clickMaskDismiss: true,
      builder: (context) => AlertDialog(
        title: Text(currentL10n.bangumiDeleteUnsupported),
        content: Text(currentL10n.bangumiDeleteExplanation),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(_BangumiDeleteSyncAction.cancel);
            },
            child: Text(currentL10n.cancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(_BangumiDeleteSyncAction.openWeb);
            },
            child: Text(currentL10n.openWebPage),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pop(_BangumiDeleteSyncAction.markAbandoned);
            },
            child: Text(currentL10n.markAsAbandoned),
          ),
        ],
      ),
    );
  }

  Future<void> _openBangumiSubjectPage(int bangumiId) async {
    final url = Uri.parse('https://bangumi.tv/subject/$bangumiId');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
      return;
    }
    KazumiDialog.showToast(message: currentL10n.bangumiPageOpenFailed);
  }

  Future<bool> _syncBangumiCollectIfEnabled(
      int bangumiId, int localType) async {
    final bool syncEnable = GStorage.getSetting(SettingsKeys.bangumiSyncEnable);
    final bool showImmediateSyncToast =
        GStorage.getSetting(SettingsKeys.bangumiImmediateSyncToastEnable);

    if (!syncEnable) {
      return true;
    }

    final bangumi = BangumiSyncService();
    if (!bangumi.initialized) {
      KazumiDialog.showToast(
        message: currentL10n.bangumiNotInitializedChangeCancelled,
      );
      KazumiLogger().w(
        'Bangumi: immediate collect sync skipped because Bangumi is not initialized. '
        'bangumiId=$bangumiId, type=$localType',
      );
      return false;
    }
    try {
      if (showImmediateSyncToast) {
        KazumiDialog.showToast(message: currentL10n.syncingToBangumi);
      }
      final bool synced =
          await bangumi.syncCollectibleWhenIdle(bangumiId, localType);
      if (synced && showImmediateSyncToast) {
        KazumiDialog.showToast(message: currentL10n.syncedToBangumi);
        return true;
      } else if (!synced) {
        KazumiDialog.showToast(
          message: currentL10n.bangumiSyncFailedChangeCancelled,
        );
        KazumiLogger().w(
          'Bangumi: immediate collect sync did not complete. bangumiId=$bangumiId, type=$localType',
        );
        return false;
      }
      return true;
    } catch (e, stackTrace) {
      KazumiDialog.showToast(
        message: currentL10n.bangumiSyncFailedChangeCancelledWithError(
          e.toString(),
        ),
      );
      KazumiLogger().e(
        'Bangumi: immediate collect sync failed. bangumiId=$bangumiId, type=$localType',
        error: e,
        stackTrace: stackTrace,
      );
      return false;
    }
  }

  Future<void> updateLocalCollect(BangumiItem bangumiItem) async {
    await _collectCrudRepository.updateCollectible(bangumiItem);
    loadCollectibles();
  }

  Future<bool> syncCollectibles({bool showSuccessToast = true}) async {
    final bool webDavCollectEnable =
        GStorage.getSetting(SettingsKeys.webDavEnableCollect);
    if (!webDavCollectEnable) {
      KazumiDialog.showToast(message: currentL10n.webDavCollectSyncDisabled);
      return false;
    }
    if (!WebDav().initialized) {
      KazumiDialog.showToast(message: currentL10n.webDavDisabledOrInvalid);
      return false;
    }
    bool flag = true;
    try {
      await WebDav().ping();
    } catch (e) {
      KazumiLogger().e('WebDav: WebDav connection failed', error: e);
      KazumiDialog.showToast(
        message: currentL10n.webDavConnectionFailed(e.toString()),
      );
      flag = false;
    }
    if (!flag) {
      return false;
    }
    try {
      await WebDav().syncCollectibles();
      if (showSuccessToast) {
        KazumiDialog.showToast(message: currentL10n.webDavSyncComplete);
      }
    } catch (e) {
      KazumiDialog.showToast(
        message: currentL10n.webDavSyncFailed(e.toString()),
      );
      return false;
    }
    loadCollectibles();
    return true;
  }

  /// Only upload local collectibles and change logs to WebDAV, without downloading and merging.
  /// Used by full sync to push Bangumi-updated local changes back to WebDAV.
  Future<bool> uploadCollectiblesToWebDav(
      {bool showSuccessToast = true}) async {
    final bool webDavCollectEnable =
        GStorage.getSetting(SettingsKeys.webDavEnableCollect);
    if (!webDavCollectEnable) {
      KazumiDialog.showToast(message: currentL10n.webDavCollectSyncDisabled);
      return false;
    }
    if (!WebDav().initialized) {
      KazumiDialog.showToast(message: currentL10n.webDavDisabledOrInvalid);
      return false;
    }
    bool flag = true;
    try {
      await WebDav().ping();
    } catch (e) {
      KazumiLogger().e('WebDav: WebDav connection failed', error: e);
      KazumiDialog.showToast(
        message: currentL10n.webDavConnectionFailed(e.toString()),
      );
      flag = false;
    }
    if (!flag) {
      return false;
    }
    try {
      await WebDav().updateCollectibles();
      if (showSuccessToast) {
        KazumiDialog.showToast(message: currentL10n.webDavUploadComplete);
      }
    } catch (e) {
      KazumiDialog.showToast(
        message: currentL10n.webDavUploadFailed(e.toString()),
      );
      return false;
    }
    return true;
  }

  // migrate collect from old version (favorites)
  Future<void> migrateCollect() async {
    if (favorites.isNotEmpty) {
      int count = 0;
      for (BangumiItem bangumiItem in favorites) {
        // Migration should never depend on runtime Bangumi initialization.
        // Persist locally and append change logs, then let later sync handle remote updates.
        final int currentCollectType = getCollectType(bangumiItem);
        final int collectChangeAction = currentCollectType == 0 ? 1 : 2;
        await _collectCrudRepository.addCollectible(bangumiItem, 1);
        await GStorage.appendCollectChange(
          bangumiId: bangumiItem.id,
          action: collectChangeAction,
          type: 1,
        );
        count++;
      }
      await _collectCrudRepository.clearFavorites();
      loadCollectibles();
      KazumiLogger().d(
          'GStorage: detected $count uncategorized favorites, migrated to collectibles');
    }
  }

  /// 根据收藏类型获取番剧ID集合
  ///
  /// [type] 收藏类型
  /// 返回番剧ID集合
  Set<int> getBangumiIdsByType(CollectType type) {
    return _collectRepository.getBangumiIdsByType(type);
  }

  /// 过滤掉指定收藏类型的番剧
  ///
  /// [bangumiList] 原始番剧列表
  /// [excludeType] 要排除的收藏类型
  /// 返回过滤后的番剧列表
  List<BangumiItem> filterBangumiByType(
      List<BangumiItem> bangumiList, CollectType excludeType) {
    final excludeIds = getBangumiIdsByType(excludeType);
    return bangumiList.where((item) => !excludeIds.contains(item.id)).toList();
  }

  /// Sync Bangumi collectibles.
  Future<bool> syncCollectiblesBangumi(
      {void Function(String message, int current, int total)? onProgress,
      bool showSuccessToast = true}) async {
    final bool syncEnable = GStorage.getSetting(SettingsKeys.bangumiSyncEnable);
    if (!syncEnable) {
      KazumiDialog.showToast(
        message: currentL10n.bangumiSyncDisabledEnableInSettings,
      );
      return false;
    }

    if (!BangumiSyncService().initialized) {
      KazumiDialog.showToast(
        message: currentL10n.bangumiSyncNotInitializedCheckToken,
      );
      return false;
    }
    try {
      await BangumiSyncService().ping();
      try {
        final hasChanges =
            await BangumiSyncService().syncCollectibles(onProgress: onProgress);
        if (showSuccessToast) {
          KazumiDialog.showToast(
            message: hasChanges
                ? currentL10n.bangumiSyncComplete
                : currentL10n.noSyncDifferences,
          );
        }
      } catch (e) {
        KazumiDialog.showToast(
          message: currentL10n.bangumiSyncFailed(e.toString()),
        );
        return false;
      }
    } catch (e) {
      KazumiLogger().e('Bangumi: Bangumi connection failed', error: e);
      KazumiDialog.showToast(
        message: currentL10n.bangumiAccessFailed(e.toString()),
      );
      return false;
    }
    loadCollectibles();
    return true;
  }
}
