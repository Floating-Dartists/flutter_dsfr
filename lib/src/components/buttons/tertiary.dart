import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/buttons/base_button.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217284660/Boutons+-+Buttons#Bouton-tertiaire
class DSFRTertiaryButton extends DSFRBaseButton {
  const DSFRTertiaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
    super.iconPosition,
    this.noOutline = false,
  });

  const DSFRTertiaryButton.icon({
    super.key,
    required super.icon,
    required super.onPressed,
    this.noOutline = false,
  }) : super.icon();

  final bool noOutline;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final spacings = dsfrTheme.spacings.buttonSize;
    final dsfrColors = dsfrTheme.colors;
    final dsfrTypography = dsfrTheme.typography;

    final scale = MediaQuery.textScalerOf(context).textScaleFactor;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    final enabled = onPressed != null;
    final foregroundColor = enabled
        ? dsfrColors.borderActionHighBlueFrance
        : dsfrColors.textDisabledGrey;

    Widget? btnIcon = icon;
    if (btnIcon != null) {
      btnIcon = IconTheme(
        data: IconThemeData(color: foregroundColor, size: spacings.iconSize),
        child: btnIcon,
      );
    }

    return RawMaterialButton(
      elevation: 0,
      fillColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: !noOutline
            ? BorderSide(
                color: enabled
                    ? dsfrColors.defaultGrey
                    : dsfrColors.textDisabledGrey,
              )
            : BorderSide.none,
      ),
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
              mainAxisSize: MainAxisSize.min,
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
