import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:kazumi/utils/device.dart';
import 'package:kazumi/l10n/l10n.dart';

class DanmakuSettingsPage extends StatefulWidget {
  const DanmakuSettingsPage({super.key});

  @override
  State<DanmakuSettingsPage> createState() => _DanmakuSettingsPageState();
}

class _DanmakuSettingsPageState extends State<DanmakuSettingsPage> {
  late final bool compactLayout;
  late double defaultDanmakuArea;
  late double defaultDanmakuOpacity;
  late double defaultDanmakuFontSize;
  late int defaultDanmakuFontWeight;
  late double defaultDanmakuDuration;
  late double defaultDanmakuLineHeight;
  late double defaultdanmakuBorderSize;
  late bool danmakuBorder;
  late bool danmakuTop;
  late bool danmakuBottom;
  late bool danmakuScroll;
  late bool danmakuColor;
  late bool danmakuMassive;
  late bool danmakuDeduplication;
  late bool danmakuBiliBiliSource;
  late bool danmakuGamerSource;
  late bool danmakuDanDanSource;
  late bool danmakuFollowSpeed;

  @override
  void initState() {
    super.initState();
    compactLayout = isCompact();
    _loadSettingsFromStorage();
  }

  void _loadSettingsFromStorage() {
    final settingContext = SettingContext(compactLayout: compactLayout);
    defaultDanmakuArea = GStorage.getSetting(SettingsKeys.danmakuArea);
    defaultDanmakuOpacity = GStorage.getSetting(SettingsKeys.danmakuOpacity);
    defaultDanmakuFontSize = GStorage.getSetting<double>(
        SettingsKeys.danmakuFontSize,
        context: settingContext);
    defaultDanmakuFontWeight =
        GStorage.getSetting(SettingsKeys.danmakuFontWeight);
    defaultDanmakuDuration = GStorage.getSetting(SettingsKeys.danmakuDuration);
    defaultDanmakuLineHeight =
        GStorage.getSetting(SettingsKeys.danmakuLineHeight);
    danmakuBorder = GStorage.getSetting(SettingsKeys.danmakuBorder);
    defaultdanmakuBorderSize =
        GStorage.getSetting(SettingsKeys.danmakuBorderSize);
    danmakuTop = GStorage.getSetting(SettingsKeys.danmakuTop);
    danmakuBottom = GStorage.getSetting(SettingsKeys.danmakuBottom);
    danmakuScroll = GStorage.getSetting(SettingsKeys.danmakuScroll);
    danmakuColor = GStorage.getSetting(SettingsKeys.danmakuColor);
    danmakuMassive = GStorage.getSetting(SettingsKeys.danmakuMassive);
    danmakuDeduplication =
        GStorage.getSetting<bool>(SettingsKeys.danmakuDeduplication);
    danmakuBiliBiliSource =
        GStorage.getSetting<bool>(SettingsKeys.danmakuBiliBiliSource);
    danmakuGamerSource =
        GStorage.getSetting<bool>(SettingsKeys.danmakuGamerSource);
    danmakuDanDanSource =
        GStorage.getSetting<bool>(SettingsKeys.danmakuDanDanSource);
    danmakuFollowSpeed =
        GStorage.getSetting<bool>(SettingsKeys.danmakuFollowSpeed);
  }

  Future<void> resetDanmakuSettings() async {
    final l10n = context.l10n;
    final bool shouldReset = await KazumiDialog.show<bool>(
          builder: (context) => AlertDialog(
            title: Text(l10n.restoreDefaultDanmakuSettings),
            content: Text(l10n.restoreDefaultDanmakuSettingsConfirmation),
            actions: [
              TextButton(
                onPressed: () => KazumiDialog.dismiss(popWith: false),
                child: Text(l10n.cancel),
              ),
              TextButton(
                onPressed: () => KazumiDialog.dismiss(popWith: true),
                child: Text(l10n.restoreDefault),
              ),
            ],
          ),
        ) ??
        false;
    if (!shouldReset) return;

    await GStorage.resetDanmakuSettings();
    if (!mounted) return;
    setState(_loadSettingsFromStorage);
    KazumiDialog.showToast(message: l10n.defaultDanmakuSettingsRestored);
  }

  void onBackPressed(BuildContext context) {
    if (KazumiDialog.observer.hasKazumiDialog) {
      KazumiDialog.dismiss();
      return;
    }
  }

  void updateDanmakuArea(double i) async {
    await GStorage.putSetting<double>(SettingsKeys.danmakuArea, i);
    setState(() {
      defaultDanmakuArea = i;
    });
  }

