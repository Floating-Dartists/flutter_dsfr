import 'package:flutter/material.dart';

import '../utils/named_property.dart';

@immutable
class DSFRRadius extends ThemeExtension<DSFRRadius> {
  final Radius small;

  const DSFRRadius._({required this.small});

  const DSFRRadius.regular() : this._(small: const Radius.circular(4));

  @override
  DSFRRadius copyWith() {
    return DSFRRadius._(small: small);
  }

  @override
  DSFRRadius lerp(ThemeExtension<DSFRRadius>? other, double t) {
    if (other is! DSFRRadius) return this;
    return DSFRRadius._(small: Radius.lerp(small, other.small, t)!);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is DSFRRadius &&
            runtimeType == other.runtimeType &&
            small == other.small;
  }

  @override
  int get hashCode => Object.hash(runtimeType, small);

  @visibleForTesting
  List<NamedProperty<Radius>> get props => [
        NamedProperty('small', small),
      ];
}

@immutable
class DSFRBorderRadius extends ThemeExtension<DSFRBorderRadius> {
  final DSFRRadius _radius;

  const DSFRBorderRadius(this._radius);

  BorderRadius get small => BorderRadius.all(_radius.small);

  @override
  DSFRBorderRadius copyWith({DSFRRadius? radius}) {
    return DSFRBorderRadius(radius ?? _radius);
  }

  @override
  DSFRBorderRadius lerp(ThemeExtension<DSFRBorderRadius>? other, double t) {
    if (other is! DSFRBorderRadius) return this;
    return DSFRBorderRadius(_radius.lerp(other._radius, t));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is DSFRBorderRadius &&
            runtimeType == other.runtimeType &&
            _radius == other._radius;
  }

  @override
  int get hashCode => Object.hash(runtimeType, _radius);
}
