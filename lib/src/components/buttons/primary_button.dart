import 'package:flutter/material.dart';

import '../../theme_extensions/dsfr_colors.dart';

class PrimaryButton extends StatelessWidget {
  /// {@template components.buttons.primary.onPressed}
  /// The callback that is called when the button is tapped or otherwise
  /// activated.
  ///
  /// If this callback is null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  /// {@endtemplate}
  final VoidCallback? onPressed;
  final Widget child;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dsfrColors = theme.extension<DSFRColors>()!;
    return MaterialButton(
      onPressed: onPressed,
    );
  }
}
