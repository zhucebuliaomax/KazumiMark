import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/bean/card/palette_card.dart';
import 'package:kazumi/utils/constants.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/bean/settings/theme_provider.dart';
import 'package:kazumi/bean/settings/locale_provider.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:kazumi/bean/settings/color_type.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:window_manager/window_manager.dart';
import 'package:kazumi/utils/device.dart';
import 'package:kazumi/utils/theme.dart';

class ThemeSettingsPage extends StatefulWidget {
  const ThemeSettingsPage({super.key});

  @override
  State<ThemeSettingsPage> createState() => _ThemeSettingsPageState();
}

class _ThemeSettingsPageState extends State<ThemeSettingsPage> {
  late dynamic defaultDanmakuArea;
  late dynamic defaultThemeMode;
  late dynamic defaultThemeColor;
  late bool oledEnhance;
  late bool useDynamicColor;
  late bool showWindowButton;
  late bool useSystemFont;
  late final ThemeProvider themeProvider;
  late final LocaleProvider localeProvider;
  final MenuController menuController = MenuController();
  final MenuController languageMenuController = MenuController();

  @override
  void initState() {
    super.initState();
    defaultThemeMode = GStorage.getSetting(SettingsKeys.themeMode);
    defaultThemeColor = GStorage.getSetting(SettingsKeys.themeColor);
    oledEnhance = GStorage.getSetting(SettingsKeys.oledEnhance);
    useDynamicColor = GStorage.getSetting(SettingsKeys.useDynamicColor);
    showWindowButton = GStorage.getSetting(SettingsKeys.showWindowButton);
    useSystemFont = GStorage.getSetting(SettingsKeys.useSystemFont);
    themeProvider = context.read<ThemeProvider>();
    localeProvider = context.read<LocaleProvider>();
  }

  void onBackPressed(BuildContext context) {
    if (KazumiDialog.observer.hasKazumiDialog) {
      KazumiDialog.dismiss();
      return;
    }
  }

  void setTheme(Color? color) {
    var defaultDarkTheme = ThemeData(
        useMaterial3: true,
        fontFamily: themeProvider.currentFontFamily,
        brightness: Brightness.dark,
        colorSchemeSeed: color,
        progressIndicatorTheme: progressIndicatorTheme2024,
        sliderTheme: sliderTheme2024,
        pageTransitionsTheme: pageTransitionsTheme2024);
    var oledTheme = oledDarkTheme(defaultDarkTheme);
    themeProvider.setTheme(
      ThemeData(
          useMaterial3: true,
          fontFamily: themeProvider.currentFontFamily,
          brightness: Brightness.light,
          colorSchemeSeed: color,
          progressIndicatorTheme: progressIndicatorTheme2024,
          sliderTheme: sliderTheme2024,
          pageTransitionsTheme: pageTransitionsTheme2024),
      oledEnhance ? oledTheme : defaultDarkTheme,
    );
    defaultThemeColor = color?.toARGB32().toRadixString(16) ?? 'default';
    GStorage.putSetting(SettingsKeys.themeColor, defaultThemeColor);
  }

  void resetTheme() {
    var defaultDarkTheme = ThemeData(
        useMaterial3: true,
        fontFamily: themeProvider.currentFontFamily,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.green,
        progressIndicatorTheme: progressIndicatorTheme2024,
        sliderTheme: sliderTheme2024,
        pageTransitionsTheme: pageTransitionsTheme2024);
    var oledTheme = oledDarkTheme(defaultDarkTheme);
    themeProvider.setTheme(
      ThemeData(
          useMaterial3: true,
          fontFamily: themeProvider.currentFontFamily,
          brightness: Brightness.light,
          colorSchemeSeed: Colors.green,
          progressIndicatorTheme: progressIndicatorTheme2024,
          sliderTheme: sliderTheme2024,
          pageTransitionsTheme: pageTransitionsTheme2024),
      oledEnhance ? oledTheme : defaultDarkTheme,
    );
    defaultThemeColor = 'default';
    GStorage.putSetting(SettingsKeys.themeColor, 'default');
  }

