import 'package:kazumi/l10n/l10n.dart';

/// 收藏类型枚举
///
/// 用于标识番剧的收藏状态
enum CollectType {
  /// 未收藏
  none(0),

  /// 在看
  watching(1),

  /// 想看
  planToWatch(2),

  /// 搁置
  onHold(3),

  /// 看过
  watched(4),

  /// 抛弃
  abandoned(5);

  const CollectType(this.value);

  /// 数值表示
  final int value;

  /// 显示标签
  String get label => switch (this) {
        none => currentL10n.notCollected,
        watching => currentL10n.watching,
        planToWatch => currentL10n.planToWatch,
        onHold => currentL10n.onHold,
        watched => currentL10n.watched,
        abandoned => currentL10n.abandoned,
      };

  /// 根据数值获取枚举
  static CollectType fromValue(int value) {
    return CollectType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => CollectType.none,
    );
  }

  /// 是否为有效的收藏状态（排除未收藏）
  bool get isCollected => this != CollectType.none;
}
