import 'package:kazumi/l10n/l10n.dart';

class PlayerErrorMapper {
  const PlayerErrorMapper._();

  static String? toActionableMessage(
    Object error, {
    required bool isBuffering,
  }) {
    final message = error.toString();
    if (message.contains('Failed to recognize file format') ||
        (isBuffering && message.contains('Failed to open'))) {
      return currentL10n.playerLoadFailedTryAnotherSource;
    }
    return null;
  }
}
