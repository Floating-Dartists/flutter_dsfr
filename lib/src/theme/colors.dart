import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/theme/palette.dart';
import 'package:flutter_dsfr/src/utils/named_property.dart';

@immutable
class DSFRColors extends ThemeExtension<DSFRColors> {
  const DSFRColors._({
    required this.frConnectHover,
    required this.frConnectActive,
    required this.frConnectBackground,
    required this.backgroundActionHighBlueFrance,
    required this.backgroundActionHighBlueFranceHover,
    required this.backgroundActionHighBlueFranceActive,
    required this.activeBlueFrance,
    required this.textInvertedBlueFrance,
    required this.borderActionHighBlueFrance,
    required this.blockColorHover,
    required this.blockColorActive,
    required this.defaultGrey,
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
    required this.g200,
    required this.g800,
    required this.highGrey,
    required this.disabledGrey,
    required this.mentionGrey,
    required this.defaultError,
    required this.defaultSuccess,
    required this.titleGrey,
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
          activeBlueFrance: ColorPalette.blueFranceSun113,
          textInvertedBlueFrance: ColorPalette.blueFrance975,
          borderActionHighBlueFrance: ColorPalette.blueFranceSun113,
          blockColorHover: const Color.fromRGBO(224, 224, 224, 0.5),
          blockColorActive: const Color.fromRGBO(194, 194, 194, 0.5),
          defaultGrey: ColorPalette.grey925,
          alertsBackground: ColorPalette.grey1000,
          backgroundDisabledGrey: ColorPalette.grey925,
          textDisabledGrey: ColorPalette.grey625,
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
          g200: const Color(0xFFf0f0f0),
          g800: ColorPalette.grey75,
          highGrey: ColorPalette.grey50,
          disabledGrey: ColorPalette.grey925,
          mentionGrey: ColorPalette.grey425,
          defaultError: ColorPalette.error425,
          defaultSuccess: ColorPalette.success425,
          titleGrey: ColorPalette.grey50,
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
          activeBlueFrance: ColorPalette.blueFrance625,
          textInvertedBlueFrance: ColorPalette.blueFranceSun113,
          borderActionHighBlueFrance: const Color(0xFF9a9aff),
          blockColorHover: const Color.fromRGBO(65, 65, 65, 0.5),
          blockColorActive: const Color.fromRGBO(99, 99, 99, 0.5),
          defaultGrey: ColorPalette.grey125,
          alertsBackground: ColorPalette.grey50,
          backgroundDisabledGrey: ColorPalette.grey125,
          textDisabledGrey: ColorPalette.grey425,
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
          g200: const Color(0xFF383838),
          g800: Colors.white,
          highGrey: Colors.white,
          disabledGrey: ColorPalette.grey125,
          mentionGrey: ColorPalette.grey625,
          defaultError: ColorPalette.error625,
          defaultSuccess: ColorPalette.success625,
          titleGrey: Colors.white,
        );

  final Color frConnectHover;
  final Color frConnectActive;
  final Color frConnectBackground;
  final Color backgroundActionHighBlueFrance;
  final Color backgroundActionHighBlueFranceHover;
  final Color backgroundActionHighBlueFranceActive;
  final Color activeBlueFrance;
  final Color textInvertedBlueFrance;
  final Color borderActionHighBlueFrance;
  final Color blockColorHover;
  final Color blockColorActive;
  final Color defaultGrey;
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
  final Color g200;
  final Color g800;
  final Color highGrey;
  final Color disabledGrey;
  final Color mentionGrey;
  final Color defaultError;
  final Color defaultSuccess;
  final Color titleGrey;

  @override
  DSFRColors copyWith() => this;

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
      activeBlueFrance: Color.lerp(
        activeBlueFrance,
        other.activeBlueFrance,
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
      defaultGrey: Color.lerp(defaultGrey, other.defaultGrey, t)!,
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
      g200: Color.lerp(g200, other.g200, t)!,
      g800: Color.lerp(g800, other.g800, t)!,
      highGrey: Color.lerp(highGrey, other.highGrey, t)!,
      disabledGrey: Color.lerp(disabledGrey, other.disabledGrey, t)!,
      mentionGrey: Color.lerp(mentionGrey, other.mentionGrey, t)!,
      defaultError: Color.lerp(defaultError, other.defaultError, t)!,
      defaultSuccess: Color.lerp(defaultSuccess, other.defaultSuccess, t)!,
      titleGrey: Color.lerp(titleGrey, other.titleGrey, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is DSFRColors &&
            runtimeType == other.runtimeType &&
            frConnectHover == other.frConnectHover &&
            frConnectActive == other.frConnectActive &&
            frConnectBackground == other.frConnectBackground &&
            backgroundActionHighBlueFrance ==
                other.backgroundActionHighBlueFrance &&
            backgroundActionHighBlueFranceHover ==
                other.backgroundActionHighBlueFranceHover &&
            backgroundActionHighBlueFranceActive ==
                other.backgroundActionHighBlueFranceActive &&
            activeBlueFrance == other.activeBlueFrance &&
            textInvertedBlueFrance == other.textInvertedBlueFrance &&
            borderActionHighBlueFrance == other.borderActionHighBlueFrance &&
            blockColorHover == other.blockColorHover &&
            blockColorActive == other.blockColorActive &&
            defaultGrey == other.defaultGrey &&
            backgroundDisabledGrey == other.backgroundDisabledGrey &&
            textDisabledGrey == other.textDisabledGrey &&
            alertsBackground == other.alertsBackground &&
            alertsCloseButtonIcon == other.alertsCloseButtonIcon &&
            hover == other.hover &&
            active == other.active &&
            splash == other.splash &&
            text == other.text &&
            accordionBorder == other.accordionBorder &&
            error == other.error &&
            success == other.success &&
            info == other.info &&
            warning == other.warning &&
            news == other.news &&
            badgeError == other.badgeError &&
            badgeSuccess == other.badgeSuccess &&
            badgeInfo == other.badgeInfo &&
            badgeWarning == other.badgeWarning &&
            badgeNews == other.badgeNews &&
            banner == other.banner &&
            g200 == other.g200 &&
            g800 == other.g800 &&
            highGrey == other.highGrey &&
            disabledGrey == other.disabledGrey &&
            mentionGrey == other.mentionGrey &&
            defaultError == other.defaultError &&
            defaultSuccess == other.defaultSuccess &&
            titleGrey == other.titleGrey;
  }

  @override
  int get hashCode {
    return Object.hashAll([
      runtimeType,
      frConnectHover,
      frConnectActive,
      frConnectBackground,
      backgroundActionHighBlueFrance,
      backgroundActionHighBlueFranceHover,
      backgroundActionHighBlueFranceActive,
      activeBlueFrance,
      textInvertedBlueFrance,
      borderActionHighBlueFrance,
      blockColorHover,
      blockColorActive,
      defaultGrey,
      backgroundDisabledGrey,
      textDisabledGrey,
      alertsBackground,
      alertsCloseButtonIcon,
      hover,
      active,
      splash,
      text,
      accordionBorder,
      error,
      success,
      info,
      warning,
      news,
      badgeError,
      badgeSuccess,
      badgeInfo,
      badgeWarning,
      badgeNews,
      banner,
      g200,
      g800,
      highGrey,
      disabledGrey,
      mentionGrey,
      defaultError,
      defaultSuccess,
      titleGrey,
    ]);
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
        NamedProperty('activeBlueFrance', activeBlueFrance),
        NamedProperty('textInvertedBlueFrance', textInvertedBlueFrance),
        NamedProperty('borderActionHighBlueFrance', borderActionHighBlueFrance),
        NamedProperty('blockColorHover', blockColorHover),
        NamedProperty('blockColorActive', blockColorActive),
        NamedProperty('defaultGrey', defaultGrey),
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
        NamedProperty('g200', g200),
        NamedProperty('g800', g800),
        NamedProperty('highGrey', highGrey),
        NamedProperty('disabledGrey', disabledGrey),
        NamedProperty('mentionGrey', mentionGrey),
        NamedProperty('defaultError', defaultError),
        NamedProperty('defaultSuccess', defaultSuccess),
      ];
}
