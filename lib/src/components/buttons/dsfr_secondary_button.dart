import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import '../../base/dsfr_button_style_button.dart';

class DSFRSecondaryButton extends DSFRButtonStyleButton {
  const DSFRSecondaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
    super.style,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrSpacings = DSFRSizes.of(context);
    final dsfrTypography = DSFRTypography.of(context);
    final defaultBtnStyle = DSFRButtonStyle.of(context).copyWith(
      labelStyle: dsfrTypography.secondaryBtnLabel,
    );
    final btnStyle = defaultBtnStyle.merge(style);

    final scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;

    final btnIcon = icon;
    final shape = RoundedRectangleBorder(
      side: BorderSide(
        color: btnStyle.textStyle?.color ?? const Color(0xFF9a9aff),
      ),
    );

    return RawMaterialButton(
      onPressed: onPressed,
      elevation: btnStyle.elevation ?? 0.0,
      fillColor: Colors.transparent,
      hoverColor: btnStyle.hoverColor,
      splashColor: btnStyle.activeColor,
      shape: shape,
      padding: EdgeInsets.symmetric(
        vertical: dsfrSpacings.w1,
        horizontal: dsfrSpacings.w3,
      ),
      textStyle: btnStyle.textStyle,
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
