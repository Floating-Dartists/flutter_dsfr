import 'dart:ui';

import 'package:flutter/material.dart';

@immutable
class DSFRButtonStyle extends ThemeExtension<DSFRButtonStyle> {
  const DSFRButtonStyle({
    this.shape,
    this.elevation,
    this.mainAxisSize = MainAxisSize.min,
  });

  /// Provide some default values for the button style.
  const DSFRButtonStyle.regular()
      : this(
          shape: const RoundedRectangleBorder(),
          elevation: 0,
          mainAxisSize: MainAxisSize.min,
        );

  final double? elevation;

  /// The shape of the button.
  final ShapeBorder? shape;

  final MainAxisSize mainAxisSize;

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

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is DSFRButtonStyle &&
            runtimeType == other.runtimeType &&
            shape == other.shape &&
            elevation == other.elevation &&
            mainAxisSize == other.mainAxisSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      shape,
      elevation,
      mainAxisSize,
    );
  }
}
