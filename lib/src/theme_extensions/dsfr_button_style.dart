import 'package:flutter/material.dart';

import '../base/color_palette.dart';
import 'dsfr_text_styles.dart';

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
    final textStyles = DSFRTextStyles.light();
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
    final textStyles = DSFRTextStyles.dark();
    return DSFRButtonStyle(
      backgroundColor: ColorPalette.blueFrance625,
      hoverColor: ColorPalette.blueFrance625Hover,
      activeColor: ColorPalette.blueFrance625Active,
      shape: const RoundedRectangleBorder(),
      elevation: 0,
      textStyle: textStyles.primaryBtnLabel,
    );
  }

  @override
  ThemeExtension<DSFRButtonStyle> copyWith({
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
  ThemeExtension<DSFRButtonStyle> lerp(
    ThemeExtension<DSFRButtonStyle>? other,
    double t,
  ) {
    if (other is! DSFRButtonStyle) {
      return this;
    }
    return DSFRButtonStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      hoverColor: Color.lerp(hoverColor, other.hoverColor, t),
      activeColor: Color.lerp(activeColor, other.activeColor, t),
      shape: ShapeBorder.lerp(shape, other.shape, t),
      elevation: elevation,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }

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
    ) as DSFRButtonStyle;
  }
}
