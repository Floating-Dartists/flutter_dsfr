import 'package:flutter/material.dart';

import '../utils/named_property.dart';
import 'theme_data_widget.dart';

@immutable
class DSFRTypography extends ThemeExtension<DSFRTypography> {
  static const packageName = 'flutter_dsfr';

  final TextStyle frConnectLogin;
  final TextStyle frConnectBrand;
  final TextStyle frConnectGroup;
  final TextStyle alertsTitle;
  final TextStyle defaultText;
  final TextStyle boldText;
  final TextStyle badgeLabel;
  final TextStyle badgeLabelSmall;
  final TextStyle standard;
  final TextStyle mention;
  final TextStyle detail;

  const DSFRTypography._({
    required this.frConnectLogin,
    required this.frConnectBrand,
    required this.frConnectGroup,
    required this.alertsTitle,
    required this.defaultText,
    required this.boldText,
    required this.badgeLabel,
    required this.badgeLabelSmall,
    required this.standard,
    required this.mention,
    required this.detail,
  });

  const DSFRTypography.small()
      : this._(
          frConnectLogin: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 17.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          frConnectBrand: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          frConnectGroup: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          alertsTitle: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          defaultText: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          boldText: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          badgeLabel: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          badgeLabelSmall: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          standard: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
          mention: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
          detail: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
        );

  const DSFRTypography.medium()
      : this._(
          frConnectLogin: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 17.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          frConnectBrand: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          frConnectGroup: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          alertsTitle: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          defaultText: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          boldText: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          badgeLabel: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          badgeLabelSmall: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          standard: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
          mention: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
          detail: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
        );

  const DSFRTypography.large()
      : this._(
          frConnectLogin: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 17.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          frConnectBrand: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          frConnectGroup: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          alertsTitle: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          defaultText: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
          boldText: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          badgeLabel: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          badgeLabelSmall: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
          standard: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
          mention: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
          detail: const TextStyle(
            fontFamily: 'Marianne',
            package: packageName,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            decoration: TextDecoration.none,
          ),
        );

  static DSFRTypography of(BuildContext context) =>
      Theme.of(context).extension<DSFRTypography>()!;

  @override
  DSFRTypography copyWith() {
    return DSFRTypography._(
      frConnectLogin: frConnectLogin,
      frConnectBrand: frConnectBrand,
      frConnectGroup: frConnectGroup,
      alertsTitle: alertsTitle,
      defaultText: defaultText,
      boldText: boldText,
      badgeLabel: badgeLabel,
      badgeLabelSmall: badgeLabelSmall,
      standard: standard,
      mention: mention,
      detail: detail,
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
      badgeLabel: TextStyle.lerp(badgeLabel, other.badgeLabel, t)!,
      badgeLabelSmall:
          TextStyle.lerp(badgeLabelSmall, other.badgeLabelSmall, t)!,
      standard: TextStyle.lerp(standard, other.standard, t)!,
      mention: TextStyle.lerp(mention, other.mention, t)!,
      detail: TextStyle.lerp(detail, other.detail, t)!,
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
        NamedProperty('badgeLabel', badgeLabel),
        NamedProperty('badgeLabelSmall', badgeLabelSmall),
        NamedProperty('standard', standard),
        NamedProperty('mention', mention),
        NamedProperty('detail', detail),
      ];
}

typedef DSFRTypographyTheme = DSFRThemeDataWidget<DSFRTypography>;
