import 'package:flutter/material.dart';

import '../base/color_palette.dart';

@immutable
class DSFRTextStyles extends ThemeExtension<DSFRTextStyles> {
  final TextStyle? frConnectLogin;
  final TextStyle? frConnectBrand;
  final TextStyle? frConnectGroup;

  const DSFRTextStyles._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
  });

  const DSFRTextStyles.light()
      : this._(
          frConnectLogin: const TextStyle(
            fontSize: 17,
            fontFamily: 'Marianne',
            color: ColorPalette.blueFrance975,
          ),
          frConnectBrand: const TextStyle(
            fontSize: 18,
            fontFamily: 'Marianne',
            fontWeight: FontWeight.w700,
            color: ColorPalette.blueFrance975,
          ),
          frConnectGroup: const TextStyle(
            fontFamily: 'Marianne',
            color: ColorPalette.blueFranceSun113,
          ),
        );

  const DSFRTextStyles.dark()
      : this._(
          frConnectLogin: const TextStyle(
            fontSize: 17,
            fontFamily: 'Marianne',
            color: ColorPalette.blueFranceSun113,
          ),
          frConnectBrand: const TextStyle(
            fontSize: 18,
            fontFamily: 'Marianne',
            fontWeight: FontWeight.w700,
            color: ColorPalette.blueFranceSun113,
          ),
          frConnectGroup: const TextStyle(
            fontFamily: 'Marianne',
            color: ColorPalette.blueFrance625,
          ),
        );

  @override
  ThemeExtension<DSFRTextStyles> copyWith({
    TextStyle? frConnectLogin,
    TextStyle? frConnectBrand,
    TextStyle? frConnectGroup,
  }) {
    return DSFRTextStyles._(
      frConnectLogin: frConnectLogin ?? this.frConnectLogin,
      frConnectBrand: frConnectBrand ?? this.frConnectBrand,
      frConnectGroup: frConnectGroup ?? this.frConnectGroup,
    );
  }

  @override
  ThemeExtension<DSFRTextStyles> lerp(
    ThemeExtension<DSFRTextStyles>? other,
    double t,
  ) {
    if (other is! DSFRTextStyles) {
      return this;
    }
    return DSFRTextStyles._(
      frConnectLogin: TextStyle.lerp(frConnectLogin, other.frConnectLogin, t),
      frConnectBrand: TextStyle.lerp(frConnectBrand, other.frConnectBrand, t),
      frConnectGroup: TextStyle.lerp(frConnectGroup, other.frConnectGroup, t),
    );
  }
}
