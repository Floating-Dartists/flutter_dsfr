import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/gen/default_localizations.dart';
import 'package:flutter_dsfr/src/localization/all_languages.dart';

const _kDefaultLocale = Locale('fr');

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

    final defaultTranslation = getDSFRTranslation(_kDefaultLocale);
    return DSFRLocalizations(_kDefaultLocale, defaultTranslation);
  }

  /// Returns localization labels.
  static DSFRLocalizationLabels labelsOf(BuildContext context) {
    return DSFRLocalizations.of(context).labels;
  }

  /// Localization delegate that could be provided to the
  /// [MaterialApp.localizationsDelegates].
  static DSFRLocalizationDelegate delegate = const DSFRLocalizationDelegate();

  /// Should be used to override labels provided by the library.
  ///
  /// See [DSFRLocalizationLabels].
  static DSFRLocalizationDelegate
      withDefaultOverrides<T extends DefaultLocalizations>(T overrides) {
    return DSFRLocalizationDelegate<T>(overrides: overrides);
  }
}

class DSFRLocalizationDelegate<T extends DSFRLocalizationLabels>
    extends LocalizationsDelegate<DSFRLocalizations> {
  const DSFRLocalizationDelegate({
    this.overrides,
    bool forceSupportAllLocales = false,
  }) : _forceSupportAllLocales = forceSupportAllLocales;

  /// An instance of the class that overrides some labels.
  /// See [FirebaseUILocalizationLabels].
  final T? overrides;
  final bool _forceSupportAllLocales;

  @override
  bool isSupported(Locale locale) {
    return _forceSupportAllLocales ||
        kSupportedLanguages.contains(locale.languageCode);
  }

  @override
  Future<DSFRLocalizations<DSFRLocalizationLabels>> load(Locale locale) {
    final translation = getDSFRTranslation(locale, _kDefaultLocale);

    final localizations = DSFRLocalizations(
      locale,
      overrides ?? translation,
    );

    return SynchronousFuture(localizations);
  }

  @override
  bool shouldReload(
    covariant LocalizationsDelegate<DSFRLocalizations<DSFRLocalizationLabels>>
        old,
  ) {
    return false;
  }
}
