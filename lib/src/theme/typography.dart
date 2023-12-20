import 'package:flutter/material.dart';

import '../../fonts/fonts.dart';
import '../utils/named_property.dart';

@immutable
class DSFRTypography extends ThemeExtension<DSFRTypography> {
  static const packageName = 'flutter_dsfr';

  final TextStyle frConnectLogin;
  final TextStyle frConnectBrand;
  final TextStyle frConnectGroup;
  final TextStyle alertsTitle;
  final TextStyle defaultText;
  final TextStyle boldText;
  final TextStyle medium;
  final TextStyle mention;
  final TextStyle detail;
  final TextStyle regular;

  const DSFRTypography._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
    required this.alertsTitle,
    required this.defaultText,
    required this.boldText,
    required this.medium,
    required this.mention,
    required this.detail,
    required this.regular,
  });

  const DSFRTypography.small()
      : this._(
          frConnectLogin: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 17.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          frConnectBrand: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          frConnectGroup: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          alertsTitle: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          defaultText: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          boldText: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          medium: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
          mention: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
          detail: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          regular: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
        );

  const DSFRTypography.medium()
      : this._(
          frConnectLogin: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 17.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          frConnectBrand: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          frConnectGroup: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          alertsTitle: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          defaultText: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          boldText: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          medium: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
          mention: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
          detail: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          regular: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
        );

  const DSFRTypography.large()
      : this._(
          frConnectLogin: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 17.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          frConnectBrand: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          frConnectGroup: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          alertsTitle: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          defaultText: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          boldText: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          medium: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
          mention: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
          detail: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          regular: const TextStyle(
            fontFamily: DSFRFonts.marianne,
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
        );

  @override
  DSFRTypography copyWith() {
    return DSFRTypography._(
      frConnectLogin: frConnectLogin,
      frConnectBrand: frConnectBrand,
      frConnectGroup: frConnectGroup,
      alertsTitle: alertsTitle,
      defaultText: defaultText,
      boldText: boldText,
      medium: medium,
      mention: mention,
      detail: detail,
      regular: regular,
    );
  }

  @override
  DSFRTypography lerp(ThemeExtension<DSFRTypography>? other, double t) {
    if (other is! DSFRTypography) {
      return this;
    }
    return DSFRTypography._(
      frConnectLogin: TextStyle.lerp(frConnectLogin, other.frConnectLogin, t)!,
      frConnectBrand: TextStyle.lerp(frConnectBrand, other.frConnectBrand, t)!,
      frConnectGroup: TextStyle.lerp(frConnectGroup, other.frConnectGroup, t)!,
      alertsTitle: TextStyle.lerp(alertsTitle, other.alertsTitle, t)!,
      defaultText: TextStyle.lerp(defaultText, other.defaultText, t)!,
      boldText: TextStyle.lerp(boldText, other.boldText, t)!,
      medium: TextStyle.lerp(medium, other.medium, t)!,
      mention: TextStyle.lerp(mention, other.mention, t)!,
      detail: TextStyle.lerp(detail, other.detail, t)!,
      regular: TextStyle.lerp(regular, other.regular, t)!,
    );
  }

  @visibleForTesting
  List<NamedProperty<TextStyle>> get props => [
        NamedProperty('frConnectLogin', frConnectLogin),
        NamedProperty('frConnectBrand', frConnectBrand),
        NamedProperty('frConnectGroup', frConnectGroup),
        NamedProperty('alertsTitle', alertsTitle),
        NamedProperty('defaultText', defaultText),
        NamedProperty('boldText', boldText),
        NamedProperty('medium', medium),
        NamedProperty('mention', mention),
        NamedProperty('detail', detail),
        NamedProperty('regular', regular),
      ];
}
