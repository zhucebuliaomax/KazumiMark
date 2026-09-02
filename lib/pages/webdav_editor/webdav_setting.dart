import 'package:flutter/material.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:kazumi/services/sync/bangumi_sync_service.dart';
import 'package:kazumi/services/logging/logger.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/services/sync/webdav.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/bean/settings/settings_list.dart';

class WebDavSettingsPage extends StatefulWidget {
  const WebDavSettingsPage({super.key});

  @override
  State<WebDavSettingsPage> createState() => _PlayerSettingsPageState();
}

class _PlayerSettingsPageState extends State<WebDavSettingsPage> {
  late bool webDavEnable;
  late bool webDavEnableHistory;
  late bool webDavEnableCollect;
  late bool enableGitProxy;
  late bool enableBangumiProxy;
  late bool bangumiSyncEnable;

  @override
  void initState() {
    super.initState();
    webDavEnable = GStorage.getSetting(SettingsKeys.webDavEnable);
    webDavEnableHistory = GStorage.getSetting(SettingsKeys.webDavEnableHistory);
    webDavEnableCollect = GStorage.getSetting(SettingsKeys.webDavEnableCollect);
    enableGitProxy = GStorage.getSetting(SettingsKeys.enableGitProxy);
    enableBangumiProxy = GStorage.getSetting(SettingsKeys.enableBangumiProxy);
    bangumiSyncEnable = GStorage.getSetting(SettingsKeys.bangumiSyncEnable);
  }

  void onBackPressed(BuildContext context) {
    if (KazumiDialog.observer.hasKazumiDialog) {
      KazumiDialog.dismiss();
      return;
    }
  }

