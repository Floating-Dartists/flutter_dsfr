import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217284660/Boutons+-+Buttons#Bouton-primaire
class DSFRPrimaryButton extends StatelessWidget {
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

  /// Typically the button's label.
  final Widget child;

  final DSFRButtonStyle? style;

  const DSFRPrimaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultBtnStyle = theme.extension<DSFRButtonStyle>()!;
    final btnStyle = defaultBtnStyle.merge(style);

    return RawMaterialButton(
      elevation: btnStyle.elevation ?? 0.0,
      fillColor: btnStyle.backgroundColor,
      hoverColor: btnStyle.hoverColor,
      splashColor: btnStyle.activeColor,
      shape: btnStyle.shape ?? const RoundedRectangleBorder(),
      onPressed: onPressed,
      child: child,
    );
  }
}
