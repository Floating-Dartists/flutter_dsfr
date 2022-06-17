import 'package:flutter/material.dart';

import '../base/color_palette.dart';
import 'dsfr_sizes.dart';

@immutable
class DSFRTypography extends ThemeExtension<DSFRTypography> {
  @visibleForTesting
  static String? packageName = 'flutter_dsfr';

  final TextStyle? frConnectLogin;
  final TextStyle? frConnectBrand;
  final TextStyle? frConnectGroup;
  final TextStyle? primaryBtnLabel;

  const DSFRTypography._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
    required this.primaryBtnLabel,
  });

  factory DSFRTypography.light() {
    const dsfrSizes = DSFRSizes.base();
    return DSFRTypography._(
      frConnectLogin: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 17,
        color: ColorPalette.blueFrance975,
        decoration: TextDecoration.none,
      ),
      frConnectBrand: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: ColorPalette.blueFrance975,
        decoration: TextDecoration.none,
      ),
      frConnectGroup: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: dsfrSizes.v3,
        color: ColorPalette.blueFranceSun113,
        decoration: TextDecoration.none,
      ),
      primaryBtnLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontWeight: FontWeight.w500,
        fontSize: dsfrSizes.w2,
        color: ColorPalette.blueFrance975,
        decoration: TextDecoration.none,
      ),
    );
  }

  DSFRTypography.dark()
      : this._(
          frConnectLogin: TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 17,
            color: ColorPalette.blueFranceSun113,
            decoration: TextDecoration.none,
          ),
          frConnectBrand: TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ColorPalette.blueFranceSun113,
            decoration: TextDecoration.none,
          ),
          frConnectGroup: TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            color: ColorPalette.blueFrance625,
            decoration: TextDecoration.none,
          ),
          primaryBtnLabel: TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontWeight: FontWeight.w500,
            color: ColorPalette.blueFranceSun113,
            decoration: TextDecoration.none,
          ),
        );

  static DSFRTypography of(BuildContext context) =>
      Theme.of(context).extension<DSFRTypography>()!;

  @override
  ThemeExtension<DSFRTypography> copyWith({
    TextStyle? primaryBtnLabel,
  }) {
    return DSFRTypography._(
      frConnectLogin: frConnectLogin,
      frConnectBrand: frConnectBrand,
      frConnectGroup: frConnectGroup,
      primaryBtnLabel: primaryBtnLabel ?? this.primaryBtnLabel,
    );
  }

  @override
  ThemeExtension<DSFRTypography> lerp(
    ThemeExtension<DSFRTypography>? other,
    double t,
  ) {
    if (other is! DSFRTypography) {
      return this;
    }
    return DSFRTypography._(
      frConnectLogin: TextStyle.lerp(frConnectLogin, other.frConnectLogin, t),
      frConnectBrand: TextStyle.lerp(frConnectBrand, other.frConnectBrand, t),
      frConnectGroup: TextStyle.lerp(frConnectGroup, other.frConnectGroup, t),
      primaryBtnLabel:
          TextStyle.lerp(primaryBtnLabel, other.primaryBtnLabel, t),
    );
  }
}