  Future<void> syncHistoryWithWebDav() async {
    var webDavEnable = GStorage.getSetting(SettingsKeys.webDavEnable);
    if (webDavEnable) {
      KazumiLogger().i('WebDav: manual history sync started');
      KazumiDialog.showToast(message: currentL10n.syncingWatchHistory);
      var webDav = WebDav();
      try {
        if (!webDav.isHistorySyncing) {
          await webDav.ping();
        }
        try {
          await webDav.syncHistory();
          KazumiLogger().i('WebDav: manual history sync completed');
          KazumiDialog.showToast(
              message: currentL10n.watchHistorySyncCompleted);
        } catch (e) {
          KazumiLogger().w('WebDav: manual history sync failed', error: e);
          KazumiDialog.showToast(
              message: currentL10n.watchHistorySyncFailed(e.toString()));
        }
      } catch (e) {
        KazumiLogger().w('WebDav: manual history sync ping failed', error: e);
        KazumiDialog.showToast(
            message: currentL10n.webDavConnectionFailed(e.toString()));
      }
    } else {
      KazumiDialog.showToast(message: currentL10n.webDavDisabledOrInvalid);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        onBackPressed(context);
      },
      child: SettingsDetailScaffold(
        title: Text(context.l10n.syncSettings),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: Text(context.l10n.ruleRepository),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.hub_rounded,
                  onToggle: (value) async {
                    enableGitProxy = value ?? !enableGitProxy;
                    await GStorage.putSetting(
                        SettingsKeys.enableGitProxy, enableGitProxy);
                    setState(() {});
                  },
                  title: Text(context.l10n.ruleRepositoryMirror),
                  description:
                      Text(context.l10n.ruleRepositoryMirrorSettingDescription),
                  initialValue: enableGitProxy,
                ),
              ],
            ),
            SettingsSection(
              title: Text('Bangumi'),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.cloud_rounded,
                  onToggle: (value) async {
                    enableBangumiProxy = value ?? !enableBangumiProxy;
                    await GStorage.putSetting(
                        SettingsKeys.enableBangumiProxy, enableBangumiProxy);
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: Text(context.l10n.bangumiMirror),
                  description:
                      Text(context.l10n.bangumiMirrorSettingDescription),
                  initialValue: enableBangumiProxy,
                ),
                SettingsTile.switchTile(
                  leading: Icons.sync_rounded,
                  onToggle: (value) async {
                    final tBangumiEnableSync = value ?? !bangumiSyncEnable;
                    final bangumi = BangumiSyncService();
                    if (tBangumiEnableSync == true) {
                      final token =
                          GStorage.getSetting(SettingsKeys.bangumiAccessToken)
                              .trim();
                      if (token.isEmpty) {
                        KazumiDialog.showToast(
                            message: currentL10n.configureBangumiTokenFirst);
                        return;
                      } else {
                        if (!bangumi.initialized) {
                          try {
                            await bangumi.init();
                          } catch (e) {
                            KazumiDialog.showToast(
                                message: currentL10n
                                    .bangumiInitializationRetryLater);
                            return;
                          }
                        }
                      }
                    }
                    bangumiSyncEnable = tBangumiEnableSync;
                    await GStorage.putSetting(
                        SettingsKeys.bangumiSyncEnable, bangumiSyncEnable);
                    if (!mounted) {
                      return;
                    }
                    setState(() {});
                  },
                  title: Text(context.l10n.bangumiSync),
                  description: Text(context.l10n.bangumiSyncDescription),
                  initialValue: bangumiSyncEnable,
                ),
                SettingsTile(
                  leading: Icons.tune_rounded,
                  onPressed: (_) async {
                    await context.pushNamed('/settings/bangumi/');
                    bangumiSyncEnable =
                        GStorage.getSetting(SettingsKeys.bangumiSyncEnable);
                    setState(() {});
                  },
                  title: Text(context.l10n.bangumiConfiguration),
                ),
              ],
            ),
            SettingsSection(
              title: Text('WEBDAV'),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.cloud_sync_rounded,
                  onToggle: (value) async {
                    webDavEnable = value ?? !webDavEnable;
                    if (!WebDav().initialized && webDavEnable) {
                      try {
                        await WebDav().init();
                      } catch (e) {
                        webDavEnable = false;
                        KazumiDialog.showToast(
                            message:
                                currentL10n.webDavInitializationFailed('$e'));
                      }
                    }
                    if (!webDavEnable) {
                      webDavEnableHistory = false;
                      webDavEnableCollect = false;
                      await GStorage.putSetting(
                          SettingsKeys.webDavEnableHistory, false);
                      await GStorage.putSetting(
                          SettingsKeys.webDavEnableCollect, false);
                    }
                    await GStorage.putSetting(
                        SettingsKeys.webDavEnable, webDavEnable);
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: Text(context.l10n.webDavSync),
                  initialValue: webDavEnable,
                ),
                SettingsTile.switchTile(
                  leading: Icons.history_rounded,
                  onToggle: (value) async {
                    if (!webDavEnable) {
                      KazumiDialog.showToast(
                          message: currentL10n.enableWebDavSyncFirst);
                      return;
                    }
                    webDavEnableHistory = value ?? !webDavEnableHistory;
                    await GStorage.putSetting(
                        SettingsKeys.webDavEnableHistory, webDavEnableHistory);
                    setState(() {});
                  },
                  title: Text(context.l10n.watchHistorySync),
                  description: Text(context.l10n.watchHistorySyncDescription),
                  initialValue: webDavEnableHistory,
                ),
                SettingsTile.switchTile(
                  leading: Icons.favorite_rounded,
                  onToggle: (value) async {
                    if (!webDavEnable) {
                      KazumiDialog.showToast(
                          message: currentL10n.enableWebDavSyncFirst);
                      return;
                    }
                    webDavEnableCollect = value ?? !webDavEnableCollect;
                    await GStorage.putSetting(
                        SettingsKeys.webDavEnableCollect, webDavEnableCollect);
                    setState(() {});
                  },
                  title: Text(context.l10n.collectionSync),
                  description: Text(context.l10n.collectionSyncDescription),
                  initialValue: webDavEnableCollect,
                ),
                SettingsTile(
                  leading: Icons.tune_rounded,
                  onPressed: (_) async {
                    context.pushNamed('/settings/webdav/editor');
                  },
                  title: Text(context.l10n.webDavConfiguration),
                ),
                SettingsTile(
                  leading: Icons.cloud_upload_rounded,
                  trailing: const Icon(Icons.sync_rounded),
                  onPressed: (_) {
                    syncHistoryWithWebDav();
                  },
                  title: Text(context.l10n.syncWatchHistoryNow),
                  description: Text(context.l10n.mergeWatchHistoryWithWebDav),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
