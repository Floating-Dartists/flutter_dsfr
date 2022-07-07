import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'base_button.dart';

class DSFRSecondaryButton extends DSFRBaseButton {
  const DSFRSecondaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
    super.iconPosition,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrSpacings = DSFRSizes.of(context);
    final dsfrTypography = DSFRTypography.of(context);
    final dsfrColors = DSFRColors.of(context);

    final scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    final enabled = onPressed != null;
    final btnIcon = icon;
    final foregroundColor = enabled
        ? dsfrColors.borderActionHighBlueFrance
        : dsfrColors.textDisabledGrey;

    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      disabledElevation: 0.0,
      fillColor: Colors.transparent,
      hoverColor: dsfrColors.blockColorHover,
      splashColor: dsfrColors.blockColorActive,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: foregroundColor, width: 1),
      ),
      padding: EdgeInsets.symmetric(
        vertical: dsfrSpacings.w1,
        horizontal: dsfrSpacings.w3,
      ),
      textStyle: dsfrTypography.btnLabel.copyWith(color: foregroundColor),
      child: iconOnly
          ? btnIcon
          : Row(
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
