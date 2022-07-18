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
  final TextStyle frHintText;
  final TextStyle frErrorText;

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
    required this.frHintText,
    required this.frErrorText,
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
      frHintText: TextStyle(
        fontFamily: 'Marianne',
        package: packageName,
        fontSize: 12.0,
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
    );
  }

  static DSFRTypography of(BuildContext context) =>
      Theme.of(context).extension<DSFRTypography>()!;

  @override
  DSFRTypography copyWith({
    TextStyle? btnLabel,
    TextStyle? alertsTitle,
    TextStyle? frLabel,
    TextStyle? frFieldsetLegend,
    TextStyle? frHintText,
    TextStyle? frErrorText,
  }) {
    return DSFRTypography._(
      frConnectLogin: frConnectLogin,
      frConnectBrand: frConnectBrand,
      frConnectGroup: frConnectGroup,
      btnLabel: btnLabel ?? this.btnLabel,
      alertsTitle: alertsTitle ?? this.alertsTitle,
      defaultText: defaultText,
      boldText: boldText,
      badgeLabel: badgeLabel,
      badgeLabelSmall: badgeLabelSmall,
      frLabel: frLabel ?? this.frLabel,
      frFieldsetLegend: frFieldsetLegend ?? this.frFieldsetLegend,
      frHintText: frHintText ?? this.frHintText,
      frErrorText: frErrorText ?? this.frErrorText,
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
      frHintText: TextStyle.lerp(frHintText, other.frHintText, t)!,
      frErrorText: TextStyle.lerp(frErrorText, other.frErrorText, t)!,
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
        NamedProperty('frHintText', frHintText),
        NamedProperty('frErrorText', frErrorText),
      ];
}

typedef DSFRTypographyTheme = DSFRThemeDataWidget<DSFRTypography>;
