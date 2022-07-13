import 'dart:ui';

import 'package:flutter/material.dart';

import 'theme_data_widget.dart';

@immutable
class DSFRButtonStyle extends ThemeExtension<DSFRButtonStyle> {
  final double? elevation;

  /// The shape of the button.
  final ShapeBorder? shape;

  final MainAxisSize mainAxisSize;

  const DSFRButtonStyle({
    this.shape,
    this.elevation,
    this.mainAxisSize = MainAxisSize.min,
  });

  /// Provide some default values for the button style.
  const DSFRButtonStyle.regular()
      : this(
          shape: const RoundedRectangleBorder(),
          elevation: 0.0,
          mainAxisSize: MainAxisSize.min,
        );

  static DSFRButtonStyle of(BuildContext context) =>
      Theme.of(context).extension<DSFRButtonStyle>()!;

  @override
  DSFRButtonStyle copyWith({
    ShapeBorder? shape,
    double? elevation,
    MainAxisSize? mainAxisSize,
  }) {
    return DSFRButtonStyle(
      shape: shape ?? this.shape,
      elevation: elevation ?? this.elevation,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
    );
  }

  @override
  DSFRButtonStyle lerp(ThemeExtension<DSFRButtonStyle>? other, double t) {
    if (other is! DSFRButtonStyle) {
      return this;
    }
    return copyWith(
      shape: ShapeBorder.lerp(shape, other.shape, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      mainAxisSize: other.mainAxisSize,
    );
  }
}

typedef DSFRButtonStyleTheme = DSFRThemeDataWidget<DSFRButtonStyle>;
