import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'base_button.dart';

class DSFRSecondaryButton extends DSFRGroupeableButton {
  const DSFRSecondaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
    super.iconPosition = IconPosition.left,
    super.mainAxisSize,
  });

  const DSFRSecondaryButton.icon({
    super.key,
    required super.onPressed,
    required super.icon,
  }) : super.icon();

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final spacings = dsfrTheme.spacings.buttonSize;
    final dsfrTypography = dsfrTheme.typography;
    final dsfrColors = dsfrTheme.colors;
    final dsfrButtonStyle = dsfrTheme.buttonStyle;

    final scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
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
      onPressed: onPressed,
      elevation: 0.0,
      disabledElevation: 0.0,
      fillColor: Colors.transparent,
      hoverColor: dsfrColors.blockColorHover,
      splashColor: dsfrColors.blockColorActive,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: foregroundColor, width: 1),
      ),
      padding: iconOnly
          ? EdgeInsets.all(spacings.iconPadding)
          : EdgeInsets.symmetric(
              vertical: spacings.vertical,
              horizontal: spacings.horizontal,
            ),
      constraints: const BoxConstraints(),
      textStyle: dsfrTypography.medium.copyWith(color: foregroundColor),
      child: iconOnly
          ? btnIcon
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: mainAxisSize ?? dsfrButtonStyle.mainAxisSize,
              children: [
                if (btnIcon != null && iconPosition == IconPosition.left) ...[
                  btnIcon,
                  SizedBox(width: gap)
                ],
                Flexible(child: Text(label!, textAlign: TextAlign.center)),
                if (btnIcon != null && iconPosition == IconPosition.right) ...[
                  SizedBox(width: gap),
                  btnIcon
                ],
              ],
            ),
    );
  }
}
