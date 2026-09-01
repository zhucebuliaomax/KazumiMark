import 'package:flutter/material.dart';
import 'package:kazumi/bean/appbar/sys_app_bar.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/utils/constants.dart';
import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:kazumi/l10n/l10n.dart';

class RendererSettings extends StatefulWidget {
  const RendererSettings({super.key});

  @override
  State<RendererSettings> createState() => _RendererSettingsState();
}

class _RendererSettingsState extends State<RendererSettings> {
  late final ValueNotifier<String> renderer = ValueNotifier<String>(
    GStorage.getSetting<String>(SettingsKeys.androidVideoRenderer),
  );

  @override
  void dispose() {
    renderer.dispose();
    super.dispose();
  }

  String rendererDescription(String renderer) => switch (renderer) {
        'auto' => context.l10n.rendererAutomatic,
        'gpu' => context.l10n.rendererGpu,
        'gpu-next' => context.l10n.rendererGpuNext,
        'mediacodec_embed' => context.l10n.rendererMediaCodec,
        _ => renderer,
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SysAppBar(
        title: Text(context.l10n.videoRenderer),
      ),
      body: SettingsList(
        sections: [
          SettingsRadioSection<String>(
            title: Text(context.l10n.selectRendererDescription),
            groupValue: renderer.value,
            onChanged: (String? value) {
              if (value != null) {
                GStorage.putSetting<String>(
                    SettingsKeys.androidVideoRenderer, value);
                setState(() {
                  renderer.value = value;
                });
              }
            },
            tiles: androidVideoRenderersList.entries
                .map((e) => SettingsTile<String>.radioTile(
                      title: Text(e.key),
                      description: Text(rendererDescription(e.key)),
                      radioValue: e.key,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
