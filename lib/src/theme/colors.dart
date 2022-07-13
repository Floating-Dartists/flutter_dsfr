import 'package:flutter/material.dart';

import '../utils/named_property.dart';
import 'palette.dart';
import 'theme_data_widget.dart';

@immutable
class DSFRColors extends ThemeExtension<DSFRColors> {
  final Color frConnectHover;
  final Color frConnectActive;
  final Color frConnectBackground;
  final Color backgroundActionHighBlueFrance;
  final Color backgroundActionHighBlueFranceHover;
  final Color backgroundActionHighBlueFranceActive;
  final Color textInvertedBlueFrance;
  final Color borderActionHighBlueFrance;
  final Color blockColorHover;
  final Color blockColorActive;
  final Color defaultBorderGrey;
  final Color backgroundDisabledGrey;
  final Color textDisabledGrey;
  final Color alertsBackground;
  final Color alertsCloseButtonIcon;
  final Color hover;
  final Color active;
  final Color splash;
  final Color text;
  final Color accordionBorder;
  final Color error;
  final Color success;
  final Color info;
  final Color warning;
  final Color news;
  final Color badgeError;
  final Color badgeSuccess;
  final Color badgeInfo;
  final Color badgeWarning;
  final Color badgeNews;
  final Color banner;
  final Color radioActive;
  final Color frLabel;

  const DSFRColors._({
    required this.frConnectHover,
    required this.frConnectActive,
    required this.frConnectBackground,
    required this.backgroundActionHighBlueFrance,
    required this.backgroundActionHighBlueFranceHover,
    required this.backgroundActionHighBlueFranceActive,
    required this.textInvertedBlueFrance,
    required this.borderActionHighBlueFrance,
    required this.blockColorHover,
    required this.blockColorActive,
    required this.defaultBorderGrey,
    required this.alertsBackground,
    required this.backgroundDisabledGrey,
    required this.textDisabledGrey,
    required this.alertsCloseButtonIcon,
    required this.hover,
    required this.active,
    required this.splash,
    required this.text,
    required this.accordionBorder,
    required this.error,
    required this.success,
    required this.info,
    required this.warning,
    required this.news,
    required this.badgeError,
    required this.badgeSuccess,
    required this.badgeInfo,
    required this.badgeWarning,
    required this.badgeNews,
    required this.banner,
    required this.radioActive,
    required this.frLabel,
  });

  const DSFRColors.light()
      : this._(
          frConnectHover: ColorPalette.blueFranceSun113Hover,
          frConnectActive: ColorPalette.blueFranceSun113Active,
          frConnectBackground: ColorPalette.blueFranceSun113,
          backgroundActionHighBlueFrance: ColorPalette.blueFranceSun113,
          backgroundActionHighBlueFranceHover:
              ColorPalette.blueFranceSun113Hover,
          backgroundActionHighBlueFranceActive:
              ColorPalette.blueFranceSun113Active,
          textInvertedBlueFrance: ColorPalette.blueFrance975,
          borderActionHighBlueFrance: ColorPalette.blueFranceSun113,
          blockColorHover: const Color.fromRGBO(224, 224, 224, 0.5),
          blockColorActive: const Color.fromRGBO(194, 194, 194, 0.5),
          defaultBorderGrey: const Color(0xFFe5e5e5),
          alertsBackground: ColorPalette.grey1000,
          backgroundDisabledGrey: const Color(0xFFe5e5e5),
          textDisabledGrey: const Color(0xFF929292),
          alertsCloseButtonIcon: ColorPalette.blueFranceSun113,
          hover: ColorPalette.grey1000Hover,
          active: ColorPalette.grey1000Active,
          splash: ColorPalette.transparent,
          text: ColorPalette.black,
          accordionBorder: ColorPalette.grey925,
          error: ColorPalette.error425,
          success: ColorPalette.success425,
          info: ColorPalette.info425,
          warning: ColorPalette.warning425,
          news: ColorPalette.yellowTounesolSun407,
          badgeError: ColorPalette.error950,
          badgeSuccess: ColorPalette.success950,
          badgeInfo: ColorPalette.info950,
          badgeWarning: ColorPalette.warning950,
          badgeNews: ColorPalette.yellowTournesol950,
          banner: ColorPalette.info950,
          radioActive: ColorPalette.blueFranceSun113,
          frLabel: const Color(0xFF1e1e1e),
        );

