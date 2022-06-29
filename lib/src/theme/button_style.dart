import 'package:flutter/material.dart';

@immutable
class DSFRButtonStyle {
  final double? elevation;

  /// The shape of the button.
  final ShapeBorder? shape;

  const DSFRButtonStyle({
    this.shape,
    this.elevation,
  });

  DSFRButtonStyle copyWith({
    ShapeBorder? shape,
    double? elevation,
  }) {
    return DSFRButtonStyle(
      shape: shape ?? this.shape,
      elevation: elevation ?? this.elevation,
    );
  }
}
