import 'package:flutter/material.dart';

import '../base/color_palette.dart';

@immutable
class DSFRButtonStyle extends ThemeExtension<DSFRButtonStyle> {
  final Color? backgroundColor;
  final Color? hoverColor;
  final Color? activeColor;
  final double? elevation;

  /// The shape of the button.
  final ShapeBorder? shape;

  const DSFRButtonStyle({
    this.backgroundColor,
    this.hoverColor,
    this.activeColor,
    this.shape,
    this.elevation,
  });

  /// Provides a default style for buttons in light theme.
  const DSFRButtonStyle.light()
      : this(
          backgroundColor: ColorPalette.blueFranceSun113,
          hoverColor: ColorPalette.blueFranceSun113Hover,
          activeColor: ColorPalette.blueFranceSun113Active,
          shape: const RoundedRectangleBorder(),
          elevation: 0,
        );

  /// Provides a default style for buttons in dark theme.
  const DSFRButtonStyle.dark()
      : this(
          backgroundColor: ColorPalette.blueFrance625,
          hoverColor: ColorPalette.blueFrance625Hover,
          activeColor: ColorPalette.blueFrance625Active,
          shape: const RoundedRectangleBorder(),
          elevation: 0,
        );

  @override
  ThemeExtension<DSFRButtonStyle> copyWith({
    Color? backgroundColor,
    Color? hoverColor,
    Color? activeColor,
    ShapeBorder? shape,
    double? elevation,
  }) {
    return DSFRButtonStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      hoverColor: hoverColor ?? this.hoverColor,
      activeColor: activeColor ?? this.activeColor,
      shape: shape ?? this.shape,
      elevation: elevation ?? this.elevation,
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
    ) as DSFRButtonStyle;
  }
}
