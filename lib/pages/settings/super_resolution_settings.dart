import 'package:flutter/material.dart';
import 'package:kazumi/bean/appbar/sys_app_bar.dart';
import 'package:kazumi/pages/player/controller/player_super_resolution.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:kazumi/l10n/l10n.dart';

class SuperResolutionSettings extends StatefulWidget {
  const SuperResolutionSettings({super.key});

  @override
  State<SuperResolutionSettings> createState() =>
      _SuperResolutionSettingsState();
}

class _SuperResolutionSettingsState extends State<SuperResolutionSettings> {
  late bool disableWarning;
  late SuperResolutionMode superResolutionMode;

  @override
  void initState() {
    super.initState();
    disableWarning = GStorage.getSetting<bool>(
      SettingsKeys.disableSuperResolutionWarning,
    );
    superResolutionMode = SuperResolutionMode.fromStorageValue(
      GStorage.getSetting<int>(SettingsKeys.defaultSuperResolutionMode),
    );
  }

  String modeLabel(SuperResolutionMode mode) => switch (mode) {
        SuperResolutionMode.efficiency =>
          context.l10n.superResolutionEfficiency,
        SuperResolutionMode.quality => context.l10n.superResolutionQuality,
        _ => context.l10n.superResolutionOff,
      };

  String modeDescription(SuperResolutionMode mode) => switch (mode) {
        SuperResolutionMode.efficiency =>
          context.l10n.superResolutionEfficiencyDescription,
        SuperResolutionMode.quality =>
          context.l10n.superResolutionQualityDescription,
        _ => context.l10n.superResolutionOffDescription,
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SysAppBar(
        title: Text(context.l10n.superResolution),
      ),
      body: SettingsList(
        sections: [
          SettingsRadioSection<SuperResolutionMode>(
            title: Text(context.l10n.superResolutionRequirement),
            groupValue: superResolutionMode,
            onChanged: (SuperResolutionMode? value) {
              if (value == null) return;
              GStorage.putSetting<int>(
                SettingsKeys.defaultSuperResolutionMode,
                value.storageValue,
              );
              setState(() {
                superResolutionMode = value;
              });
            },
            tiles: [
              for (final mode in SuperResolutionMode.values)
                SettingsTile<SuperResolutionMode>.radioTile(
                  title: Text(modeLabel(mode)),
                  description: Text(modeDescription(mode)),
                  radioValue: mode,
                ),
            ],
          ),
          SettingsSection(
            title: Text(context.l10n.defaultBehavior),
            tiles: [
              SettingsTile.switchTile(
                leading: Icons.notifications_off_rounded,
                title: Text(context.l10n.disablePrompt),
                description:
                    Text(context.l10n.disableSuperResolutionPromptDescription),
                initialValue: disableWarning,
                onToggle: (value) async {
                  disableWarning = value ?? !disableWarning;
                  await GStorage.putSetting<bool>(
                    SettingsKeys.disableSuperResolutionWarning,
                    disableWarning,
                  );
                  if (mounted) setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
