import 'package:kazumi/l10n/l10n.dart';

enum BangumiSyncPriority {
  localFirst(0),
  bangumiFirst(1);

  const BangumiSyncPriority(this.value);

  final int value;
  String get label => switch (this) {
        localFirst => currentL10n.localFirst,
        bangumiFirst => currentL10n.bangumiFirst,
      };

  static BangumiSyncPriority fromValue(int value) {
    return BangumiSyncPriority.values.firstWhere(
      (item) => item.value == value,
      orElse: () => BangumiSyncPriority.localFirst,
    );
  }
}