  const DSFRColors.dark()
      : this._(
          frConnectHover: ColorPalette.blueFrance625Hover,
          frConnectActive: ColorPalette.blueFrance625Active,
          frConnectBackground: ColorPalette.blueFrance625,
          backgroundActionHighBlueFrance: ColorPalette.blueFrance625,
          backgroundActionHighBlueFranceHover: ColorPalette.blueFrance625Hover,
          backgroundActionHighBlueFranceActive:
              ColorPalette.blueFrance625Active,
          textInvertedBlueFrance: ColorPalette.blueFranceSun113,
          borderActionHighBlueFrance: const Color(0xFF9a9aff),
          blockColorHover: const Color.fromRGBO(65, 65, 65, 0.5),
          blockColorActive: const Color.fromRGBO(99, 99, 99, 0.5),
          defaultBorderGrey: const Color(0xFF2a2a2a),
          alertsBackground: ColorPalette.grey50,
          backgroundDisabledGrey: const Color(0xFF2a2a2a),
          textDisabledGrey: const Color.fromRGBO(102, 102, 102, 1),
          alertsCloseButtonIcon: ColorPalette.blueFrance625,
          hover: ColorPalette.grey50Hover,
          active: ColorPalette.grey50Active,
          splash: ColorPalette.transparent,
          text: ColorPalette.grey1000,
          accordionBorder: ColorPalette.grey125,
          error: ColorPalette.error625,
          success: ColorPalette.success625,
          info: ColorPalette.info625,
          warning: ColorPalette.warning625,
          news: ColorPalette.yellowTournesolMoon922,
          badgeError: ColorPalette.error125,
          badgeSuccess: ColorPalette.success125,
          badgeInfo: ColorPalette.info125,
          badgeWarning: ColorPalette.warning125,
          badgeNews: ColorPalette.yellowTournesol100,
          banner: ColorPalette.info100,
          radioActive: const Color(0xFF9a9aff),
          frLabel: Colors.white,
        );

  static DSFRColors of(BuildContext context) =>
      Theme.of(context).extension<DSFRColors>()!;

  @override
  DSFRColors copyWith() {
    return DSFRColors._(
      frConnectHover: frConnectHover,
      frConnectActive: frConnectActive,
      frConnectBackground: frConnectBackground,
      backgroundActionHighBlueFrance: backgroundActionHighBlueFrance,
      backgroundActionHighBlueFranceHover: backgroundActionHighBlueFranceHover,
      backgroundActionHighBlueFranceActive:
          backgroundActionHighBlueFranceActive,
      textInvertedBlueFrance: textInvertedBlueFrance,
      borderActionHighBlueFrance: borderActionHighBlueFrance,
      blockColorHover: blockColorHover,
      blockColorActive: blockColorActive,
      defaultBorderGrey: defaultBorderGrey,
      backgroundDisabledGrey: backgroundDisabledGrey,
      textDisabledGrey: textDisabledGrey,
      alertsBackground: alertsBackground,
      alertsCloseButtonIcon: alertsCloseButtonIcon,
      hover: hover,
      active: active,
      splash: splash,
      text: text,
      accordionBorder: accordionBorder,
      error: error,
      success: success,
      info: info,
      warning: warning,
      news: news,
      badgeError: badgeError,
      badgeSuccess: badgeSuccess,
      badgeInfo: badgeInfo,
      badgeWarning: badgeWarning,
      badgeNews: badgeNews,
      banner: banner,
      radioActive: radioActive,
      frLabel: frLabel,
    );
  }

