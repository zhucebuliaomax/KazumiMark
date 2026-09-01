import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show FilteringTextInputFormatter;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/bean/settings/settings_detail_scaffold.dart';
import 'package:kazumi/pages/player/controller/player_aspect_ratio.dart';
import 'package:kazumi/services/network/metered_network_service.dart';
import 'package:kazumi/utils/constants.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/services/player/pip_utils.dart';
import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:kazumi/utils/device.dart';
import 'package:kazumi/l10n/l10n.dart';

class PlayerSettingsPage extends StatefulWidget {
  const PlayerSettingsPage({super.key});

  @override
  State<PlayerSettingsPage> createState() => _PlayerSettingsPageState();
}

class _PlayerSettingsPageState extends State<PlayerSettingsPage> {
  static const double _minPlayerControllerLayerDisappearSeconds = 1;
  static const double _maxPlayerControllerLayerDisappearSeconds = 10;
  static const int _playerControllerLayerDisappearDivisions = 18;

  late double defaultPlaySpeed;
  late double defaultShortcutForwardPlaySpeed;
  late PlayerAspectRatio defaultAspectRatioMode;
  late bool hAenable;
  late bool androidEnableOpenSLES;
  late bool androidAutoEnterPIP;
  late bool lowMemoryMode;
  late bool playResume;
  late bool showPlayerError;
  late bool privateMode;
  late bool playerDebugMode;
  late bool playerDisableAnimations;
  late bool forceAdBlocker;
  late bool autoPlayNext;
  late bool backgroundPlayback;
  late bool brightnessVolumeGesture;
  late int playerButtonSkipTime;
  late int playerArrowKeySkipTime;
  late int playerLogLevel;
  late int playerControllerLayerDisappearTime;
  final MenuController playerAspectRatioMenuController = MenuController();
  final MenuController playerLogLevelMenuController = MenuController();

  @override
  void initState() {
    super.initState();
    _loadSettingsFromStorage();
    MeteredNetworkService.listenable.addListener(_onMeteredNetworkChanged);
  }

  @override
  void dispose() {
    MeteredNetworkService.listenable.removeListener(_onMeteredNetworkChanged);
    super.dispose();
  }

  void _onMeteredNetworkChanged() {
    if (!mounted) return;
    setState(() {});
  }

  void _loadSettingsFromStorage() {
    defaultPlaySpeed =
        GStorage.getSetting<double>(SettingsKeys.defaultPlaySpeed);
    defaultShortcutForwardPlaySpeed = GStorage.getSetting<double>(
        SettingsKeys.defaultShortcutForwardPlaySpeed);
    defaultAspectRatioMode = PlayerAspectRatio.fromStorageValue(
      GStorage.getSetting<int>(SettingsKeys.defaultAspectRatioType),
    );
    hAenable = GStorage.getSetting<bool>(SettingsKeys.hAenable);
    androidEnableOpenSLES =
        GStorage.getSetting<bool>(SettingsKeys.androidEnableOpenSLES);
    androidAutoEnterPIP =
        GStorage.getSetting<bool>(SettingsKeys.androidAutoEnterPIP);
    lowMemoryMode = GStorage.getSetting<bool>(SettingsKeys.lowMemoryMode);
    playResume = GStorage.getSetting<bool>(SettingsKeys.playResume);
    privateMode = GStorage.getSetting<bool>(SettingsKeys.privateMode);
    showPlayerError = GStorage.getSetting<bool>(SettingsKeys.showPlayerError);
    playerDebugMode = GStorage.getSetting<bool>(SettingsKeys.playerDebugMode);
    autoPlayNext = GStorage.getSetting<bool>(SettingsKeys.autoPlayNext);
    backgroundPlayback =
        GStorage.getSetting<bool>(SettingsKeys.backgroundPlayback);
    playerDisableAnimations =
        GStorage.getSetting<bool>(SettingsKeys.playerDisableAnimations);
    forceAdBlocker = GStorage.getSetting<bool>(SettingsKeys.forceAdBlocker);
    playerLogLevel = GStorage.getSetting<int>(SettingsKeys.playerLogLevel);

    brightnessVolumeGesture =
        GStorage.getSetting<bool>(SettingsKeys.brightnessVolumeGesture);

    playerButtonSkipTime =
        GStorage.getSetting<int>(SettingsKeys.buttonSkipTime);
    playerArrowKeySkipTime =
        GStorage.getSetting<int>(SettingsKeys.arrowKeySkipTime);

    playerControllerLayerDisappearTime = GStorage.getSetting<int>(
        SettingsKeys.playerControllerLayerDisappearTime);
  }

