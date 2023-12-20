import 'package:flutter/widgets.dart';

import '../gen/default_localizations.dart';
import 'all_languages.dart';

const kDefaultLocale = Locale('fr');

/// {@template dsfr_localizations}
/// Can be used to obtain the localized labels via [BuildContext] (using
/// [labelsOf]) and to override default localizations (using
/// [withDefaultOverrides]).
/// {@endtemplate}
class DSFRLocalizations<T extends DSFRLocalizationLabels> {
  /// {@macro dsfr_localizations}
  const DSFRLocalizations(this.locale, this.labels);

  final Locale locale;
  final T labels;

  static DSFRLocalizations of(BuildContext context) {
    final l = Localizations.of<DSFRLocalizations>(context, DSFRLocalizations);

    if (l != null) return l;

    final defaultTranslation = getDSFRTranslation(kDefaultLocale);
    return DSFRLocalizations(kDefaultLocale, defaultTranslation);
  }
}
