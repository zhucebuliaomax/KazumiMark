import 'package:flutter/material.dart';
import 'package:kazumi/services/storage/storage.dart';

Locale effectiveAppLocale(
  String preference, {
  List<Locale>? platformLocales,
}) {
  if (preference == 'zh') return const Locale('zh');
  if (preference == 'en') return const Locale('en');

  final locales =
      platformLocales ?? WidgetsBinding.instance.platformDispatcher.locales;
  return locales.any((locale) => locale.languageCode == 'zh')
      ? const Locale('zh')
      : const Locale('en');
}

class LocaleProvider extends ChangeNotifier {
  LocaleProvider()
      : _preference = GStorage.getSetting(SettingsKeys.localePreference) {
    _currentLocale = effectiveAppLocale(_preference);
  }

  static Locale _currentLocale = const Locale('zh');

  static Locale get currentLocale => _currentLocale;

  String _preference;

  String get preference => _preference;

  Locale? get locale => switch (_preference) {
        'zh' => const Locale('zh'),
        'en' => const Locale('en'),
        _ => null,
      };

  Locale get effectiveLocale => effectiveAppLocale(_preference);

  Future<void> setPreference(String preference) async {
    if (_preference == preference) return;
    _preference = preference;
    _currentLocale = effectiveAppLocale(preference);
    await GStorage.putSetting(SettingsKeys.localePreference, preference);
    notifyListeners();
  }
}
