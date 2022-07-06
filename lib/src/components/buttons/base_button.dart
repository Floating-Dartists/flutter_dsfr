import 'package:flutter/material.dart';

enum IconPosition { left, right }

abstract class DSFRBaseButton extends StatelessWidget {
  const DSFRBaseButton({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
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

  /// {@template base.dsfrButtonStyleButton.label}
  /// The button's label.
  /// {@endtemplate}
  final String label;

  /// {@template base.dsfrButtonStyleButton.icon}
  /// The button's icon.
  /// {@endtemplate}
  final Widget? icon;

  final IconPosition iconPosition;
}
