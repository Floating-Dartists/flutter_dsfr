import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

/// {@template dsfr_theme_widget}
/// A widget that overrides the theme with the provided [theme] for its [child].
/// {@endtemplate}
class DSFRThemeWidget extends StatelessWidget {
  /// {@macro dsfr_theme_widget}
  const DSFRThemeWidget({
    super.key,
    required this.data,
    required this.child,
  });

  final DSFRThemeData data;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeExtensions = Map<Object, ThemeExtension>.from(theme.extensions);

    themeExtensions[DSFRThemeData] = data;

    return Theme(
      data: theme.copyWith(extensions: themeExtensions.values),
      child: child,
    );
  }
}
