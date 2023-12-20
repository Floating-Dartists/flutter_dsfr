import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

@immutable
class DSFRThemeData extends ThemeExtension<DSFRThemeData> {
  const DSFRThemeData({
    required this.colors,
    this.buttonStyle = const DSFRButtonStyle.regular(),
    this.radius = const DSFRRadius.regular(),
    this.borderRadius = const DSFRBorderRadius(DSFRRadius.regular()),
    this.sizes = const DSFRSizes.regular(),
    this.spacings = const DSFRSpacings.medium(),
    this.typography = const DSFRTypography.medium(),
  });

  final DSFRButtonStyle buttonStyle;
  final DSFRColors colors;
  final DSFRRadius radius;
  final DSFRBorderRadius borderRadius;
  final DSFRSizes sizes;
  final DSFRSpacings spacings;
  final DSFRTypography typography;

  static DSFRThemeData of(BuildContext context) =>
      Theme.of(context).extension<DSFRThemeData>()!;

  @override
  DSFRThemeData copyWith({
    DSFRButtonStyle? buttonStyle,
    DSFRColors? colors,
    DSFRRadius? radius,
    DSFRBorderRadius? borderRadius,
    DSFRSizes? sizes,
    DSFRSpacings? spacings,
    DSFRTypography? typography,
  }) {
    return DSFRThemeData(
      buttonStyle: buttonStyle ?? this.buttonStyle,
      colors: colors ?? this.colors,
      radius: radius ?? this.radius,
      borderRadius: borderRadius ?? this.borderRadius,
      sizes: sizes ?? this.sizes,
      spacings: spacings ?? this.spacings,
      typography: typography ?? this.typography,
    );
  }

  @override
  ThemeExtension<DSFRThemeData> lerp(
    ThemeExtension<DSFRThemeData>? other,
    double t,
  ) {
    if (other is! DSFRThemeData) return this;
    return DSFRThemeData(
      buttonStyle: buttonStyle.lerp(other.buttonStyle, t),
      colors: colors.lerp(other.colors, t),
      radius: radius.lerp(other.radius, t),
      borderRadius: borderRadius.lerp(other.borderRadius, t),
      sizes: sizes.lerp(other.sizes, t),
      spacings: spacings.lerp(other.spacings, t),
      typography: typography.lerp(other.typography, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is DSFRThemeData &&
            runtimeType == other.runtimeType &&
            buttonStyle == other.buttonStyle &&
            colors == other.colors &&
            radius == other.radius &&
            borderRadius == other.borderRadius &&
            sizes == other.sizes &&
            spacings == other.spacings &&
            typography == other.typography;
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        buttonStyle,
        colors,
        radius,
        borderRadius,
        sizes,
        spacings,
        typography,
      );
}
