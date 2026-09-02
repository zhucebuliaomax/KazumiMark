import 'dart:async';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/modules/bangumi/bangumi_item.dart';
import 'package:kazumi/modules/collect/collect_module.dart';
import 'package:kazumi/modules/collect/collect_type.dart';
import 'package:flutter/material.dart';
import 'package:kazumi/utils/constants.dart';
import 'package:kazumi/bean/card/bangumi_card.dart';
import 'package:kazumi/pages/collect/collect_controller.dart';
import 'package:kazumi/bean/appbar/sys_app_bar.dart';
import 'package:kazumi/bean/widget/collect_button.dart';
import 'package:kazumi/bean/widget/empty_state_widget.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:kazumi/modules/collect/collect_sync_plan.dart';
import 'package:kazumi/services/storage/storage.dart';

class CollectPage extends StatefulWidget {
  const CollectPage({
    super.key,
    required this.controller,
  });

  final CollectController controller;

  @override
  State<CollectPage> createState() => _CollectPageState();
}

class _CollectPageState extends State<CollectPage>
    with SingleTickerProviderStateMixin {
  CollectController get collectController => widget.controller;
  TabController? tabController;
  bool showDelete = false;
  bool syncCollectiblesing = false;

  Future<bool> _syncBangumiWithProgress({
    required GlobalKey<_FullSyncProgressDialogState> progressDialogKey,
  }) async {
    progressDialogKey.currentState
        ?.update(currentL10n.preparingBangumiCollectionSync, null);

    await Future<void>.delayed(const Duration(milliseconds: 80));

    return collectController.syncCollectiblesBangumi(
      showSuccessToast: false,
      onProgress: (message, current, total) {
        progressDialogKey.currentState?.update(
          total > 0 ? '$message ($current/$total)' : message,
          total > 0 ? (current / total).clamp(0.0, 1.0).toDouble() : null,
        );
      },
    );
  }

  void _showFullSyncProgressDialog({
    required GlobalKey<_FullSyncProgressDialogState> progressDialogKey,
  }) {
    unawaited(KazumiDialog.show(
      clickMaskDismiss: false,
      builder: (context) => _FullSyncProgressDialog(key: progressDialogKey),
    ));
  }

  String _buildFullSyncSummary({
    required CollectSyncPlan plan,
    required bool webDavSynced,
    required bool bangumiSynced,
    required bool webDavUploaded,
  }) {
    final List<String> states = [];
    if (plan.shouldSyncWebDavCollectibles) {
      states.add(webDavSynced
          ? currentL10n.webDavSynced
          : currentL10n.webDavNotCompleted);
    }
    if (plan.shouldSyncBangumi) {
      states.add(bangumiSynced
          ? currentL10n.bangumiSynced
          : currentL10n.bangumiNotCompleted);
    }
    if (plan.shouldSyncWebDavCollectibles &&
        plan.shouldSyncBangumi &&
        webDavSynced &&
        bangumiSynced) {
      states.add(webDavUploaded
          ? currentL10n.webDavLatestDataUploaded
          : currentL10n.webDavLatestDataNotUploaded);
    }
    return states.join('，');
  }

  Future<void> _runFullSync({
    required CollectSyncPlan plan,
  }) async {
    final progressDialogKey = GlobalKey<_FullSyncProgressDialogState>();

    _showFullSyncProgressDialog(
      progressDialogKey: progressDialogKey,
    );

    await Future<void>.delayed(const Duration(milliseconds: 80));

    bool webDavSynced = false;
    bool bangumiSynced = false;
    bool webDavUploaded = false;

    try {
      if (plan.shouldSyncWebDavCollectibles) {
        progressDialogKey.currentState
            ?.update(currentL10n.syncingWebDavCollection, null);
        webDavSynced =
            await collectController.syncCollectibles(showSuccessToast: false);
      }

      if (plan.shouldSyncBangumi) {
        bangumiSynced = await _syncBangumiWithProgress(
          progressDialogKey: progressDialogKey,
        );
      }

      if (plan.shouldUploadWebDavAfterBangumi(
        webDavSynced: webDavSynced,
        bangumiSynced: bangumiSynced,
      )) {
        progressDialogKey.currentState
            ?.update(currentL10n.uploadingLatestCollectionToWebDav, null);
        webDavUploaded = await collectController.uploadCollectiblesToWebDav(
          showSuccessToast: false,
        );
      }
    } finally {
      if (KazumiDialog.observer.hasKazumiDialog) {
        KazumiDialog.dismiss();
      }
    }

    KazumiDialog.showToast(
      message: _buildFullSyncSummary(
        plan: plan,
        webDavSynced: webDavSynced,
        bangumiSynced: bangumiSynced,
        webDavUploaded: webDavUploaded,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    collectController.loadCollectibles();
    tabController = TabController(vsync: this, length: _tabTypes.length);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  /// Tab order follows [CollectType.value], so a collectible of type `n`
  /// belongs to tab `n - 1`.
  static final List<CollectType> _tabTypes =
      CollectType.values.where((type) => type.isCollected).toList();

  /// Room a counted tab needs before the badge squeezes out the label.
  static const double _countedTabMinWidth = 104;

  List<int> get _collectibleCounts {
    final List<int> counts = List<int>.filled(_tabTypes.length, 0);
    for (CollectedBangumi element in collectController.collectibles) {
      counts[element.type - 1]++;
    }
    return counts;
  }

  Widget _buildTab(String label, int? count) {
    if (count == null) {
      return Tab(text: label);
    }
    final ThemeData theme = Theme.of(context);
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              '$count',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool showAnimeCounter =
        GStorage.getSetting(SettingsKeys.showAnimeCounter);
    return Scaffold(
      appBar: SysAppBar(
        needTopOffset: false,
        toolbarHeight: 104,
        // The app bar sits outside the body observer, so the counts need
        // their own one to track the collectibles store.
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kTextTabBarHeight),
          child: Observer(builder: (context) {
            final List<int>? counts =
                showAnimeCounter ? _collectibleCounts : null;
            return LayoutBuilder(builder: (context, constraints) {
              // Splitting the bar evenly leaves no room for label and badge
              // on a narrow screen, so scroll the tabs instead.
              final bool scrollable = counts != null &&
                  constraints.maxWidth <
                      MediaQuery.textScalerOf(context)
                              .scale(_countedTabMinWidth) *
                          _tabTypes.length;
              return TabBar(
                controller: tabController,
                isScrollable: scrollable,
                tabAlignment:
                    scrollable ? TabAlignment.start : TabAlignment.fill,
                tabs: [
                  for (int i = 0; i < _tabTypes.length; i++)
                    _buildTab(_tabTypes[i].label, counts?[i]),
                ],
                indicatorColor: Theme.of(context).colorScheme.primary,
              );
            });
          }),
        ),
        title: Text(context.l10n.pageCollection),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  showDelete = !showDelete;
                });
              },
              icon: showDelete
                  ? const Icon(Icons.edit_outlined)
                  : const Icon(Icons.edit))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool webDavenable =
              await GStorage.getSetting(SettingsKeys.webDavEnable);
          bool webDavCollectEnable =
              GStorage.getSetting(SettingsKeys.webDavEnableCollect);
          bool bgmSyncEnable =
              GStorage.getSetting(SettingsKeys.bangumiSyncEnable);
          final syncPlan = CollectSyncPlan(
            webDavEnabled: webDavenable,
            webDavCollectiblesEnabled: webDavCollectEnable,
            bangumiEnabled: bgmSyncEnable,
          );
          if (!syncPlan.canSync) {
            KazumiDialog.showToast(
                message: currentL10n.syncUnavailableEnableOne);
            return;
          }
          if (showDelete) {
            KazumiDialog.showToast(
                message: currentL10n.syncUnavailableInEditMode);
            return;
          }
          if (syncCollectiblesing) {
            return;
          }
          setState(() {
            syncCollectiblesing = true;
          });
          try {
            await _runFullSync(
              plan: syncPlan,
            );
          } finally {
            if (mounted) {
              setState(() {
                syncCollectiblesing = false;
              });
            }
          }
        },
        child: syncCollectiblesing
            ? const SizedBox(
                width: 32, height: 32, child: CircularProgressIndicator())
            : const Icon(Icons.sync_rounded),
      ),
      body: Observer(builder: (context) {
        return renderBody;
      }),
    );
  }

  Widget get renderBody {
    if (collectController.collectibles.isNotEmpty) {
      return TabBarView(
        controller: tabController,
        children: contentGrid(collectController.collectibles),
      );
    } else {
      return Center(
        child: GeneralEmptyState(
          icon: Icons.favorite_border_rounded,
          title: context.l10n.noCollectionContent,
        ),
      );
    }
  }

  List<Widget> contentGrid(List<CollectedBangumi> collectedBangumiList) {
    List<Widget> gridViewList = [];
    List<List<CollectedBangumi>> collectedBangumiRenderItemList =
        List.generate(_tabTypes.length, (_) => <CollectedBangumi>[]);
    for (CollectedBangumi element in collectedBangumiList) {
      collectedBangumiRenderItemList[element.type - 1].add(element);
    }
    for (List<CollectedBangumi> list in collectedBangumiRenderItemList) {
      list.sort((a, b) => b.time.millisecondsSinceEpoch
          .compareTo(a.time.millisecondsSinceEpoch));
    }
    int crossCount = 3;
    if (MediaQuery.sizeOf(context).width > LayoutBreakpoint.compact['width']!) {
      crossCount = 5;
    }
    if (MediaQuery.sizeOf(context).width > LayoutBreakpoint.medium['width']!) {
      crossCount = 6;
    }
    for (List<CollectedBangumi> collectedBangumiRenderItem
        in collectedBangumiRenderItemList) {
      gridViewList.add(
        CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(StyleString.cardSpace,
                  StyleString.cardSpace, StyleString.cardSpace, 0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: StyleString.cardSpace - 2,
                  crossAxisSpacing: StyleString.cardSpace,
                  crossAxisCount: crossCount,
                  mainAxisExtent:
                      MediaQuery.of(context).size.width / crossCount / 0.65 +
                          MediaQuery.textScalerOf(context).scale(32.0),
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    final BangumiItem bangumiItem =
                        collectedBangumiRenderItem[index].bangumiItem;
                    return Stack(
                      children: [
                        BangumiCardV(
                          bangumiItem: bangumiItem,
                          canTap: !showDelete,
                        ),
                        if (showDelete)
                          Positioned(
                            right: 5,
                            bottom: 5,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                shape: BoxShape.circle,
                              ),
                              child: CollectButton(
                                bangumiItem: bangumiItem,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                  childCount: collectedBangumiRenderItem.length,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return gridViewList;
  }
}

class _FullSyncProgressDialog extends StatefulWidget {
  const _FullSyncProgressDialog({super.key});

  @override
  State<_FullSyncProgressDialog> createState() =>
      _FullSyncProgressDialogState();
}

class _FullSyncProgressDialogState extends State<_FullSyncProgressDialog> {
  String _progressText = currentL10n.preparingCollectionSync;
  double? _progressValue;

  void update(String text, double? value) {
    if (!mounted) return;
    setState(() {
      _progressText = text;
      _progressValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: 340,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.fullCollectionSyncInProgress,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                Text(_progressText),
                const SizedBox(height: 12),
                LinearProgressIndicator(value: _progressValue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
