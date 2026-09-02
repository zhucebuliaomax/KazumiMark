import 'dart:io';

import 'package:kazumi/bean/dialog/dialog_helper.dart';
import 'package:kazumi/services/player/external_player.dart';
import 'package:kazumi/l10n/l10n.dart';

class ExternalPlaybackLauncher {
  final String Function() videoUrl;
  final String Function() referer;

  ExternalPlaybackLauncher({
    required this.videoUrl,
    required this.referer,
  });

  Future<void> launch() async {
    final currentVideoUrl = videoUrl();
    final currentReferer = referer();
    if ((Platform.isAndroid || Platform.isWindows) && currentReferer.isEmpty) {
      if (await ExternalPlayer.launchUrlWithMime(
          currentVideoUrl, 'video/mp4')) {
        KazumiDialog.dismiss();
        KazumiDialog.showToast(
          message: currentL10n.launchingExternalPlayer,
        );
      } else {
        KazumiDialog.showToast(
          message: currentL10n.externalPlayerLaunchFailed,
        );
      }
    } else if (Platform.isMacOS || Platform.isIOS) {
      if (await ExternalPlayer.launchUrlWithReferer(
          currentVideoUrl, currentReferer)) {
        KazumiDialog.dismiss();
        KazumiDialog.showToast(
          message: currentL10n.launchingExternalPlayer,
        );
      } else {
        KazumiDialog.showToast(
          message: currentL10n.externalPlayerLaunchFailed,
        );
      }
    } else if (Platform.isLinux && currentReferer.isEmpty) {
      KazumiDialog.dismiss();
      final result =
          await ExternalPlayer.launchLinuxDesktopPlayer(currentVideoUrl);
      switch (result) {
        case LinuxExternalPlayerResult.launched:
          KazumiDialog.showToast(message: currentL10n.launchingExternalPlayer);
        case LinuxExternalPlayerResult.cancelled:
          break;
        case LinuxExternalPlayerResult.unavailable:
          KazumiDialog.showToast(
              message: currentL10n.systemAppPickerUnavailable);
        case LinuxExternalPlayerResult.failed:
          KazumiDialog.showToast(
              message: currentL10n.externalPlayerLaunchFailed);
      }
    } else {
      if (currentReferer.isEmpty) {
        KazumiDialog.showToast(
          message: currentL10n.deviceUnsupported,
        );
      } else {
        KazumiDialog.showToast(
          message: currentL10n.ruleUnsupported,
        );
      }
    }
  }
}
