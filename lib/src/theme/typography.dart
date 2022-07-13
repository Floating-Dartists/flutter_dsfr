import 'package:flutter/material.dart';

import '../utils/named_property.dart';
import 'theme_data_widget.dart';

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
  final TextStyle accordionOpen;
  final TextStyle badgeLabel;
  final TextStyle badgeLabelSmall;
  final TextStyle frLabel;

  const DSFRTypography._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
    required this.btnLabel,
    required this.alertsTitle,
    required this.defaultText,
    required this.accordionOpen,
    required this.badgeLabel,
    required this.badgeLabelSmall,
    required this.frLabel,
  });

  factory DSFRTypography.regular() {
    return DSFRTypography._(
      frConnectLogin: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 17.0,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
      ),
      frConnectBrand: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
      frConnectGroup: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
      ),
      btnLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none,
      ),
      alertsTitle: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
      defaultText: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
      ),
      accordionOpen: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
      badgeLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
      badgeLabelSmall: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 12.0,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none,
      ),
      frLabel: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
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
    TextStyle? frLabel,
  }) {
    return DSFRTypography._(
      frConnectLogin: frConnectLogin,
      frConnectBrand: frConnectBrand,
      frConnectGroup: frConnectGroup,
      btnLabel: btnLabel ?? this.btnLabel,
      alertsTitle: alertsTitle ?? this.alertsTitle,
      defaultText: defaultText,
      accordionOpen: accordionOpen,
      badgeLabel: badgeLabel,
      badgeLabelSmall: badgeLabelSmall,
      frLabel: frLabel ?? this.frLabel,
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
      accordionOpen: TextStyle.lerp(accordionOpen, other.accordionOpen, t)!,
      badgeLabel: TextStyle.lerp(badgeLabel, other.badgeLabel, t)!,
      badgeLabelSmall:
          TextStyle.lerp(badgeLabelSmall, other.badgeLabelSmall, t)!,
      frLabel: TextStyle.lerp(frLabel, other.frLabel, t)!,
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
        NamedProperty('accordionOpen', accordionOpen),
        NamedProperty('badgeLabel', badgeLabel),
        NamedProperty('badgeLabelSmall', badgeLabelSmall),
        NamedProperty('frLabel', frLabel),
      ];
}

typedef DSFRTypographyTheme = DSFRThemeDataWidget<DSFRTypography>;
