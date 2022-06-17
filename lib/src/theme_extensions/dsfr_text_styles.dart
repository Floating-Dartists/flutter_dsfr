import 'package:flutter/material.dart';

import '../base/color_palette.dart';
import 'dsfr_sizes.dart';

@immutable
class DSFRTextStyles extends ThemeExtension<DSFRTextStyles> {
  @visibleForTesting
  static String? packageName = 'flutter_dsfr';

  final TextStyle? frConnectLogin;
  final TextStyle? frConnectBrand;
  final TextStyle? frConnectGroup;
  final TextStyle? primaryBtnLabel;

  const DSFRTextStyles._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
    required this.primaryBtnLabel,
  });

  factory DSFRTextStyles.light() {
    const dsfrSizes = DSFRSizes.base();
    return DSFRTextStyles._(
      frConnectLogin: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 17,
        color: ColorPalette.blueFrance975,
      ),
      frConnectBrand: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: ColorPalette.blueFrance975,
      ),
      frConnectGroup: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: dsfrSizes.v3,
        color: ColorPalette.blueFranceSun113,
      ),
      primaryBtnLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontWeight: FontWeight.w500,
        fontSize: dsfrSizes.w2,
        color: ColorPalette.blueFrance975,
      ),
    );
  }

  DSFRTextStyles.dark()
      : this._(
          frConnectLogin: TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 17,
            color: ColorPalette.blueFranceSun113,
          ),
          frConnectBrand: TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ColorPalette.blueFranceSun113,
          ),
          frConnectGroup: TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            color: ColorPalette.blueFrance625,
          ),
          primaryBtnLabel: TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontWeight: FontWeight.w500,
            color: ColorPalette.blueFranceSun113,
          ),
        );

  @override
  ThemeExtension<DSFRTextStyles> copyWith({
    TextStyle? frConnectLogin,
    TextStyle? frConnectBrand,
    TextStyle? frConnectGroup,
    TextStyle? primaryBtnLabel,
  }) {
    return DSFRTextStyles._(
      frConnectLogin: frConnectLogin ?? this.frConnectLogin,
      frConnectBrand: frConnectBrand ?? this.frConnectBrand,
      frConnectGroup: frConnectGroup ?? this.frConnectGroup,
      primaryBtnLabel: primaryBtnLabel ?? this.primaryBtnLabel,
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
      primaryBtnLabel:
          TextStyle.lerp(primaryBtnLabel, other.primaryBtnLabel, t),
    );
  }
}
