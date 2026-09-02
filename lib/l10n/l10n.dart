import 'package:flutter/widgets.dart';
import 'package:kazumi/bean/settings/locale_provider.dart';
import 'package:kazumi/l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

AppLocalizations get currentL10n =>
    lookupAppLocalizations(LocaleProvider.currentLocale);
