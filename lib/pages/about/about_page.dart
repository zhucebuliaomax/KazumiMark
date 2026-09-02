import 'dart:io';

import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/pages/my/my_controller.dart';
import 'package:kazumi/request/config/api_endpoints.dart';
import 'package:kazumi/utils/dandan_credentials.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kazumi/utils/device.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({
    super.key,
    required this.controller,
  });

  final MyController controller;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<String> get exitBehaviorTitles => <String>[
        context.l10n.exitKazumi,
        context.l10n.minimizeToTray,
        context.l10n.askEveryTime,
      ];
  late dynamic defaultDanmakuArea;
  late dynamic defaultThemeMode;
  late dynamic defaultThemeColor;
  late int exitBehavior = GStorage.getSetting(SettingsKeys.exitBehavior);
  late bool autoUpdate;
  late bool checkPluginUpdateOnStartup;
  double _cacheSizeMB = -1;
  MyController get myController => widget.controller;
  final MenuController menuController = MenuController();

  @override
  void initState() {
    super.initState();
    autoUpdate = GStorage.getSetting(SettingsKeys.autoUpdate);
    checkPluginUpdateOnStartup =
        GStorage.getSetting(SettingsKeys.checkPluginUpdateOnStartup);
    _getCacheSize();
  }

  void onBackPressed(BuildContext context) {
    if (KazumiDialog.observer.hasKazumiDialog) {
      KazumiDialog.dismiss();
      return;
    }
  }

  Future<Directory> _getCacheDir() async {
    Directory tempDir = await getTemporaryDirectory();
    return Directory('${tempDir.path}/libCachedImageData');
  }

  Future<void> _getCacheSize() async {
    Directory cacheDir = await _getCacheDir();

    if (await cacheDir.exists()) {
      int totalSizeBytes = await _getTotalSizeOfFilesInDir(cacheDir);
      double totalSizeMB = (totalSizeBytes / (1024 * 1024));

      if (mounted) {
        setState(() {
          _cacheSizeMB = totalSizeMB;
        });
      }
    } else {
      if (mounted) {
        setState(() {
          _cacheSizeMB = 0.0;
        });
      }
    }
  }

  Future<int> _getTotalSizeOfFilesInDir(final Directory directory) async {
    final List<FileSystemEntity> children = directory.listSync();
    int total = 0;

    try {
      for (final FileSystemEntity child in children) {
        if (child is File) {
          final int length = await child.length();
          total += length;
        } else if (child is Directory) {
          total += await _getTotalSizeOfFilesInDir(child);
        }
      }
    } catch (_) {}
    return total;
  }

  Future<void> _clearCache() async {
    final Directory libCacheDir = await _getCacheDir();
    await libCacheDir.delete(recursive: true);
    _getCacheSize();
  }

  void _showCacheDialog() {
    KazumiDialog.show(
      builder: (context) {
        return AlertDialog(
          title: Text(context.l10n.cacheManagement),
          content: Text(context.l10n.clearCoverCacheConfirmation),
          actions: [
            TextButton(
              onPressed: () {
                KazumiDialog.dismiss();
              },
              child: Text(
                context.l10n.cancel,
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            TextButton(
              onPressed: () async {
                try {
                  _clearCache();
                } catch (_) {}
                KazumiDialog.dismiss();
              },
              child: Text(context.l10n.confirm),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        onBackPressed(context);
      },
      child: SettingsDetailScaffold(
        title: Text(context.l10n.about),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: Text(context.l10n.openSource),
              tiles: [
                SettingsTile(
                  leading: Icons.gavel_rounded,
                  onPressed: (_) {
                    context.pushNamed('/settings/about/license');
                  },
                  title: Text(context.l10n.openSourceLicenses),
                  description: Text(context.l10n.viewOpenSourceLicenses),
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.externalLinks),
              tiles: [
                SettingsTile(
                  leading: Icons.home_rounded,
                  onPressed: (_) {
                    launchUrl(Uri.parse(ApiEndpoints.projectUrl),
                        mode: LaunchMode.externalApplication);
                  },
                  title: Text(context.l10n.projectHomepage),
                ),
                SettingsTile(
                  leading: Icons.code_rounded,
                  onPressed: (_) {
                    launchUrl(Uri.parse(ApiEndpoints.sourceUrl),
                        mode: LaunchMode.externalApplication);
                  },
                  title: Text(context.l10n.sourceRepository),
                  value: Text('Github'),
                ),
                SettingsTile(
                  leading: Icons.brush_rounded,
                  onPressed: (_) {
                    launchUrl(Uri.parse(ApiEndpoints.iconUrl),
                        mode: LaunchMode.externalApplication);
                  },
                  title: Text(context.l10n.iconDesign),
                  value: Text('Pixiv'),
                ),
                SettingsTile(
                  leading: Icons.menu_book_rounded,
                  onPressed: (_) {
                    launchUrl(Uri.parse(ApiEndpoints.bangumiIndex),
                        mode: LaunchMode.externalApplication);
                  },
                  title: Text(context.l10n.animeIndex),
                  value: Text('Bangumi'),
                ),
                SettingsTile(
                  leading: Icons.image_search_rounded,
                  onPressed: (_) {
                    launchUrl(Uri.parse('https://trace.moe'),
                        mode: LaunchMode.externalApplication);
                  },
                  title: Text(context.l10n.animeImageSearch),
                  value: Text('trace.moe'),
                ),
                SettingsTile(
                  leading: Icons.subtitles_rounded,
                  onPressed: (_) {
                    launchUrl(Uri.parse(ApiEndpoints.dandanIndex),
                        mode: LaunchMode.externalApplication);
                  },
                  title: Text(context.l10n.danmakuSource),
                  description: Text('ID: ${dandanCredentials['id']}'),
                  value: Text(context.l10n.danDanPlayOpenPlatform),
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.community),
              tiles: [
                SettingsTile(
                  leading: Icons.send_rounded,
                  onPressed: (_) {
                    launchUrl(Uri.parse(ApiEndpoints.telegramGroup),
                        mode: LaunchMode.externalApplication);
                  },
                  title: Text('Telegram'),
                  value: Text(context.l10n.tapToJoin),
                ),
              ],
            ),
            if (isDesktop()) // 之后如果有非桌面平台的新选项可以移除
              SettingsSection(
                title: Text(context.l10n.defaultBehavior),
                tiles: [
                  SettingsTile(
                    leading: Icons.exit_to_app_rounded,
                    onPressed: (_) {
                      if (menuController.isOpen) {
                        menuController.close();
                      } else {
                        menuController.open();
                      }
                    },
                    title: Text(context.l10n.whenClosing),
                    value: MenuAnchor(
                      consumeOutsideTap: true,
                      controller: menuController,
                      builder: (_, __, ___) {
                        return Text(exitBehaviorTitles[exitBehavior]);
                      },
                      menuChildren: [
                        for (int i = 0; i < 3; i++)
                          MenuItemButton(
                            requestFocusOnHover: false,
                            onPressed: () {
                              exitBehavior = i;
                              GStorage.putSetting(SettingsKeys.exitBehavior, i);
                              setState(() {});
                            },
                            child: Container(
                              height: 48,
                              constraints: BoxConstraints(minWidth: 112),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  exitBehaviorTitles[i],
                                  style: TextStyle(
                                    color: i == exitBehavior
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            SettingsSection(
              title: Text(context.l10n.storageAndLogs),
              tiles: [
                SettingsTile(
                  leading: Icons.receipt_long_rounded,
                  onPressed: (_) {
                    context.pushNamed('/settings/about/logs');
                  },
                  title: Text(context.l10n.errorLogs),
                ),
                SettingsTile(
                  leading: Icons.cleaning_services_rounded,
                  onPressed: (_) {
                    _showCacheDialog();
                  },
                  title: Text(context.l10n.clearCache),
                  value: _cacheSizeMB == -1
                      ? Text(context.l10n.calculating)
                      : Text('${_cacheSizeMB.toStringAsFixed(2)}MB'),
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.appUpdates),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.update_rounded,
                  onToggle: (value) async {
                    autoUpdate = value ?? !autoUpdate;
                    await GStorage.putSetting(
                        SettingsKeys.autoUpdate, autoUpdate);
                    setState(() {});
                  },
                  title: Text(context.l10n.checkAppUpdatesOnStartup),
                  initialValue: autoUpdate,
                ),
                SettingsTile(
                  leading: Icons.system_update_rounded,
                  onPressed: (_) {
                    myController.checkUpdate();
                  },
                  title: Text(context.l10n.checkAppUpdates),
                  value:
                      Text(context.l10n.currentVersion(ApiEndpoints.version)),
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.ruleUpdates),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.extension_rounded,
                  onToggle: (value) async {
                    checkPluginUpdateOnStartup =
                        value ?? !checkPluginUpdateOnStartup;
                    await GStorage.putSetting(
                      SettingsKeys.checkPluginUpdateOnStartup,
                      checkPluginUpdateOnStartup,
                    );
                    setState(() {});
                  },
                  title: Text(context.l10n.checkRuleUpdatesOnStartup),
                  initialValue: checkPluginUpdateOnStartup,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