  @override
  DSFRColors lerp(ThemeExtension<DSFRColors>? other, double t) {
    if (other is! DSFRColors) {
      return this;
    }
    return DSFRColors._(
      frConnectHover: Color.lerp(frConnectHover, other.frConnectHover, t)!,
      frConnectActive: Color.lerp(frConnectActive, other.frConnectActive, t)!,
      frConnectBackground:
          Color.lerp(frConnectBackground, other.frConnectBackground, t)!,
      backgroundActionHighBlueFrance: Color.lerp(
        backgroundActionHighBlueFrance,
        other.backgroundActionHighBlueFrance,
        t,
      )!,
      backgroundActionHighBlueFranceHover: Color.lerp(
        backgroundActionHighBlueFranceHover,
        other.backgroundActionHighBlueFranceHover,
        t,
      )!,
      backgroundActionHighBlueFranceActive: Color.lerp(
        backgroundActionHighBlueFranceActive,
        other.backgroundActionHighBlueFranceActive,
        t,
      )!,
      textInvertedBlueFrance: Color.lerp(
        textInvertedBlueFrance,
        other.textInvertedBlueFrance,
        t,
      )!,
      borderActionHighBlueFrance: Color.lerp(
        borderActionHighBlueFrance,
        other.borderActionHighBlueFrance,
        t,
      )!,
      blockColorHover: Color.lerp(blockColorHover, other.blockColorHover, t)!,
      blockColorActive:
          Color.lerp(blockColorActive, other.blockColorActive, t)!,
      defaultBorderGrey:
          Color.lerp(defaultBorderGrey, other.defaultBorderGrey, t)!,
      backgroundDisabledGrey:
          Color.lerp(backgroundDisabledGrey, other.backgroundDisabledGrey, t)!,
      textDisabledGrey:
          Color.lerp(textDisabledGrey, other.textDisabledGrey, t)!,
      alertsBackground:
          Color.lerp(alertsBackground, other.alertsBackground, t)!,
      alertsCloseButtonIcon:
          Color.lerp(alertsCloseButtonIcon, other.alertsCloseButtonIcon, t)!,
      hover: Color.lerp(hover, other.textDisabledGrey, t)!,
      active: Color.lerp(active, other.textDisabledGrey, t)!,
      splash: Color.lerp(splash, other.textDisabledGrey, t)!,
      text: Color.lerp(text, other.text, t)!,
      accordionBorder: Color.lerp(accordionBorder, other.accordionBorder, t)!,
      error: Color.lerp(error, other.error, t)!,
      success: Color.lerp(success, other.success, t)!,
      info: Color.lerp(info, other.info, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      news: Color.lerp(news, other.news, t)!,
      badgeError: Color.lerp(badgeError, other.badgeError, t)!,
      badgeSuccess: Color.lerp(badgeSuccess, other.badgeSuccess, t)!,
      badgeInfo: Color.lerp(badgeInfo, other.badgeInfo, t)!,
      badgeWarning: Color.lerp(badgeWarning, other.badgeWarning, t)!,
      badgeNews: Color.lerp(badgeNews, other.badgeNews, t)!,
      banner: Color.lerp(banner, other.banner, t)!,
      radioActive: Color.lerp(radioActive, other.radioActive, t)!,
      frLabel: Color.lerp(frLabel, other.frLabel, t)!,
    );
  }

  @visibleForTesting
  List<NamedProperty<Color>> get props => [
        NamedProperty('frConnectHover', frConnectHover),
        NamedProperty('frConnectActive', frConnectActive),
        NamedProperty('frConnectBackground', frConnectBackground),
        NamedProperty(
          'backgroundActionHighBlueFrance',
          backgroundActionHighBlueFrance,
        ),
        NamedProperty(
          'backgroundActionHighBlueFranceHover',
          backgroundActionHighBlueFranceHover,
        ),
        NamedProperty(
          'backgroundActionHighBlueFranceActive',
          backgroundActionHighBlueFranceActive,
        ),
        NamedProperty('textInvertedBlueFrance', textInvertedBlueFrance),
        NamedProperty('borderActionHighBlueFrance', borderActionHighBlueFrance),
        NamedProperty('blockColorHover', blockColorHover),
        NamedProperty('blockColorActive', blockColorActive),
        NamedProperty('defaultBorderGrey', defaultBorderGrey),
        NamedProperty('backgroundDisabledGrey', backgroundDisabledGrey),
        NamedProperty('textDisabledGrey', textDisabledGrey),
        NamedProperty('alertsBackground', alertsBackground),
        NamedProperty('alertsCloseButtonIcon', alertsCloseButtonIcon),
        NamedProperty('hover', hover),
        NamedProperty('active', active),
        NamedProperty('splash', splash),
        NamedProperty('text', text),
        NamedProperty('accordionBorder', accordionBorder),
        NamedProperty('error', error),
        NamedProperty('success', success),
        NamedProperty('info', info),
        NamedProperty('warning', warning),
        NamedProperty('news', news),
        NamedProperty('badgeError', badgeError),
        NamedProperty('badgeSuccess', badgeSuccess),
        NamedProperty('badgeInfo', badgeInfo),
        NamedProperty('badgeWarning', badgeWarning),
        NamedProperty('badgeNews', badgeNews),
        NamedProperty('banner', banner),
        NamedProperty('radioActive', radioActive),
        NamedProperty('frLabel', frLabel),
      ];
}

typedef DSFRColorsTheme = DSFRThemeDataWidget<DSFRColors>;