  void updateTheme(String theme) async {
    if (theme == 'dark') {
      themeProvider.setThemeMode(ThemeMode.dark);
    }
    if (theme == 'light') {
      themeProvider.setThemeMode(ThemeMode.light);
    }
    if (theme == 'system') {
      themeProvider.setThemeMode(ThemeMode.system);
    }
    await GStorage.putSetting(SettingsKeys.themeMode, theme);
    setState(() {
      defaultThemeMode = theme;
    });

    // Update Windows title bar theme
    if (Platform.isWindows) {
      await windowManager.setBrightness(
          themeProvider.isEffectiveDark() ? Brightness.dark : Brightness.light);
    }
  }

  void updateOledEnhance() {
    dynamic color;
    oledEnhance = GStorage.getSetting(SettingsKeys.oledEnhance);
    if (defaultThemeColor == 'default') {
      color = Colors.green;
    } else {
      color = Color(int.parse(defaultThemeColor, radix: 16));
    }
    setTheme(color);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colorLabels = [
      l10n.colorDefault,
      l10n.colorTeal,
      l10n.colorBlue,
      l10n.colorIndigo,
      l10n.colorViolet,
      l10n.colorPink,
      l10n.colorYellow,
      l10n.colorOrange,
      l10n.colorDeepOrange,
    ];
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        onBackPressed(context);
      },
      child: SettingsDetailScaffold(
        title: Text(l10n.appearanceSettings),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: Text(l10n.appearance),
              tiles: [
                SettingsTile(
                  leading: Icons.dark_mode_rounded,
                  onPressed: (_) {
                    if (menuController.isOpen) {
                      menuController.close();
                    } else {
                      menuController.open();
                    }
                  },
                  title: Text(l10n.darkMode),
                  value: MenuAnchor(
                    consumeOutsideTap: true,
                    controller: menuController,
                    builder: (_, __, ___) {
                      return Text(
                        defaultThemeMode == 'light'
                            ? l10n.light
                            : (defaultThemeMode == 'dark'
                                ? l10n.dark
                                : l10n.followSystem),
                      );
                    },
                    menuChildren: [
                      MenuItemButton(
                        requestFocusOnHover: false,
                        onPressed: () => updateTheme('system'),
                        child: Container(
                          height: 48,
                          constraints: BoxConstraints(minWidth: 112),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.brightness_auto_rounded,
                                  color: defaultThemeMode == 'system'
                                      ? Theme.of(context).colorScheme.primary
                                      : null,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  l10n.followSystem,
                                  style: TextStyle(
                                    color: defaultThemeMode == 'system'
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      MenuItemButton(
                        requestFocusOnHover: false,
                        onPressed: () => updateTheme('light'),
                        child: Container(
                          height: 48,
                          constraints: BoxConstraints(minWidth: 112),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.light_mode_rounded,
                                  color: defaultThemeMode == 'light'
                                      ? Theme.of(context).colorScheme.primary
                                      : null,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  l10n.light,
                                  style: TextStyle(
                                      color: defaultThemeMode == 'light'
                                          ? Theme.of(context)
                                              .colorScheme
                                              .primary
                                          : null),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      MenuItemButton(
                        requestFocusOnHover: false,
                        onPressed: () => updateTheme('dark'),
                        child: Container(
                          height: 48,
                          constraints: BoxConstraints(minWidth: 112),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.dark_mode_rounded,
                                  color: defaultThemeMode == 'dark'
                                      ? Theme.of(context).colorScheme.primary
                                      : null,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  l10n.dark,
                                  style: TextStyle(
                                    color: defaultThemeMode == 'dark'
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SettingsTile(
                  leading: Icons.palette_rounded,
                  enabled: !useDynamicColor,
                  onPressed: (_) async {
                    KazumiDialog.show(builder: (context) {
                      return AlertDialog(
                        title: Text(l10n.colorScheme),
                        content: StatefulBuilder(builder:
                            (BuildContext context, StateSetter setState) {
                          final List<Map<String, dynamic>> colorThemes =
                              colorThemeTypes;
                          return Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 8,
                            runSpacing: isDesktop() ? 8 : 0,
                            children: [
                              ...colorThemes.map(
                                (e) {
                                  final index = colorThemes.indexOf(e);
                                  return GestureDetector(
                                    onTap: () {
                                      index == 0
                                          ? resetTheme()
                                          : setTheme(e['color']);
                                      KazumiDialog.dismiss();
                                    },
                                    child: Column(
                                      children: [
                                        PaletteCard(
                                          color: e['color'],
                                          selected: (e['color']
                                                      .value
                                                      .toRadixString(16) ==
                                                  defaultThemeColor ||
                                              (defaultThemeColor == 'default' &&
                                                  index == 0)),
                                        ),
                                        Text(colorLabels[index]),
                                      ],
                                    ),
                                  );
                                },
                              )
                            ],
                          );
                        }),
                      );
                    });
                  },
                  title: Text(l10n.colorScheme),
                ),
                SettingsTile.switchTile(
                  leading: Icons.colorize_rounded,
                  enabled: !Platform.isIOS,
                  onToggle: (value) async {
                    useDynamicColor = value ?? !useDynamicColor;
                    await GStorage.putSetting(
                        SettingsKeys.useDynamicColor, useDynamicColor);
                    themeProvider.setDynamic(useDynamicColor);
                    setState(() {});
                  },
                  title: Text(l10n.dynamicColor),
                  initialValue: useDynamicColor,
                ),
                SettingsTile.switchTile(
                  leading: Icons.font_download_rounded,
                  onToggle: (value) async {
                    useSystemFont = value ?? !useSystemFont;
                    await GStorage.putSetting(
                        SettingsKeys.useSystemFont, useSystemFont);
                    themeProvider.setFontFamily(useSystemFont);
                    dynamic color;
                    if (defaultThemeColor == 'default') {
                      color = Colors.green;
                    } else {
                      color = Color(int.parse(defaultThemeColor, radix: 16));
                    }
                    setTheme(color);
                    setState(() {});
                  },
                  title: Text(l10n.useSystemFont),
                  description: Text(l10n.useMiSansDescription),
                  initialValue: useSystemFont,
                ),
              ],
              bottomInfo: Text(l10n.dynamicColorDescription),
            ),
            SettingsSection(
              title: Text(l10n.display),
              tiles: [
                SettingsTile(
                  leading: Icons.language_rounded,
                  onPressed: (_) {
                    if (languageMenuController.isOpen) {
                      languageMenuController.close();
                    } else {
                      languageMenuController.open();
                    }
                  },
                  title: Text(l10n.language),
                  value: MenuAnchor(
                    consumeOutsideTap: true,
                    controller: languageMenuController,
                    builder: (_, __, ___) => Text(
                      localeProvider.preference == 'zh'
                          ? l10n.simplifiedChinese
                          : localeProvider.preference == 'en'
                              ? l10n.english
                              : l10n.followSystem,
                    ),
                    menuChildren: [
                      for (final option in [
                        ('system', l10n.followSystem),
                        ('zh', l10n.simplifiedChinese),
                        ('en', l10n.english),
                      ])
                        MenuItemButton(
                          requestFocusOnHover: false,
                          onPressed: () async {
                            await localeProvider.setPreference(option.$1);
                            if (mounted) setState(() {});
                          },
                          child: SizedBox(
                            height: 48,
                            width: 144,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(option.$2),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SettingsTile.switchTile(
                  leading: Icons.contrast_rounded,
                  onToggle: (value) async {
                    oledEnhance = value ?? !oledEnhance;
                    await GStorage.putSetting(
                        SettingsKeys.oledEnhance, oledEnhance);
                    updateOledEnhance();
                    setState(() {});
                  },
                  title: Text(l10n.oledOptimization),
                  description: Text(l10n.oledOptimizationDescription),
                  initialValue: oledEnhance,
                ),
              ],
            ),
            if (isDesktop())
              SettingsSection(
                title: Text(l10n.window),
                tiles: [
                  SettingsTile.switchTile(
                    leading: Icons.web_asset_rounded,
                    onToggle: (value) async {
                      showWindowButton = value ?? !showWindowButton;
                      await GStorage.putSetting(
                          SettingsKeys.showWindowButton, showWindowButton);
                      setState(() {});
                    },
                    title: Text(l10n.useSystemTitleBar),
                    description: Text(l10n.restartToApply),
                    initialValue: showWindowButton,
                  ),
                ],
              ),
            if (Platform.isAndroid)
              SettingsSection(
                title: Text(l10n.screen),
                tiles: [
                  SettingsTile(
                    leading: Icons.sixty_fps_rounded,
                    onPressed: (_) async {
                      context.pushNamed('/settings/theme/display');
                    },
                    title: Text(l10n.screenRefreshRate),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