  void updateDanmakuOpacity(double i) async {
    await GStorage.putSetting<double>(SettingsKeys.danmakuOpacity, i);
    setState(() {
      defaultDanmakuOpacity = i;
    });
  }

  void updateDanmakuFontSize(double i) async {
    await GStorage.putSetting<double>(SettingsKeys.danmakuFontSize, i);
    setState(() {
      defaultDanmakuFontSize = i;
    });
  }

  void updateDanmakuDuration(double i) async {
    await GStorage.putSetting<double>(SettingsKeys.danmakuDuration, i);
    setState(() {
      defaultDanmakuDuration = i;
    });
  }

  void updateDanmakuLineHeight(double i) async {
    await GStorage.putSetting<double>(SettingsKeys.danmakuLineHeight, i);
    setState(() {
      defaultDanmakuLineHeight = i;
    });
  }

  void updateDanmakuFontWeight(int i) async {
    await GStorage.putSetting<int>(SettingsKeys.danmakuFontWeight, i);
    setState(() {
      defaultDanmakuFontWeight = i;
    });
  }

  void updateDanmakuBorderSize(double i) async {
    await GStorage.putSetting<double>(SettingsKeys.danmakuBorderSize, i);
    setState(() {
      defaultdanmakuBorderSize = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        onBackPressed(context);
      },
      child: SettingsDetailScaffold(
        title: Text(context.l10n.danmakuSettings),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: Text(context.l10n.danmakuSource),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.live_tv_rounded,
                  onToggle: (value) async {
                    danmakuBiliBiliSource = value ?? !danmakuBiliBiliSource;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuBiliBiliSource,
                        danmakuBiliBiliSource);
                    setState(() {});
                  },
                  title: Text('BiliBili'),
                  initialValue: danmakuBiliBiliSource,
                ),
                SettingsTile.switchTile(
                  leading: Icons.sports_esports_rounded,
                  onToggle: (value) async {
                    danmakuGamerSource = value ?? !danmakuGamerSource;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuGamerSource, danmakuGamerSource);
                    setState(() {});
                  },
                  title: Text('Gamer'),
                  initialValue: danmakuGamerSource,
                ),
                SettingsTile.switchTile(
                  leading: Icons.forum_rounded,
                  onToggle: (value) async {
                    danmakuDanDanSource = value ?? !danmakuDanDanSource;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuDanDanSource, danmakuDanDanSource);
                    setState(() {});
                  },
                  title: Text(context.l10n.danDanPlay),
                  initialValue: danmakuDanDanSource,
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.danmakuBlocking),
              tiles: [
                SettingsTile(
                  leading: Icons.block_rounded,
                  onPressed: (_) {
                    context.pushNamed('/settings/danmaku/shield');
                  },
                  title: Text(context.l10n.keywordBlocking),
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.danmakuDisplay),
              tiles: [
                SettingsSliderTile(
                  leading: Icons.crop_free_rounded,
                  title: Text(context.l10n.danmakuArea),
                  value: defaultDanmakuArea,
                  min: 0,
                  max: 1,
                  divisions: 8,
                  valueLabel: '${(defaultDanmakuArea * 100).round()}%',
                  onChanged: updateDanmakuArea,
                ),
                SettingsSliderTile(
                  leading: Icons.timer_rounded,
                  title: Text(context.l10n.danmakuDuration),
                  value: defaultDanmakuDuration,
                  min: 2,
                  max: 16,
                  divisions: 14,
                  valueLabel:
                      context.l10n.seconds(defaultDanmakuDuration.round()),
                  onChanged: (value) =>
                      updateDanmakuDuration(value.roundToDouble()),
                ),
                SettingsSliderTile(
                  leading: Icons.format_line_spacing_rounded,
                  title: Text(context.l10n.danmakuLineHeight),
                  value: defaultDanmakuLineHeight,
                  min: 0,
                  max: 3,
                  divisions: 30,
                  valueLabel: defaultDanmakuLineHeight.toStringAsFixed(1),
                  onChanged: (value) => updateDanmakuLineHeight(
                      double.parse(value.toStringAsFixed(1))),
                ),
                SettingsTile.switchTile(
                  leading: Icons.speed_rounded,
                  onToggle: (value) async {
                    danmakuFollowSpeed = value ?? !danmakuFollowSpeed;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuFollowSpeed, danmakuFollowSpeed);
                    setState(() {});
                  },
                  title: Text(context.l10n.danmakuFollowSpeed),
                  description: Text(context.l10n.danmakuFollowSpeedDescription),
                  initialValue: danmakuFollowSpeed,
                ),
                SettingsTile.switchTile(
                  leading: Icons.vertical_align_top_rounded,
                  onToggle: (value) async {
                    danmakuTop = value ?? !danmakuTop;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuTop, danmakuTop);
                    setState(() {});
                  },
                  title: Text(context.l10n.topDanmaku),
                  initialValue: danmakuTop,
                ),
                SettingsTile.switchTile(
                  leading: Icons.vertical_align_bottom_rounded,
                  onToggle: (value) async {
                    danmakuBottom = value ?? !danmakuBottom;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuBottom, danmakuBottom);
                    setState(() {});
                  },
                  title: Text(context.l10n.bottomDanmaku),
                  initialValue: danmakuBottom,
                ),
                SettingsTile.switchTile(
                  leading: Icons.swap_horiz_rounded,
                  onToggle: (value) async {
                    danmakuScroll = value ?? !danmakuScroll;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuScroll, danmakuScroll);
                    setState(() {});
                  },
                  title: Text(context.l10n.scrollingDanmaku),
                  initialValue: danmakuScroll,
                ),
                SettingsTile.switchTile(
                  leading: Icons.layers_rounded,
                  onToggle: (value) async {
                    danmakuMassive = value ?? !danmakuMassive;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuMassive, danmakuMassive);
                    setState(() {});
                  },
                  title: Text(context.l10n.massiveDanmaku),
                  description: Text(context.l10n.massiveDanmakuDescription),
                  initialValue: danmakuMassive,
                ),
                SettingsTile.switchTile(
                  leading: Icons.filter_alt_rounded,
                  onToggle: (value) async {
                    danmakuDeduplication = value ?? !danmakuDeduplication;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuDeduplication,
                        danmakuDeduplication);
                    setState(() {});
                  },
                  title: Text(context.l10n.danmakuDeduplication),
                  description:
                      Text(context.l10n.danmakuDeduplicationDescription),
                  initialValue: danmakuDeduplication,
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.danmakuStyle),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.border_color_rounded,
                  onToggle: (value) async {
                    danmakuBorder = value ?? !danmakuBorder;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuBorder, danmakuBorder);
                    setState(() {});
                  },
                  title: Text(context.l10n.danmakuBorder),
                  initialValue: danmakuBorder,
                ),
                SettingsSliderTile(
                  leading: Icons.line_weight_rounded,
                  title: Text(context.l10n.danmakuBorderWidth),
                  value: defaultdanmakuBorderSize,
                  min: 0.1,
                  max: 3,
                  divisions: 29,
                  valueLabel: defaultdanmakuBorderSize.toStringAsFixed(1),
                  onChanged: (value) => updateDanmakuBorderSize(
                      double.parse(value.toStringAsFixed(1))),
                ),
                SettingsTile.switchTile(
                  leading: Icons.palette_rounded,
                  onToggle: (value) async {
                    danmakuColor = value ?? !danmakuColor;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.danmakuColor, danmakuColor);
                    setState(() {});
                  },
                  title: Text(context.l10n.danmakuColor),
                  initialValue: danmakuColor,
                ),
                SettingsSliderTile(
                  leading: Icons.format_size_rounded,
                  title: Text(context.l10n.fontSize),
                  value: defaultDanmakuFontSize,
                  min: 10,
                  max: isCompact() ? 32 : 48,
                  valueLabel: '${defaultDanmakuFontSize.floor()}',
                  onChanged: (value) =>
                      updateDanmakuFontSize(value.floorToDouble()),
                ),
                SettingsSliderTile(
                  leading: Icons.format_bold_rounded,
                  title: Text(context.l10n.fontWeight),
                  value: defaultDanmakuFontWeight.toDouble(),
                  min: 1,
                  max: 9,
                  divisions: 8,
                  valueLabel: '$defaultDanmakuFontWeight',
                  onChanged: (value) => updateDanmakuFontWeight(value.toInt()),
                ),
                SettingsSliderTile(
                  leading: Icons.opacity_rounded,
                  title: Text(context.l10n.danmakuOpacity),
                  value: defaultDanmakuOpacity,
                  min: 0.1,
                  max: 1,
                  valueLabel: '${(defaultDanmakuOpacity * 100).round()}%',
                  onChanged: (value) => updateDanmakuOpacity(
                      double.parse(value.toStringAsFixed(2))),
                ),
              ],
            ),
            SettingsSection(
              tiles: [
                SettingsTile(
                  leading: Icons.settings_backup_restore_rounded,
                  onPressed: (_) => resetDanmakuSettings(),
                  title: Text(context.l10n.restoreDefaultSettings),
                  description:
                      Text(context.l10n.restoreDanmakuSettingsDescription),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
