import 'dart:ui';

import 'package:flutter/material.dart';

import '../../flutter_dsfr.dart';
import '../base/color_palette.dart';
import '../theme/typography.dart';

@immutable
class DSFRButtonStyle extends ThemeExtension<DSFRButtonStyle> {
  final Color? backgroundColor;
  final Color? hoverColor;
  final Color? activeColor;
  final double? elevation;

  /// The shape of the button.
  final ShapeBorder? shape;

  final TextStyle? textStyle;

  const DSFRButtonStyle({
    this.backgroundColor,
    this.hoverColor,
    this.activeColor,
    this.shape,
    this.elevation,
    this.textStyle,
  });

  /// Provides a default style for buttons in light theme.
  factory DSFRButtonStyle.light() {
    final textStyles = DSFRTypography.light();
    return DSFRButtonStyle(
      backgroundColor: ColorPalette.blueFranceSun113,
      hoverColor: ColorPalette.blueFranceSun113Hover,
      activeColor: ColorPalette.blueFranceSun113Active,
      shape: const RoundedRectangleBorder(),
      elevation: 0,
      textStyle: textStyles.primaryBtnLabel,
    );
  }

  /// Provides a default style for buttons in dark theme.
  factory DSFRButtonStyle.dark() {
    final textStyles = DSFRTypography.dark();
    return DSFRButtonStyle(
      backgroundColor: ColorPalette.blueFrance625,
      hoverColor: ColorPalette.blueFrance625Hover,
      activeColor: ColorPalette.blueFrance625Active,
      shape: const RoundedRectangleBorder(),
      elevation: 0,
      textStyle: textStyles.primaryBtnLabel,
    );
  }

  static DSFRButtonStyle of(BuildContext context) =>
      Theme.of(context).extension<DSFRButtonStyle>()!;

  @override
  DSFRButtonStyle copyWith({
    Color? backgroundColor,
    Color? hoverColor,
    Color? activeColor,
    ShapeBorder? shape,
    double? elevation,
    TextStyle? labelStyle,
  }) {
    return DSFRButtonStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      hoverColor: hoverColor ?? this.hoverColor,
      activeColor: activeColor ?? this.activeColor,
      shape: shape ?? this.shape,
      elevation: elevation ?? this.elevation,
      textStyle: labelStyle ?? textStyle,
    );
  }

  @override
  DSFRButtonStyle lerp(ThemeExtension<DSFRButtonStyle>? other, double t) {
    if (other is! DSFRButtonStyle) {
      return this;
    }
    return DSFRButtonStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      hoverColor: Color.lerp(hoverColor, other.hoverColor, t),
      activeColor: Color.lerp(activeColor, other.activeColor, t),
      shape: ShapeBorder.lerp(shape, other.shape, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }

  /// Returns a new button style that is a combination of this style and the
  /// given [other] style.
  DSFRButtonStyle merge(DSFRButtonStyle? other) {
    if (other == null) {
      return this;
    }
    return copyWith(
      backgroundColor: other.backgroundColor,
      hoverColor: other.hoverColor,
      activeColor: other.activeColor,
      shape: other.shape,
      elevation: other.elevation,
      labelStyle: other.textStyle,
    );
  }
}