  Future<void> resetPlayerSettings() async {
    final l10n = context.l10n;
    final bool shouldReset = await KazumiDialog.show<bool>(
          builder: (context) => AlertDialog(
            title: Text(l10n.restoreDefaultPlayerSettings),
            content: Text(l10n.restoreDefaultPlayerSettingsConfirmation),
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

    await GStorage.resetPlayerSettings();
    if (Platform.isAndroid) {
      await PipUtils.setAndroidAutoEnterPIPEnabled(false);
    }
    if (!mounted) return;
    setState(_loadSettingsFromStorage);
    KazumiDialog.showToast(message: l10n.defaultPlayerSettingsRestored);
  }

  void onBackPressed(BuildContext context) {
    if (KazumiDialog.observer.hasKazumiDialog) {
      KazumiDialog.dismiss();
      return;
    }
  }

  void updateDefaultPlaySpeed(double speed) {
    GStorage.putSetting<double>(SettingsKeys.defaultPlaySpeed, speed);
    setState(() {
      defaultPlaySpeed = speed;
    });
  }

  void updateDefaultShortcutForwardPlaySpeed(double speed) {
    GStorage.putSetting<double>(
        SettingsKeys.defaultShortcutForwardPlaySpeed, speed);
    setState(() {
      defaultShortcutForwardPlaySpeed = speed;
    });
  }

  void updatePlayerLogLevel(int level) {
    GStorage.putSetting<int>(SettingsKeys.playerLogLevel, level);
    setState(() {
      playerLogLevel = level;
    });
  }

  void updateDefaultAspectRatioMode(PlayerAspectRatio mode) {
    GStorage.putSetting<int>(
      SettingsKeys.defaultAspectRatioType,
      mode.storageValue,
    );
    setState(() {
      defaultAspectRatioMode = mode;
    });
  }

  Future<void> updateButtonSkipTime() async {
    final int? newButtonSkipTime = await _showSkipTimeChangeDialog(
        title: context.l10n.topButtonSkipDuration,
        initialValue: playerButtonSkipTime.toString());

    if (newButtonSkipTime != null &&
        newButtonSkipTime != playerButtonSkipTime) {
      GStorage.putSetting<int>(SettingsKeys.buttonSkipTime, newButtonSkipTime);
      setState(() {
        playerButtonSkipTime = newButtonSkipTime;
      });
    }
  }

  Future<int?> _showSkipTimeChangeDialog(
      {required String title, required String initialValue}) async {
    return KazumiDialog.show<int>(builder: (context) {
      String input = "";
      return AlertDialog(
        title: Text(title),
        content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return TextField(
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // 只允许输入数字
            ],
            decoration: InputDecoration(
              floatingLabelBehavior:
                  FloatingLabelBehavior.never, // 控制label的显示方式
              labelText: initialValue,
            ),
            onChanged: (value) {
              input = value;
            },
          );
        }),
        actions: <Widget>[
          TextButton(
            onPressed: () => KazumiDialog.dismiss(),
            child: Text(
              context.l10n.cancel,
              style: TextStyle(color: Theme.of(context).colorScheme.outline),
            ),
          ),
          TextButton(
            onPressed: () async {
              final int? newValue = int.tryParse(input);

              if (newValue == null) {
                KazumiDialog.showToast(message: context.l10n.enterNumber);
                return;
              }

              if (newValue <= 0) {
                KazumiDialog.showToast(
                    message: context.l10n.enterPositiveNumber);
                return;
              }
              // 以新设置的值弹出
              KazumiDialog.dismiss(popWith: newValue);
            },
            child: Text(context.l10n.confirm),
          ),
        ],
      );
    });
  }

  double get playerControllerLayerDisappearSeconds =>
      (playerControllerLayerDisappearTime / Duration.millisecondsPerSecond)
          .clamp(_minPlayerControllerLayerDisappearSeconds,
              _maxPlayerControllerLayerDisappearSeconds)
          .toDouble();

  String formatPlayerControllerLayerDisappearSeconds(double seconds) {
    final value = seconds == seconds.roundToDouble()
        ? seconds.toInt()
        : double.parse(seconds.toStringAsFixed(1));
    return context.l10n.seconds(value);
  }

  String aspectRatioLabel(PlayerAspectRatio mode) => switch (mode) {
        PlayerAspectRatio.crop => context.l10n.videoFitCrop,
        PlayerAspectRatio.stretch => context.l10n.videoFitStretch,
        PlayerAspectRatio.ratio4x3 => '4:3',
        _ => context.l10n.videoFitAutomatic,
      };

  String logLevelLabel(int level) => switch (level) {
        0 => context.l10n.logLevelError,
        1 => context.l10n.logLevelWarning,
        2 => context.l10n.logLevelBrief,
        3 => context.l10n.logLevelDetailed,
        _ => '???',
      };

  void updatePlayerControllerLayerDisappearSeconds(double seconds) {
    final int newDisappearTime =
        (seconds * Duration.millisecondsPerSecond).round();
    if (newDisappearTime == playerControllerLayerDisappearTime) {
      return;
    }
    GStorage.putSetting<int>(
        SettingsKeys.playerControllerLayerDisappearTime, newDisappearTime);
    setState(() {
      playerControllerLayerDisappearTime = newDisappearTime;
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
        title: Text(context.l10n.playerSettings),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: Text(context.l10n.decodingAndRendering),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.memory_rounded,
                  onToggle: (value) async {
                    hAenable = value ?? !hAenable;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.hAenable, hAenable);
                    setState(() {});
                  },
                  title: Text(context.l10n.hardwareDecoding),
                  initialValue: hAenable,
                ),
                SettingsTile(
                  leading: Icons.developer_board_rounded,
                  onPressed: (_) async {
                    await context.pushNamed('/settings/player/decoder');
                  },
                  title: Text(context.l10n.hardwareDecoder),
                  description:
                      Text(context.l10n.hardwareDecoderEnabledDescription),
                ),
                if (Platform.isAndroid) ...[
                  SettingsTile(
                    leading: Icons.tv_rounded,
                    onPressed: (_) async {
                      await context.pushNamed('/settings/player/renderer');
                    },
                    title: Text(context.l10n.videoRenderer),
                    description: Text(context.l10n.videoRendererDescription),
                  ),
                ],
                SettingsTile.switchTile(
                  leading: Icons.data_saver_on_rounded,
                  enabled: !MeteredNetworkService.isMetered,
                  onToggle: (value) async {
                    lowMemoryMode = value ?? !lowMemoryMode;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.lowMemoryMode, lowMemoryMode);
                    setState(() {});
                  },
                  title: Text(context.l10n.lowMemoryMode),
                  description: Text(MeteredNetworkService.isMetered
                      ? context.l10n.lowMemoryModeMetered
                      : context.l10n.lowMemoryModeDescription),
                  // Effective state, not the stored one, which stays untouched.
                  initialValue:
                      lowMemoryMode || MeteredNetworkService.isMetered,
                ),
                if (Platform.isAndroid) ...[
                  SettingsTile.switchTile(
                    leading: Icons.graphic_eq_rounded,
                    onToggle: (value) async {
                      androidEnableOpenSLES = value ?? !androidEnableOpenSLES;
                      await GStorage.putSetting<bool>(
                          SettingsKeys.androidEnableOpenSLES,
                          androidEnableOpenSLES);
                      setState(() {});
                    },
                    title: Text(context.l10n.lowLatencyAudio),
                    description: Text(context.l10n.lowLatencyAudioDescription),
                    initialValue: androidEnableOpenSLES,
                  ),
                ],
                SettingsTile(
                  leading: Icons.auto_awesome_rounded,
                  onPressed: (_) async {
                    context.pushNamed('/settings/player/super');
                  },
                  title: Text(context.l10n.superResolution),
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.playbackBehavior),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.headphones_rounded,
                  onToggle: (value) async {
                    backgroundPlayback = value ?? !backgroundPlayback;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.backgroundPlayback, backgroundPlayback);
                    setState(() {});
                  },
                  title: Text(context.l10n.backgroundPlayback),
                  description: Text(context.l10n.backgroundPlaybackDescription),
                  initialValue: backgroundPlayback,
                ),
                SettingsTile.switchTile(
                  leading: Icons.history_rounded,
                  onToggle: (value) async {
                    playResume = value ?? !playResume;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.playResume, playResume);
                    setState(() {});
                  },
                  title: Text(context.l10n.resumePlayback),
                  description: Text(context.l10n.resumePlaybackDescription),
                  initialValue: playResume,
                ),
                SettingsTile.switchTile(
                  leading: Icons.playlist_play_rounded,
                  onToggle: (value) async {
                    autoPlayNext = value ?? !autoPlayNext;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.autoPlayNext, autoPlayNext);
                    setState(() {});
                  },
                  title: Text(context.l10n.autoPlayNext),
                  description: Text(context.l10n.autoPlayNextDescription),
                  initialValue: autoPlayNext,
                ),
                if (Platform.isAndroid)
                  SettingsTile.switchTile(
                    leading: Icons.picture_in_picture_alt_rounded,
                    onToggle: (value) async {
                      androidAutoEnterPIP = value ?? !androidAutoEnterPIP;
                      await GStorage.putSetting<bool>(
                          SettingsKeys.androidAutoEnterPIP,
                          androidAutoEnterPIP);
                      await PipUtils.setAndroidAutoEnterPIPEnabled(
                          androidAutoEnterPIP);
                      setState(() {});
                    },
                    title: Text(context.l10n.autoPictureInPicture),
                    description:
                        Text(context.l10n.autoPictureInPictureDescription),
                    initialValue: androidAutoEnterPIP,
                  ),
                SettingsTile.switchTile(
                  leading: Icons.block_rounded,
                  onToggle: (value) async {
                    forceAdBlocker = value ?? !forceAdBlocker;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.forceAdBlocker, forceAdBlocker);
                    setState(() {});
                  },
                  title: Text(context.l10n.adFiltering),
                  description: Text(context.l10n.adFilteringDescription),
                  initialValue: forceAdBlocker,
                ),
                SettingsTile.switchTile(
                  leading: Icons.animation_rounded,
                  onToggle: (value) async {
                    playerDisableAnimations = value ?? !playerDisableAnimations;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.playerDisableAnimations,
                        playerDisableAnimations);
                    setState(() {});
                  },
                  title: Text(context.l10n.disableAnimations),
                  description: Text(context.l10n.disableAnimationsDescription),
                  initialValue: playerDisableAnimations,
                ),
                if (!isDesktop())
                  SettingsTile.switchTile(
                    leading: Icons.swipe_vertical_rounded,
                    onToggle: (value) async {
                      brightnessVolumeGesture =
                          value ?? !brightnessVolumeGesture;
                      await GStorage.putSetting<bool>(
                          SettingsKeys.brightnessVolumeGesture,
                          brightnessVolumeGesture);
                      setState(() {});
                    },
                    title: Text(context.l10n.swipeGestures),
                    description: Text(context.l10n.swipeGesturesDescription),
                    initialValue: brightnessVolumeGesture,
                  ),
                SettingsTile.switchTile(
                  leading: Icons.visibility_off_rounded,
                  onToggle: (value) async {
                    privateMode = value ?? !privateMode;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.privateMode, privateMode);
                    setState(() {});
                  },
                  title: Text(context.l10n.privateMode),
                  description: Text(context.l10n.privateModeDescription),
                  initialValue: privateMode,
                ),
              ],
            ),
            SettingsSection(
              title: Text(context.l10n.diagnostics),
              tiles: [
                SettingsTile.switchTile(
                  leading: Icons.error_outline_rounded,
                  onToggle: (value) async {
                    showPlayerError = value ?? !showPlayerError;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.showPlayerError, showPlayerError);
                    setState(() {});
                  },
                  title: Text(context.l10n.playerErrorMessages),
                  description:
                      Text(context.l10n.playerErrorMessagesDescription),
                  initialValue: showPlayerError,
                ),
                SettingsTile.switchTile(
                  leading: Icons.bug_report_rounded,
                  onToggle: (value) async {
                    playerDebugMode = value ?? !playerDebugMode;
                    await GStorage.putSetting<bool>(
                        SettingsKeys.playerDebugMode, playerDebugMode);
                    setState(() {});
                  },
                  title: Text(context.l10n.debugMode),
                  description: Text(context.l10n.debugModeDescription),
                  initialValue: playerDebugMode,
                ),
                SettingsTile(
                  leading: Icons.receipt_long_rounded,
                  onPressed: (_) async {
                    if (playerLogLevelMenuController.isOpen) {
                      playerLogLevelMenuController.close();
                    } else {
                      playerLogLevelMenuController.open();
                    }
                  },
                  title: Text(context.l10n.logLevel),
                  description: Text(context.l10n.logLevelDescription),
                  value: MenuAnchor(
                    consumeOutsideTap: true,
                    controller: playerLogLevelMenuController,
                    builder: (_, __, ___) {
                      return Text(
                        logLevelLabel(playerLogLevel),
                      );
                    },
                    menuChildren: [
                      for (final entry in playerLogLevelMap.entries)
                        MenuItemButton(
                          requestFocusOnHover: false,
                          onPressed: () => updatePlayerLogLevel(entry.key),
                          child: Container(
                            height: 48,
                            constraints: BoxConstraints(minWidth: 112),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                logLevelLabel(entry.key),
                                style: TextStyle(
                                  color: entry.key == playerLogLevel
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
              title: Text(context.l10n.playbackParameters),
              tiles: [
                SettingsSliderTile(
                  leading: Icons.speed_rounded,
                  title: Text(context.l10n.defaultPlaybackSpeed),
                  value: defaultPlaySpeed,
                  min: 0.25,
                  max: 3,
                  divisions: 11,
                  valueLabel: '${defaultPlaySpeed}x',
                  onChanged: (value) => updateDefaultPlaySpeed(
                      double.parse(value.toStringAsFixed(2))),
                ),
                SettingsSliderTile(
                  leading: Icons.fast_forward_rounded,
                  title: Text(context.l10n.holdPlaybackSpeed),
                  description: Text(context.l10n.holdPlaybackSpeedDescription),
                  value: defaultShortcutForwardPlaySpeed,
                  min: 1.25,
                  max: 3,
                  divisions: 7,
                  valueLabel: '${defaultShortcutForwardPlaySpeed}x',
                  onChanged: (value) => updateDefaultShortcutForwardPlaySpeed(
                      double.parse(value.toStringAsFixed(2))),
                ),
                SettingsSliderTile(
                  leading: Icons.swap_horiz_rounded,
                  title: Text(context.l10n.arrowKeySeek),
                  description: Text(context.l10n.arrowKeySeekDescription),
                  value: playerArrowKeySkipTime.toDouble(),
                  min: 0,
                  max: 15,
                  divisions: 15,
                  valueLabel: context.l10n.seconds(playerArrowKeySkipTime),
                  onChanged: (value) {
                    final newArrowKeySkipTime = value.toInt();
                    if (newArrowKeySkipTime == playerArrowKeySkipTime) {
                      return;
                    }
                    GStorage.putSetting<int>(
                        SettingsKeys.arrowKeySkipTime, newArrowKeySkipTime);
                    setState(() {
                      playerArrowKeySkipTime = newArrowKeySkipTime;
                    });
                  },
                ),
                SettingsTile(
                  leading: Icons.skip_next_rounded,
                  onPressed: (_) async {
                    await updateButtonSkipTime();
                  },
                  title: Text(context.l10n.skipDuration),
                  description: Text(context.l10n.skipDurationDescription),
                  value: Text(context.l10n.seconds(playerButtonSkipTime)),
                ),
                SettingsSliderTile(
                  leading: Icons.timer_rounded,
                  title: Text(context.l10n.controlsHideDelay),
                  description: Text(context.l10n.controlsHideDelayDescription),
                  value: playerControllerLayerDisappearSeconds,
                  min: _minPlayerControllerLayerDisappearSeconds,
                  max: _maxPlayerControllerLayerDisappearSeconds,
                  divisions: _playerControllerLayerDisappearDivisions,
                  valueLabel: formatPlayerControllerLayerDisappearSeconds(
                      playerControllerLayerDisappearSeconds),
                  onChanged: updatePlayerControllerLayerDisappearSeconds,
                ),
                SettingsTile(
                  leading: Icons.aspect_ratio_rounded,
                  onPressed: (_) async {
                    if (playerAspectRatioMenuController.isOpen) {
                      playerAspectRatioMenuController.close();
                    } else {
                      playerAspectRatioMenuController.open();
                    }
                  },
                  title: Text(context.l10n.defaultVideoFit),
                  value: MenuAnchor(
                    consumeOutsideTap: true,
                    controller: playerAspectRatioMenuController,
                    builder: (_, __, ___) {
                      return Text(
                        aspectRatioLabel(defaultAspectRatioMode),
                      );
                    },
                    menuChildren: [
                      for (final aspectRatioMode in PlayerAspectRatio.values)
                        MenuItemButton(
                          requestFocusOnHover: false,
                          onPressed: () =>
                              updateDefaultAspectRatioMode(aspectRatioMode),
                          child: Container(
                            height: 48,
                            constraints: BoxConstraints(minWidth: 112),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                aspectRatioLabel(aspectRatioMode),
                                style: TextStyle(
                                  color: aspectRatioMode ==
                                          defaultAspectRatioMode
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
              tiles: [
                SettingsTile(
                  leading: Icons.settings_backup_restore_rounded,
                  onPressed: (_) => resetPlayerSettings(),
                  title: Text(context.l10n.restoreDefaultSettings),
                  description:
                      Text(context.l10n.restorePlaybackSettingsDescription),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
