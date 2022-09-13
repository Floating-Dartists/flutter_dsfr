import 'package:flutter/material.dart';

import '../../flutter_dsfr.dart';

class DSFRThemeDataWidget extends StatelessWidget {
  final DSFRThemeData data;
  final Widget child;

  const DSFRThemeDataWidget({
    super.key,
    required this.data,
    required this.child,
  });

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
