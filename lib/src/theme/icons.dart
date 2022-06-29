import 'package:flutter/material.dart';

@immutable
class DSFRIcons extends ThemeExtension<DSFRIcons> {
  @visibleForTesting
  static String? packageName = 'flutter_dsfr';

  const DSFRIcons();

  static DSFRIcons of(BuildContext context) =>
      Theme.of(context).extension<DSFRIcons>()!;

  @override
  DSFRIcons copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  DSFRIcons lerp(ThemeExtension<DSFRIcons>? other, double t) {
    return this;
  }
}
