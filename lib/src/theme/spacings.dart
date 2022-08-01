import 'dart:ui';

import 'package:flutter/material.dart';

import 'theme_data_widget.dart';

@immutable
class DSFRSpacings extends ThemeExtension<DSFRSpacings> {
  final DSFRBadgeSize badgeSize;
  final DSFRButtonSize buttonSize;

  const DSFRSpacings({
    required this.badgeSize,
    required this.buttonSize,
  });

  const DSFRSpacings.small()
      : this(
          badgeSize: const DSFRBadgeSize.small(),
          buttonSize: const DSFRButtonSize.small(),
        );

  const DSFRSpacings.medium()
      : this(
          badgeSize: const DSFRBadgeSize.medium(),
          buttonSize: const DSFRButtonSize.medium(),
        );

  const DSFRSpacings.large()
      : this(
          badgeSize: const DSFRBadgeSize.medium(),
          buttonSize: const DSFRButtonSize.large(),
        );

  static DSFRSpacings of(BuildContext context) =>
      Theme.of(context).extension<DSFRSpacings>()!;

  @override
  DSFRSpacings copyWith({
    DSFRBadgeSize? badgeSize,
    DSFRButtonSize? buttonSize,
  }) {
    return DSFRSpacings(
      badgeSize: badgeSize ?? this.badgeSize,
      buttonSize: buttonSize ?? this.buttonSize,
    );
  }

  @override
  DSFRSpacings lerp(ThemeExtension<DSFRSpacings>? other, double t) {
    if (other is! DSFRSpacings) return this;
    return DSFRSpacings(
      badgeSize: DSFRBadgeSize.lerp(badgeSize, other.badgeSize, t)!,
      buttonSize: DSFRButtonSize.lerp(buttonSize, other.buttonSize, t)!,
    );
  }
}

@immutable
class DSFRBadgeSize {
  final double horizontal;
  final double vertical;
  final double iconSize;
  final double spacing;

  const DSFRBadgeSize._({
    required this.horizontal,
    required this.vertical,
    required this.iconSize,
    required this.spacing,
  });

  const DSFRBadgeSize.small()
      : this._(
          horizontal: 6,
          vertical: 5,
          iconSize: 10,
          spacing: 5,
        );

  const DSFRBadgeSize.medium()
      : this._(
          horizontal: 8,
          vertical: 5,
          iconSize: 14,
          spacing: 5,
        );

  static DSFRBadgeSize? lerp(DSFRBadgeSize? a, DSFRBadgeSize? b, double t) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;
    return DSFRBadgeSize._(
      horizontal: lerpDouble(a.horizontal, b.horizontal, t)!,
      vertical: lerpDouble(a.vertical, b.vertical, t)!,
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
    );
  }
}

@immutable
class DSFRButtonSize {
  final double vertical;
  final double horizontal;
  final double spacing;
  final double iconPadding;
  final double iconSize;

  const DSFRButtonSize._({
    required this.vertical,
    required this.horizontal,
    required this.spacing,
    required this.iconPadding,
    required this.iconSize,
  });

  const DSFRButtonSize.small()
      : this._(
          vertical: 4,
          horizontal: 12,
          spacing: 10,
          iconPadding: 10,
          iconSize: 14,
        );

  const DSFRButtonSize.medium()
      : this._(
          vertical: 8,
          horizontal: 16,
          spacing: 10,
          iconPadding: 10,
          iconSize: 20,
        );

  const DSFRButtonSize.large()
      : this._(
          vertical: 10,
          horizontal: 24,
          spacing: 10,
          iconPadding: 14,
          iconSize: 20,
        );

  static DSFRButtonSize? lerp(
    DSFRButtonSize? a,
    DSFRButtonSize? b,
    double t,
  ) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;

    return DSFRButtonSize._(
      vertical: lerpDouble(a.vertical, b.vertical, t)!,
      horizontal: lerpDouble(a.horizontal, b.horizontal, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
      iconPadding: lerpDouble(a.iconPadding, b.iconPadding, t)!,
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
    );
  }
}

typedef DSFRSpacingsTheme = DSFRThemeDataWidget<DSFRSpacings>;
