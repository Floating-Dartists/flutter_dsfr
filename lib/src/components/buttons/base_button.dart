import 'package:flutter/material.dart';

enum IconPosition { left, right }

abstract class DSFRBaseButton extends StatelessWidget {
  const DSFRBaseButton._({
    super.key,
    required this.label,
    required this.icon,
    required this.iconPosition,
    required this.iconOnly,
    required this.onPressed,
    required this.mainAxisSize,
  }) : assert(
          (iconOnly && label == null && icon != null) ||
              (!iconOnly && label != null),
        );

  const DSFRBaseButton({
    Key? key,
    required String label,
    required VoidCallback? onPressed,
    Widget? icon,
    IconPosition iconPosition = IconPosition.left,
    MainAxisSize? mainAxisSize,
  }) : this._(
          key: key,
          label: label,
          icon: icon,
          iconPosition: iconPosition,
          iconOnly: false,
          onPressed: onPressed,
          mainAxisSize: mainAxisSize,
        );

  const DSFRBaseButton.icon({
    Key? key,
    required Widget icon,
    required VoidCallback? onPressed,
  }) : this._(
          key: key,
          label: null,
          icon: icon,
          iconPosition: IconPosition.left,
          iconOnly: true,
          onPressed: onPressed,
          mainAxisSize: MainAxisSize.min,
        );

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
  final String? label;

  /// {@template base.dsfrButtonStyleButton.icon}
  /// The button's icon.
  /// {@endtemplate}
  final Widget? icon;

  final IconPosition iconPosition;

  final bool iconOnly;

  final MainAxisSize? mainAxisSize;
}

mixin GroupeableButton on DSFRBaseButton {}
