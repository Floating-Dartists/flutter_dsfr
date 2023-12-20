import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/src/gen/default_localizations.dart';
import 'package:flutter_dsfr/src/gen/lang/fr.dart';

final kSupportedLanguages = <String>{
  'fr',
};

DSFRLocalizationLabels getDSFRTranslation(
  Locale useLocale, [
  Locale? defaultLocale,
]) {
  final Locale locale;
  if (kSupportedLanguages.contains(useLocale.languageCode)) {
    locale = useLocale;
  } else {
    locale = defaultLocale ?? useLocale;
  }

  switch (locale.languageCode) {
    case 'fr':
      return const FrLocalizations();
  }

  throw Exception(
    'getDSFRTranslation() called for unsupported locale "$locale"',
  );
}
