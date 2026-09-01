import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kazumi/bean/settings/locale_provider.dart';
import 'package:kazumi/l10n/app_localizations.dart';

void main() {
  test('loads English and Chinese messages', () {
    final english = lookupAppLocalizations(const Locale('en'));
    final chinese = lookupAppLocalizations(const Locale('zh'));

    expect(english.settings, 'Settings');
    expect(chinese.settings, '设置');
    expect(english.seconds(3), '3 seconds');
    expect(chinese.blockingRuleCount(2), '已添加 2 个关键词');
  });

  test('resolves stored and system locale preferences', () {
    expect(
      effectiveAppLocale(
        'system',
        platformLocales: const [Locale('zh', 'CN')],
      ),
      const Locale('zh'),
    );
    expect(
      effectiveAppLocale(
        'system',
        platformLocales: const [Locale('ja', 'JP')],
      ),
      const Locale('en'),
    );
    expect(
      effectiveAppLocale(
        'en',
        platformLocales: const [Locale('zh', 'CN')],
      ),
      const Locale('en'),
    );
  });
}
