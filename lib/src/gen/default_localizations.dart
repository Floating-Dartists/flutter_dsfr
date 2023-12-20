// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: non_constant_identifier_names, always_use_package_imports

import 'package:flutter/material.dart';

import 'lang/fr.dart';

/// An abstract class containing all labels that concrete languages should
/// provide.
///
/// The easiest way to override some of these labels is to provide
/// an object that extends [DefaultLocalizations] and pass it to the
/// [MaterialApp.localizationsDelegates].
///
/// ```dart
/// import 'package:flutter_dsfr/flutter_dsfr.dart';
///
/// class LabelOverrides extends DefaultLocalizations {
///   const LabelOverrides();
///
///   @override
///   String get auth => 'Authenticate with';
/// }
///
/// MaterialApp(
///   // ...
///   localizationsDelegates: [
///     DSFRLocalizations.withDefaultOverrides(const LabelOverrides()),
///     GlobalMaterialLocalizations.delegate,
///     GlobalWidgetsLocalizations.delegate,
///     DSFRLocalizations.delegate,
///   ],
/// )
/// ```
abstract class DSFRLocalizationLabels {
  const DSFRLocalizationLabels();

  String get auth;

  String get france_connect;

  String get france_connect_plus;

  String get what_is_france_connect;

  String get what_is_france_connect_plus;
}

class DefaultLocalizations extends FrLocalizations {
  const DefaultLocalizations();
}
