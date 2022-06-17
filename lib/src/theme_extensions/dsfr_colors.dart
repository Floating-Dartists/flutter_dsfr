import 'package:flutter/material.dart';

import '../base/color_palette.dart';

@immutable
class DSFRColors extends ThemeExtension<DSFRColors> {
  final Color? frConnectHover;
  final Color? frConnectActive;
  final Color? frConnectBackground;

  const DSFRColors._({
    required this.frConnectHover,
    required this.frConnectActive,
    required this.frConnectBackground,
  });

  const DSFRColors.light()
      : this._(
          frConnectHover: ColorPalette.blueFranceSun113Hover,
          frConnectActive: ColorPalette.blueFranceSun113Active,
          frConnectBackground: ColorPalette.blueFranceSun113,
        );

  const DSFRColors.dark()
      : this._(
          frConnectHover: ColorPalette.blueFrance625Hover,
          frConnectActive: ColorPalette.blueFrance625Active,
          frConnectBackground: ColorPalette.blueFrance625,
        );

  static DSFRColors of(BuildContext context) =>
      Theme.of(context).extension<DSFRColors>()!;

  @override
  ThemeExtension<DSFRColors> copyWith() {
    return DSFRColors._(
      frConnectHover: frConnectHover,
      frConnectActive: frConnectActive,
      frConnectBackground: frConnectBackground,
    );
  }

  @override
  ThemeExtension<DSFRColors> lerp(ThemeExtension<DSFRColors>? other, double t) {
    if (other is! DSFRColors) {
      return this;
    }
    return DSFRColors._(
      frConnectHover: Color.lerp(frConnectHover, other.frConnectHover, t),
      frConnectActive: Color.lerp(frConnectActive, other.frConnectActive, t),
      frConnectBackground:
          Color.lerp(frConnectBackground, other.frConnectBackground, t),
    );
  }
}
