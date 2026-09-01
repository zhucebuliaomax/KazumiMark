import 'package:flutter/material.dart';
import 'package:kazumi/bean/appbar/sys_app_bar.dart';
import 'package:kazumi/services/storage/storage.dart';
import 'package:kazumi/utils/constants.dart';
import 'package:kazumi/bean/settings/settings_list.dart';
import 'package:kazumi/l10n/l10n.dart';

class DecoderSettings extends StatefulWidget {
  const DecoderSettings({super.key});

  @override
  State<DecoderSettings> createState() => _DecoderSettingsState();
}

class _DecoderSettingsState extends State<DecoderSettings> {
  late final ValueNotifier<String> decoder = ValueNotifier<String>(
    GStorage.getSetting<String>(SettingsKeys.hardwareDecoder),
  );

  @override
  void dispose() {
    decoder.dispose();
    super.dispose();
  }

  String decoderDescription(String decoder) => switch (decoder) {
        'auto' => context.l10n.decoderAny,
        'auto-safe' => context.l10n.decoderBest,
        'auto-copy' => context.l10n.decoderBestCopy,
        'd3d11va' => context.l10n.decoderWindows8,
        'd3d11va-copy' =>
          context.l10n.decoderNoDirect(context.l10n.decoderWindows8),
        'dxva2' => context.l10n.decoderWindows7,
        'dxva2-copy' =>
          context.l10n.decoderNoDirect(context.l10n.decoderWindows7),
        'nvdec' => context.l10n.decoderNvidiaOnly('NVDEC'),
        'nvdec-copy' =>
          context.l10n.decoderNoDirect(context.l10n.decoderNvidiaOnly('NVDEC')),
        'cuda' => context.l10n
            .decoderDeprecated(context.l10n.decoderNvidiaOnly('CUDA')),
        'cuda-copy' => context.l10n.decoderNoDirect(context.l10n
            .decoderDeprecated(context.l10n.decoderNvidiaOnly('CUDA'))),
        'vulkan' => context.l10n.decoderExperimental('Vulkan'),
        'vulkan-copy' => context.l10n
            .decoderNoDirect(context.l10n.decoderExperimental('Vulkan')),
        'crystalhd' => context.l10n.decoderDeprecated('CrystalHD'),
        'rkmpp' => context.l10n.decoderRockchip,
        'videotoolbox' => 'VideoToolbox (macOS / iOS)',
        'vaapi' => 'VAAPI (Linux)',
        'drm' => 'DRM (Linux)',
        'vdpau' => 'VDPAU (Linux)',
        'mediacodec' => 'MediaCodec (Android)',
        _ when decoder.endsWith('-copy') => context.l10n.decoderNoDirect(
            decoderDescription(
                decoder.substring(0, decoder.length - '-copy'.length))),
        _ => hardwareDecodersList[decoder] ?? decoder,
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SysAppBar(
        title: Text(context.l10n.hardwareDecoder),
      ),
      body: SettingsList(
        sections: [
          SettingsRadioSection<String>(
            title: Text(context.l10n.unsupportedDecoderFallback),
            groupValue: decoder.value,
            onChanged: (String? value) {
              if (value != null) {
                GStorage.putSetting<String>(
                    SettingsKeys.hardwareDecoder, value);
                setState(() {
                  decoder.value = value;
                });
              }
            },
            tiles: hardwareDecodersList.entries
                .map((e) => SettingsTile<String>.radioTile(
                      title: Text(e.key),
                      description: Text(decoderDescription(e.key)),
                      radioValue: e.key,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
