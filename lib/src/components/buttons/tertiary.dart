import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/sizes.dart';
import '../../theme/typography.dart';
import 'base_button.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217284660/Boutons+-+Buttons#Bouton-tertiaire
class DSFRTertiaryButton extends DSFRBaseButton {
  final bool noOutline;

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

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrSpacings = DSFRSizes.of(context);
    final dsfrTypography = DSFRTypography.of(context);

    final scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    final enabled = onPressed != null;
    final btnIcon = icon;
    final foregroundColor = enabled
        ? dsfrColors.borderActionHighBlueFrance
        : dsfrColors.textDisabledGrey;

    return RawMaterialButton(
      elevation: 0.0,
      disabledElevation: 0.0,
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
      padding: EdgeInsets.symmetric(
        vertical: dsfrSpacings.w1,
        horizontal: iconOnly ? dsfrSpacings.w1 : dsfrSpacings.w3,
      ),
      constraints: const BoxConstraints(),
      textStyle: dsfrTypography.btnLabel.copyWith(color: foregroundColor),
      onPressed: onPressed,
      child: iconOnly
          ? btnIcon
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (btnIcon != null && iconPosition == IconPosition.left) ...[
                  btnIcon,
                  SizedBox(width: gap)
                ],
                Flexible(child: Text(label!)),
                if (btnIcon != null && iconPosition == IconPosition.right) ...[
                  SizedBox(width: gap),
                  btnIcon
                ],
              ],
            ),
    );
  }
}
