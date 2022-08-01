import 'dart:ui';

import 'package:flutter/material.dart';

import 'theme_data_widget.dart';

@immutable
class DSFRSpacings extends ThemeExtension<DSFRSpacings> {
  final DSFRBadgeSize badgeSize;
  final DSFRButtonSize buttonSize;
  final DSFRRadioSize radioSize;

  const DSFRSpacings({
    required this.badgeSize,
    required this.buttonSize,
    required this.radioSize,
  });

  const DSFRSpacings.small()
      : this(
          badgeSize: const DSFRBadgeSize.small(),
          buttonSize: const DSFRButtonSize.small(),
          radioSize: const DSFRRadioSize.small(),
        );

  const DSFRSpacings.medium()
      : this(
          badgeSize: const DSFRBadgeSize.medium(),
          buttonSize: const DSFRButtonSize.medium(),
          radioSize: const DSFRRadioSize.medium(),
        );

  const DSFRSpacings.large()
      : this(
          badgeSize: const DSFRBadgeSize.medium(),
          buttonSize: const DSFRButtonSize.large(),
          radioSize: const DSFRRadioSize.medium(),
        );

  static DSFRSpacings of(BuildContext context) =>
      Theme.of(context).extension<DSFRSpacings>()!;

  @override
  DSFRSpacings copyWith({
    DSFRBadgeSize? badgeSize,
    DSFRButtonSize? buttonSize,
    DSFRRadioSize? radioSize,
  }) {
    return DSFRSpacings(
      badgeSize: badgeSize ?? this.badgeSize,
      buttonSize: buttonSize ?? this.buttonSize,
      radioSize: radioSize ?? this.radioSize,
    );
  }

  @override
  DSFRSpacings lerp(ThemeExtension<DSFRSpacings>? other, double t) {
    if (other is! DSFRSpacings) return this;
    return DSFRSpacings(
      badgeSize: DSFRBadgeSize.lerp(badgeSize, other.badgeSize, t)!,
      buttonSize: DSFRButtonSize.lerp(buttonSize, other.buttonSize, t)!,
      radioSize: DSFRRadioSize.lerp(radioSize, other.radioSize, t)!,
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

@immutable
class DSFRRadioSize {
  final double size;
  final double spacing;

  const DSFRRadioSize._({
    required this.size,
    required this.spacing,
  });

  const DSFRRadioSize.small() : this._(size: 16, spacing: 12);
  const DSFRRadioSize.medium() : this._(size: 24, spacing: 8);

  static DSFRRadioSize? lerp(DSFRRadioSize? a, DSFRRadioSize? b, double t) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;
    return DSFRRadioSize._(
      size: lerpDouble(a.size, b.size, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
    );
  }
}

typedef DSFRSpacingsTheme = DSFRThemeDataWidget<DSFRSpacings>;
