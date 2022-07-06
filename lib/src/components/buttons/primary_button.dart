import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'base_button.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217284660/Boutons+-+Buttons#Bouton-primaire
class DSFRPrimaryButton extends DSFRBaseButton {
  const DSFRPrimaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrSpacings = DSFRSizes.of(context);
    final dsfrColors = DSFRColors.of(context);
    final dsfrTypography = DSFRTypography.of(context);

    final scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    final enabled = onPressed != null;
    final btnIcon = icon;
    final backgroundColor = enabled
        ? dsfrColors.backgroundActionHighBlueFrance
        : dsfrColors.backgroundDisabledGrey;
    final foregroundColor = enabled
        ? dsfrColors.textInvertedBlueFrance
        : dsfrColors.textDisabledGrey;

    return RawMaterialButton(
      elevation: 0.0,
      disabledElevation: 0.0,
      fillColor: backgroundColor,
      hoverColor: dsfrColors.backgroundActionHighBlueFranceHover,
      splashColor: dsfrColors.backgroundActionHighBlueFranceActive,
      shape: const RoundedRectangleBorder(),
      padding: EdgeInsets.symmetric(
        vertical: dsfrSpacings.w1,
        horizontal: dsfrSpacings.w3,
      ),
      textStyle: dsfrTypography.btnLabel.copyWith(color: foregroundColor),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (btnIcon != null) ...[btnIcon, SizedBox(width: gap)],
          Flexible(child: Text(label)),
        ],
      ),
    );
  }
}
