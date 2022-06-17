import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import '../../base/dsfr_button_style_button.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217284660/Boutons+-+Buttons#Bouton-primaire
class DSFRPrimaryButton extends DSFRButtonStyleButton {
  const DSFRPrimaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
    super.style,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dsfrSpacings = DSFRSizes.of(context);
    final defaultBtnStyle = theme.extension<DSFRButtonStyle>()!;
    final btnStyle = defaultBtnStyle.merge(style);

    final scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    final btnIcon = icon;

    return RawMaterialButton(
      elevation: btnStyle.elevation ?? 0.0,
      fillColor: btnStyle.backgroundColor,
      hoverColor: btnStyle.hoverColor,
      splashColor: btnStyle.activeColor,
      shape: btnStyle.shape ?? const RoundedRectangleBorder(),
      padding: EdgeInsets.symmetric(
        vertical: dsfrSpacings.w1,
        horizontal: dsfrSpacings.w3,
      ),
      textStyle: btnStyle.textStyle,
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
