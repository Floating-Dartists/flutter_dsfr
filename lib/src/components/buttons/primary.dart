import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/buttons/base_button.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217284660/Boutons+-+Buttons#Bouton-primaire
class DSFRPrimaryButton extends DSFRGroupeableButton {
  const DSFRPrimaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
    super.iconPosition = IconPosition.left,
    super.mainAxisSize,
  });

  const DSFRPrimaryButton.icon({
    super.key,
    required super.icon,
    required super.onPressed,
  }) : super.icon();

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final spacings = dsfrTheme.spacings.buttonSize;
    final dsfrColors = dsfrTheme.colors;
    final dsfrTypography = dsfrTheme.typography;
    final dsfrButtonStyle = dsfrTheme.buttonStyle;

    final scale = MediaQuery.textScalerOf(context).textScaleFactor;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    final enabled = onPressed != null;
    final backgroundColor = enabled
        ? dsfrColors.backgroundActionHighBlueFrance
        : dsfrColors.backgroundDisabledGrey;
    final foregroundColor =
        enabled ? dsfrColors.inverted : dsfrColors.textDisabledGrey;

    Widget? btnIcon = icon;
    if (btnIcon != null) {
      btnIcon = IconTheme(
        data: IconThemeData(color: foregroundColor, size: spacings.iconSize),
        child: btnIcon,
      );
    }

    return RawMaterialButton(
      elevation: 0,
      fillColor: backgroundColor,
      hoverColor: dsfrColors.backgroundActionHighBlueFranceHover,
      splashColor: dsfrColors.backgroundActionHighBlueFranceActive,
      padding: iconOnly
          ? EdgeInsets.all(spacings.iconPadding)
          : EdgeInsets.symmetric(
              vertical: spacings.vertical,
              horizontal: spacings.horizontal,
            ),
      constraints: const BoxConstraints(),
      textStyle: dsfrTypography.medium.copyWith(color: foregroundColor),
      onPressed: onPressed,
      child: iconOnly
          ? btnIcon
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: mainAxisSize ?? dsfrButtonStyle.mainAxisSize,
              children: [
                if (btnIcon != null && iconPosition == IconPosition.left) ...[
                  btnIcon,
                  SizedBox(width: gap),
                ],
                Flexible(child: Text(label!, textAlign: TextAlign.center)),
                if (btnIcon != null && iconPosition == IconPosition.right) ...[
                  SizedBox(width: gap),
                  btnIcon,
                ],
              ],
            ),
    );
  }
}
