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
  final TextStyle boldText;
  final TextStyle badgeLabel;
  final TextStyle badgeLabelSmall;
  final TextStyle frLabel;
  final TextStyle frFieldsetLegend;
  final TextStyle frErrorText;
  final TextStyle body;
  final TextStyle mention;

  const DSFRTypography._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
    required this.btnLabel,
    required this.alertsTitle,
    required this.defaultText,
    required this.boldText,
    required this.badgeLabel,
    required this.badgeLabelSmall,
    required this.frLabel,
    required this.frFieldsetLegend,
    required this.frErrorText,
    required this.body,
    required this.mention,
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
      boldText: TextStyle(
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
      frFieldsetLegend: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ),
      frErrorText: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
      ),
      body: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ),
      mention: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ),
    );
  }

  static DSFRTypography of(BuildContext context) =>
      Theme.of(context).extension<DSFRTypography>()!;

  @override
  DSFRTypography copyWith() {
    return DSFRTypography._(
      frConnectLogin: frConnectLogin,
      frConnectBrand: frConnectBrand,
      frConnectGroup: frConnectGroup,
      btnLabel: btnLabel,
      alertsTitle: alertsTitle,
      defaultText: defaultText,
      boldText: boldText,
      badgeLabel: badgeLabel,
      badgeLabelSmall: badgeLabelSmall,
      frLabel: frLabel,
      frFieldsetLegend: frFieldsetLegend,
      frErrorText: frErrorText,
      body: body,
      mention: mention,
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
      boldText: TextStyle.lerp(boldText, other.boldText, t)!,
      badgeLabel: TextStyle.lerp(badgeLabel, other.badgeLabel, t)!,
      badgeLabelSmall:
          TextStyle.lerp(badgeLabelSmall, other.badgeLabelSmall, t)!,
      frLabel: TextStyle.lerp(frLabel, other.frLabel, t)!,
      frFieldsetLegend:
          TextStyle.lerp(frFieldsetLegend, other.frFieldsetLegend, t)!,
      frErrorText: TextStyle.lerp(frErrorText, other.frErrorText, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      mention: TextStyle.lerp(mention, other.mention, t)!,
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
        NamedProperty('boldText', boldText),
        NamedProperty('badgeLabel', badgeLabel),
        NamedProperty('badgeLabelSmall', badgeLabelSmall),
        NamedProperty('frLabel', frLabel),
        NamedProperty('frFieldsetLegend', frFieldsetLegend),
        NamedProperty('frErrorText', frErrorText),
        NamedProperty('body', body),
        NamedProperty('mention', mention),
      ];
}

typedef DSFRTypographyTheme = DSFRThemeDataWidget<DSFRTypography>;
