import 'package:kazumi/l10n/l10n.dart';

enum SuperResolutionMode {
  off(
    storageValue: 1,
  ),
  efficiency(
    storageValue: 2,
  ),
  quality(
    storageValue: 3,
  );

  const SuperResolutionMode({
    required this.storageValue,
  });

  final int storageValue;
  String get label => switch (this) {
        off => currentL10n.close,
        efficiency => currentL10n.superResolutionEfficiency,
        quality => currentL10n.superResolutionQuality,
      };

  String get description => switch (this) {
        off => currentL10n.superResolutionOffDescription,
        efficiency => currentL10n.superResolutionEfficiencyDescription,
        quality => currentL10n.superResolutionQualityDescription,
      };

  static SuperResolutionMode fromStorageValue(int value) {
    return SuperResolutionMode.values.firstWhere(
      (mode) => mode.storageValue == value,
      orElse: () => SuperResolutionMode.off,
    );
  }
}
