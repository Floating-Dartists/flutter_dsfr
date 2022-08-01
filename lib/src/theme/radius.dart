import 'package:flutter/material.dart';

@immutable
class DSFRRadius extends ThemeExtension<DSFRRadius> {
  final Radius small;

  const DSFRRadius._({required this.small});

  const DSFRRadius.regular() : this._(small: const Radius.circular(4));

  static DSFRRadius of(BuildContext context) =>
      Theme.of(context).extension<DSFRRadius>()!;

  @override
  DSFRRadius copyWith() {
    return DSFRRadius._(small: small);
  }

  @override
  DSFRRadius lerp(ThemeExtension<DSFRRadius>? other, double t) {
    if (other is! DSFRRadius) return this;
    return DSFRRadius._(small: Radius.lerp(small, other.small, t)!);
  }
}

@immutable
class DSFRBorderRadius extends ThemeExtension<DSFRBorderRadius> {
  final DSFRRadius _radius;

  const DSFRBorderRadius(this._radius);

  static DSFRBorderRadius of(BuildContext context) =>
      Theme.of(context).extension<DSFRBorderRadius>()!;

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
}
