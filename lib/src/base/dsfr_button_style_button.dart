import 'package:flutter/material.dart';

import '../theme_extensions/dsfr_button_style.dart';

abstract class DSFRButtonStyleButton extends StatelessWidget {
  const DSFRButtonStyleButton({
    Key? key,
    required this.onPressed,
    required this.style,
    required this.label,
    required this.icon,
  }) : super(key: key);

  /// {@template base.dsfrButtonStyleButton.onPressed}
  /// Called when the button is tapped or otherwise activated.
  ///
  /// If this callback is null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  /// {@endtemplate}
  final VoidCallback? onPressed;

  /// {@template base.dsfrButtonStyleButton.style}
  /// Customizes this button's appearance.
  /// {@endtemplate}
  final DSFRButtonStyle? style;

  /// {@template base.dsfrButtonStyleButton.label}
  /// The button's label.
  /// {@endtemplate}
  final String label;

  /// {@template base.dsfrButtonStyleButton.icon}
  /// The button's icon.
  /// {@endtemplate}
  final Widget? icon;
}
