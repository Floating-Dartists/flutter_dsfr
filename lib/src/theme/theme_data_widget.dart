import 'package:flutter/material.dart';

class DSFRThemeDataWidget<T extends ThemeExtension<T>> extends StatelessWidget {
  final T data;
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

    themeExtensions[T] = data;

    return Theme(
      data: theme.copyWith(extensions: themeExtensions.values),
      child: child,
    );
  }
}
