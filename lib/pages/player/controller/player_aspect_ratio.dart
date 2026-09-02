import 'package:flutter/material.dart';
import 'package:kazumi/l10n/l10n.dart';

enum PlayerAspectRatio {
  automatic(
    storageValue: 1,
    fit: BoxFit.contain,
  ),
  crop(
    storageValue: 2,
    fit: BoxFit.cover,
  ),
  stretch(
    storageValue: 3,
    fit: BoxFit.fill,
  ),
  ratio4x3(
    storageValue: 4,
    fit: BoxFit.fill,
    frameAspectRatio: 4 / 3,
  );

  const PlayerAspectRatio({
    required this.storageValue,
    required this.fit,
    this.frameAspectRatio,
  });

  final int storageValue;
  String get label => switch (this) {
        automatic => currentL10n.automatic,
        crop => currentL10n.videoFitCrop,
        stretch => currentL10n.videoFitStretch,
        ratio4x3 => '4:3',
      };
  final BoxFit fit;
  final double? frameAspectRatio;

  static PlayerAspectRatio fromStorageValue(int value) {
    return PlayerAspectRatio.values.firstWhere(
      (mode) => mode.storageValue == value,
      orElse: () => PlayerAspectRatio.automatic,
    );
  }
}
