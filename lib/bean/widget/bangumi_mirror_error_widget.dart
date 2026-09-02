import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kazumi/bean/widget/error_widget.dart';
import 'package:kazumi/l10n/l10n.dart';
import 'package:kazumi/services/storage/storage.dart';

class BangumiMirrorErrorWidget extends StatelessWidget {
  const BangumiMirrorErrorWidget({
    super.key,
    required this.onRetry,
    this.onSettingsReturned,
  });

  final VoidCallback onRetry;
  final VoidCallback? onSettingsReturned;

  @override
  Widget build(BuildContext context) {
    final mirrorEnabled = GStorage.getSetting(SettingsKeys.enableBangumiProxy);

    return GeneralErrorWidget(
      errMsg: context.l10n.bangumiMirrorLoadError(
        mirrorEnabled
            ? context.l10n.enabledStatus
            : context.l10n.disabledStatus,
      ),
      actions: [
        GeneralErrorButton(
          onPressed: () async {
            await context.pushNamed('/settings/webdav/');
            onSettingsReturned?.call();
          },
          text: context.l10n.mirrorSwitch,
        ),
        GeneralErrorButton(
          onPressed: onRetry,
          text: context.l10n.tapToRetry,
        ),
      ],
    );
  }
}
