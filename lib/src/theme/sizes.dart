import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/named_property.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/222396724/Espacement+-+Spacing
@immutable
class DSFRSizes extends ThemeExtension<DSFRSizes> {
  /// Space in rem: 0.125
  final double v0_5;

  /// Space in rem: 0.25
  final double v1;

  /// Space in rem: 0.375
  final double v1_5;

  /// Space in rem: 0.5
  final double w1;

  /// Space in rem: 0.75
  final double v3;

  /// Space in rem: 1
  final double w2;

  /// Space in rem: 1.25
  final double v5;

  /// Space in rem: 1.5
  final double w3;

  /// Space in rem: 2
  final double w4;

  /// Space in rem: 2.5
  final double w5;

  /// Space in rem: 3
  final double w6;

  /// Space in rem: 3.5
  final double w7;

  /// Space in rem: 4
  final double w8;

  /// Space in rem: 4.5
  final double w9;

  /// Space in rem: 6
  final double w12;

  /// Space in rem: 7.5
  final double w15;

  const DSFRSizes._({
    required this.v0_5,
    required this.v1,
    required this.v1_5,
    required this.w1,
    required this.v3,
    required this.w2,
    required this.v5,
    required this.w3,
    required this.w4,
    required this.w5,
    required this.w6,
    required this.w7,
    required this.w8,
    required this.w9,
    required this.w12,
    required this.w15,
  });

  const DSFRSizes.regular()
      : this._(
          v0_5: 2,
          v1: 4,
          v1_5: 6,
          w1: 8,
          v3: 12,
          w2: 16,
          v5: 20,
          w3: 24,
          w4: 32,
          w5: 40,
          w6: 48,
          w7: 56,
          w8: 64,
          w9: 72,
          w12: 96,
          w15: 120,
        );

  static DSFRSizes of(BuildContext context) =>
      Theme.of(context).extension<DSFRSizes>()!;

  @override
  DSFRSizes copyWith({
    double? v0_5,
    double? v1,
    double? v1_5,
    double? w1,
    double? v3,
    double? w2,
    double? v5,
    double? w3,
    double? w4,
    double? w5,
    double? w6,
    double? w7,
    double? w8,
    double? w9,
    double? w12,
    double? w15,
  }) {
    return DSFRSizes._(
      v0_5: v0_5 ?? this.v0_5,
      v1: v1 ?? this.v1,
      v1_5: v1_5 ?? this.v1_5,
      w1: w1 ?? this.w1,
      v3: v3 ?? this.v3,
      w2: w2 ?? this.w2,
      v5: v5 ?? this.v5,
      w3: w3 ?? this.w3,
      w4: w4 ?? this.w4,
      w5: w5 ?? this.w5,
      w6: w6 ?? this.w6,
      w7: w7 ?? this.w7,
      w8: w8 ?? this.w8,
      w9: w9 ?? this.w9,
      w12: w12 ?? this.w12,
      w15: w15 ?? this.w15,
    );
  }

  @override
  DSFRSizes lerp(ThemeExtension<DSFRSizes>? other, double t) {
    if (other is! DSFRSizes) {
      return this;
    }
    return DSFRSizes._(
      v0_5: lerpDouble(v0_5, other.v0_5, t)!,
      v1: lerpDouble(v1, other.v1, t)!,
      v1_5: lerpDouble(v1_5, other.v1_5, t)!,
      w1: lerpDouble(w1, other.w1, t)!,
      v3: lerpDouble(v3, other.v3, t)!,
      w2: lerpDouble(w2, other.w2, t)!,
      v5: lerpDouble(v5, other.v5, t)!,
      w3: lerpDouble(w3, other.w3, t)!,
      w4: lerpDouble(w4, other.w4, t)!,
      w5: lerpDouble(w5, other.w5, t)!,
      w6: lerpDouble(w6, other.w6, t)!,
      w7: lerpDouble(w7, other.w7, t)!,
      w8: lerpDouble(w8, other.w8, t)!,
      w9: lerpDouble(w9, other.w9, t)!,
      w12: lerpDouble(w12, other.w12, t)!,
      w15: lerpDouble(w15, other.w15, t)!,
    );
  }

  @visibleForTesting
  List<NamedProperty<double>> get props => [
        NamedProperty('v0_5', v0_5),
        NamedProperty('v1', v1),
        NamedProperty('v1_5', v1_5),
        NamedProperty('w1', w1),
        NamedProperty('v3', v3),
        NamedProperty('w2', w2),
        NamedProperty('v5', v5),
        NamedProperty('w3', w3),
        NamedProperty('w4', w4),
        NamedProperty('w5', w5),
        NamedProperty('w6', w6),
        NamedProperty('w7', w7),
        NamedProperty('w8', w8),
        NamedProperty('w9', w9),
        NamedProperty('w12', w12),
        NamedProperty('w15', w15),
      ];
}
