import 'package:flutter/material.dart';

import '../utils/named_property.dart';
import 'sizes.dart';

@immutable
class DSFRTypography extends ThemeExtension<DSFRTypography> {
  static String? _packageName = 'flutter_dsfr';
  static String? get packageName => _packageName;

  @visibleForTesting
  static set packageName(String? value) => _packageName = value;

  final TextStyle frConnectLogin;
  final TextStyle frConnectBrand;
  final TextStyle frConnectGroup;
  final TextStyle btnLabel;
  final TextStyle alertsTitle;
  final TextStyle defaultText;

  const DSFRTypography._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
    required this.btnLabel,
    required this.alertsTitle,
    required this.defaultText,
  });

  factory DSFRTypography.regular() {
    const dsfrSizes = DSFRSizes.regular();
    return DSFRTypography._(
      frConnectLogin: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 17,
        decoration: TextDecoration.none,
      ),
      frConnectBrand: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
      frConnectGroup: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: dsfrSizes.v3,
        decoration: TextDecoration.none,
      ),
      btnLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontWeight: FontWeight.w500,
        fontSize: dsfrSizes.w2,
        decoration: TextDecoration.none,
      ),
      alertsTitle: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        decoration: TextDecoration.none,
        fontWeight: FontWeight.w500,
        fontSize: dsfrSizes.w2,
      ),
      defaultText: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        decoration: TextDecoration.none,
      ),
    );
  }

  static DSFRTypography of(BuildContext context) =>
      Theme.of(context).extension<DSFRTypography>()!;

  @override
  DSFRTypography copyWith({
    TextStyle? btnLabel,
    TextStyle? alertsTitle,
  }) {
    return DSFRTypography._(
      frConnectLogin: frConnectLogin,
      frConnectBrand: frConnectBrand,
      frConnectGroup: frConnectGroup,
      btnLabel: btnLabel ?? this.btnLabel,
      alertsTitle: alertsTitle ?? this.alertsTitle,
      defaultText: defaultText,
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
      btnLabel: TextStyle.lerp(btnLabel, other.btnLabel, t)!,
      alertsTitle: TextStyle.lerp(alertsTitle, other.alertsTitle, t)!,
      defaultText: TextStyle.lerp(defaultText, other.defaultText, t)!,
    );
  }

  @visibleForTesting
  List<NamedProperty<TextStyle>> get props => [
        NamedProperty('frConnectLogin', frConnectLogin),
        NamedProperty('frConnectBrand', frConnectBrand),
        NamedProperty('frConnectGroup', frConnectGroup),
        NamedProperty('btnLabel', btnLabel),
        NamedProperty('alertsTitle', alertsTitle),
        NamedProperty('defaultText', defaultText),
      ];
}
