import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:flutter/material.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/l10n/l10n.dart';

class InterfaceSettingsPage extends StatefulWidget {
  const InterfaceSettingsPage({super.key});

  @override
  State<InterfaceSettingsPage> createState() => _InterfaceSettingsPageState();
}

class _InterfaceSettingsPageState extends State<InterfaceSettingsPage> {
  late bool showRating;
  late bool showAnimeCounter;
  late String defaultPage;
  final MenuController defaultPageMenuController = MenuController();

  static const defaultPages = [
    '/tab/popular/',
    '/tab/timeline/',
    '/tab/collect/',
    '/tab/my/',
  ];

  String defaultPageLabel(String page) => switch (page) {
        '/tab/timeline/' => context.l10n.pageTimeline,
        '/tab/collect/' => context.l10n.pageCollection,
        '/tab/my/' => context.l10n.pageMy,
        _ => context.l10n.pagePopular,
      };

  @override
  void initState() {
    super.initState();
    showRating = GStorage.getSetting(SettingsKeys.showRating);
    showAnimeCounter = GStorage.getSetting(SettingsKeys.showAnimeCounter);
    defaultPage = GStorage.getSetting(SettingsKeys.defaultStartupPage);
  }

  void updateDefaultPage(String page) {
    GStorage.putSetting(SettingsKeys.defaultStartupPage, page);
    setState(() {
      defaultPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SettingsDetailScaffold(
      title: Text(context.l10n.interfaceSettings),
      body: SettingsList(
        sections: [
          SettingsSection(title: Text(context.l10n.startup), tiles: [
            SettingsTile(
              leading: Icons.home_rounded,
              onPressed: (_) async {
                if (defaultPageMenuController.isOpen) {
                  defaultPageMenuController.close();
                } else {
                  defaultPageMenuController.open();
                }
              },
              title: Text(context.l10n.startupPage),
              description: Text(context.l10n.startupPageDescription),
              value: MenuAnchor(
                consumeOutsideTap: true,
                controller: defaultPageMenuController,
                builder: (_, __, ___) {
                  return Text(
                    defaultPageLabel(defaultPage),
                  );
                },
                menuChildren: [
                  for (final page in defaultPages)
                    MenuItemButton(
                      requestFocusOnHover: false,
                      onPressed: () => updateDefaultPage(page),
                      child: Container(
                        height: 48,
                        constraints: BoxConstraints(minWidth: 112),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            defaultPageLabel(page),
                            style: TextStyle(
                              color: page == defaultPage
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
          ]),
          SettingsSection(
              title: Text(context.l10n.displayedInformation),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.star_rounded,
                  onToggle: (value) async {
                    showRating = value ?? !showRating;
                    await GStorage.putSetting(
                        SettingsKeys.showRating, showRating);
                    setState(() {});
                  },
                  title: Text(context.l10n.showRating),
                  description: Text(context.l10n.showRatingDescription),
                  initialValue: showRating,
                ),
                SettingsTile.switchTile(
                  leading: Icons.insights_rounded,
                  onToggle: (value) async {
                    showAnimeCounter = value ?? !showAnimeCounter;
                    await GStorage.putSetting(
                        SettingsKeys.showAnimeCounter, showAnimeCounter);
                    setState(() {});
                  },
                  title: Text(context.l10n.showAnimeCounter),
                  description: Text(context.l10n.showAnimeCounterDescription),
                  initialValue: showAnimeCounter,
                ),
              ]),
        ],
      ),
    );
  }
}
