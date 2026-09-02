import 'package:kazumi/l10n/l10n.dart';

/// Bangumi 收藏类型枚举
/// via: https://bangumi.github.io/api/#/model-CollectionType
enum BangumiCollectionType {
  unknown(0),

  planToWatch(1),

  watched(2),

  watching(3),

  onHold(4),

  abandoned(5);

  const BangumiCollectionType(this.value);

  final int value;
  String get label => switch (this) {
        BangumiCollectionType.unknown => currentL10n.unknown,
        BangumiCollectionType.planToWatch => currentL10n.planToWatch,
        BangumiCollectionType.watched => currentL10n.watched,
        BangumiCollectionType.watching => currentL10n.watching,
        BangumiCollectionType.onHold => currentL10n.onHold,
        BangumiCollectionType.abandoned => currentL10n.abandoned,
      };

  static BangumiCollectionType fromValue(int value) {
    return BangumiCollectionType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => BangumiCollectionType.unknown,
    );
  }
}
