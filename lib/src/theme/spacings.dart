import 'dart:ui';

import 'package:flutter/material.dart';

import 'theme_data_widget.dart';

@immutable
class DSFRSpacings extends ThemeExtension<DSFRSpacings> {
  final DSFRAlertSizes alertSizes;
  final DSFRButtonSizes buttonSizes;

  const DSFRSpacings({
    required this.alertSizes,
    required this.buttonSizes,
  });

  const DSFRSpacings.small()
      : this(
          alertSizes: const DSFRAlertSizes.small(),
          buttonSizes: const DSFRButtonSizes.small(),
        );

  const DSFRSpacings.medium()
      : this(
          alertSizes: const DSFRAlertSizes.medium(),
          buttonSizes: const DSFRButtonSizes.medium(),
        );

  const DSFRSpacings.large()
      : this(
          alertSizes: const DSFRAlertSizes.medium(),
          buttonSizes: const DSFRButtonSizes.large(),
        );

  static DSFRSpacings of(BuildContext context) =>
      Theme.of(context).extension<DSFRSpacings>()!;

  @override
  DSFRSpacings copyWith({
    DSFRAlertSizes? alertSizes,
    DSFRButtonSizes? buttonSizes,
  }) {
    return DSFRSpacings(
      alertSizes: alertSizes ?? this.alertSizes,
      buttonSizes: buttonSizes ?? this.buttonSizes,
    );
  }

  @override
  DSFRSpacings lerp(ThemeExtension<DSFRSpacings>? other, double t) {
    if (other is! DSFRSpacings) return this;
    return DSFRSpacings(
      alertSizes: DSFRAlertSizes.lerp(alertSizes, other.alertSizes, t)!,
      buttonSizes: DSFRButtonSizes.lerp(buttonSizes, other.buttonSizes, t)!,
    );
  }
}

@immutable
class DSFRAlertSizes {
  final double iconSize;
  final double iconHorizontalPadding;
  final double iconVerticalPadding;

  const DSFRAlertSizes._({
    required this.iconSize,
    required this.iconHorizontalPadding,
    required this.iconVerticalPadding,
  });

  const DSFRAlertSizes.small()
      : this._(
          iconSize: 20,
          iconHorizontalPadding: 10,
          iconVerticalPadding: 10,
        );

  const DSFRAlertSizes.medium()
      : this._(
          iconSize: 20,
          iconHorizontalPadding: 10,
          iconVerticalPadding: 18,
        );

  static DSFRAlertSizes? lerp(
    DSFRAlertSizes? a,
    DSFRAlertSizes? b,
    double t,
  ) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;

    return DSFRAlertSizes._(
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
      iconHorizontalPadding: lerpDouble(
        a.iconHorizontalPadding,
        b.iconHorizontalPadding,
        t,
      )!,
      iconVerticalPadding: lerpDouble(
        a.iconVerticalPadding,
        b.iconVerticalPadding,
        t,
      )!,
    );
  }
}

@immutable
class DSFRButtonSizes {
  final double vertical;
  final double horizontal;
  final double spacing;
  final double iconPadding;
  final double iconSize;

  const DSFRButtonSizes._({
    required this.vertical,
    required this.horizontal,
    required this.spacing,
    required this.iconPadding,
    required this.iconSize,
  });

  const DSFRButtonSizes.small()
      : this._(
          vertical: 4,
          horizontal: 12,
          spacing: 10,
          iconPadding: 10,
          iconSize: 14,
        );

  const DSFRButtonSizes.medium()
      : this._(
          vertical: 8,
          horizontal: 16,
          spacing: 10,
          iconPadding: 10,
          iconSize: 20,
        );

  const DSFRButtonSizes.large()
      : this._(
          vertical: 10,
          horizontal: 24,
          spacing: 10,
          iconPadding: 14,
          iconSize: 20,
        );

  static DSFRButtonSizes? lerp(
    DSFRButtonSizes? a,
    DSFRButtonSizes? b,
    double t,
  ) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;

    return DSFRButtonSizes._(
      vertical: lerpDouble(a.vertical, b.vertical, t)!,
      horizontal: lerpDouble(a.horizontal, b.horizontal, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
      iconPadding: lerpDouble(a.iconPadding, b.iconPadding, t)!,
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
    );
  }
}

typedef DSFRSpacingsTheme = DSFRThemeDataWidget<DSFRSpacings>;
