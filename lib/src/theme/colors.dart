import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/theme/palette.dart';
import 'package:flutter_dsfr/src/utils/named_property.dart';
import 'package:meta/meta.dart';

@immutable
class DSFRColors extends ThemeExtension<DSFRColors>
    with NamedPropertiesMixin<Object> {
  const DSFRColors._({
    required this.frConnectHover,
    required this.frConnectActive,
    required this.frConnectBackground,
    required this.backgroundActionHighBlueFrance,
    required this.backgroundActionHighBlueFranceHover,
    required this.backgroundActionHighBlueFranceActive,
    required this.activeBlueFrance,
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
    // ===
    required this.blueFrance,
    required this.redMarianne,
    required this.grey,
  });

  const DSFRColors.light()
      : this._(
          frConnectHover: ColorPalette.blueFrance113Hover,
          frConnectActive: ColorPalette.blueFrance113Active,
          frConnectBackground: ColorPalette.blueFrance113,
          backgroundActionHighBlueFrance: ColorPalette.blueFrance113,
          backgroundActionHighBlueFranceHover: ColorPalette.blueFrance113Hover,
          backgroundActionHighBlueFranceActive:
              ColorPalette.blueFrance113Active,
          activeBlueFrance: ColorPalette.blueFrance113,
          borderActionHighBlueFrance: ColorPalette.blueFrance113,
          blockColorHover: const Color.fromRGBO(224, 224, 224, 0.5),
          blockColorActive: const Color.fromRGBO(194, 194, 194, 0.5),
          defaultGrey: ColorPalette.grey925,
          alertsBackground: ColorPalette.grey1000,
          backgroundDisabledGrey: ColorPalette.grey925,
          textDisabledGrey: ColorPalette.grey625,
          alertsCloseButtonIcon: ColorPalette.blueFrance113,
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
          blueFrance: const BlueFrance.light(),
          redMarianne: const RedMarianne.light(),
          grey: const Grey.light(),
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
          blueFrance: const BlueFrance.dark(),
          redMarianne: const RedMarianne.dark(),
          grey: const Grey.dark(),
        );

  final Color frConnectHover;
  final Color frConnectActive;
  final Color frConnectBackground;
  final Color backgroundActionHighBlueFrance;
  final Color backgroundActionHighBlueFranceHover;
  final Color backgroundActionHighBlueFranceActive;
  final Color activeBlueFrance;
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

  // ===

  final BlueFrance blueFrance;
  final RedMarianne redMarianne;
  final Grey grey;

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
      // ===
      blueFrance: BlueFrance.lerp(blueFrance, other.blueFrance, t),
      redMarianne: RedMarianne.lerp(redMarianne, other.redMarianne, t),
      grey: Grey.lerp(grey, other.grey, t),
    );
  }

  @override
  List<NamedProperty<Object>> get props => [
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
        NamedProperty('titleGrey', titleGrey),
        // ===
        NamedProperty('blueFrance', blueFrance),
        NamedProperty('redMarianne', redMarianne),
      ];
}

@immutable
sealed class DSFRColor with NamedPropertiesMixin<Color> {
  const DSFRColor({
    required this.strong,
    required this.softest,
    required this.light,
    required this.lighter,
    required this.lightest,
  });

  final Color strong;
  final Color softest;
  final Color light;
  final Color lighter;
  final Color lightest;

  @override
  @mustBeOverridden
  @mustCallSuper
  List<NamedProperty<Color>> get props {
    return [
      NamedProperty('strong', strong),
      NamedProperty('softest', softest),
      NamedProperty('light', light),
      NamedProperty('lighter', lighter),
      NamedProperty('lightest', lightest),
    ];
  }
}

@immutable
class BlueFrance extends DSFRColor {
  const BlueFrance({
    required super.strong,
    required super.softest,
    required super.light,
    required super.lighter,
    required super.lightest,
    required this.main,
    required this.inverted,
  });

  const BlueFrance.light()
      : this(
          strong: ColorPalette.blueFrance113,
          main: ColorPalette.blueFrance525,
          softest: ColorPalette.blueFrance850,
          light: ColorPalette.blueFrance925,
          lighter: ColorPalette.blueFrance950,
          lightest: ColorPalette.blueFrance975,
          inverted: ColorPalette.blueFrance975,
        );

  const BlueFrance.dark()
      : this(
          strong: ColorPalette.blueFrance625,
          main: ColorPalette.blueFrance525,
          softest: ColorPalette.blueFrance200,
          light: ColorPalette.blueFrance125,
          lighter: ColorPalette.blueFrance100,
          lightest: ColorPalette.blueFrance75,
          inverted: ColorPalette.blueFrance113,
        );

  factory BlueFrance.lerp(BlueFrance a, BlueFrance b, double t) {
    return BlueFrance(
      strong: Color.lerp(a.strong, b.strong, t)!,
      main: Color.lerp(a.main, b.main, t)!,
      softest: Color.lerp(a.softest, b.softest, t)!,
      light: Color.lerp(a.light, b.light, t)!,
      lighter: Color.lerp(a.lighter, b.lighter, t)!,
      lightest: Color.lerp(a.lightest, b.lightest, t)!,
      inverted: Color.lerp(a.inverted, b.inverted, t)!,
    );
  }

  final Color main;
  final Color inverted;

  @override
  List<NamedProperty<Color>> get props {
    return [
      ...super.props,
      NamedProperty('main', main),
      NamedProperty('inverted', inverted),
    ];
  }
}

@immutable
class RedMarianne extends DSFRColor {
  const RedMarianne({
    required super.strong,
    required super.softest,
    required super.light,
    required super.lighter,
    required super.lightest,
    required this.main,
  });

  const RedMarianne.light()
      : this(
          strong: ColorPalette.redMarianne425,
          main: ColorPalette.redMarianne472,
          softest: ColorPalette.redMarianne850,
          light: ColorPalette.redMarianne925,
          lighter: ColorPalette.redMarianne950,
          lightest: ColorPalette.redMarianne975,
        );

  const RedMarianne.dark()
      : this(
          strong: ColorPalette.redMarianne625,
          main: ColorPalette.redMarianne472,
          softest: ColorPalette.redMarianne200,
          light: ColorPalette.redMarianne125,
          lighter: ColorPalette.redMarianne100,
          lightest: ColorPalette.redMarianne75,
        );

  factory RedMarianne.lerp(RedMarianne a, RedMarianne b, double t) {
    return RedMarianne(
      strong: Color.lerp(a.strong, b.strong, t)!,
      main: Color.lerp(a.main, b.main, t)!,
      softest: Color.lerp(a.softest, b.softest, t)!,
      light: Color.lerp(a.light, b.light, t)!,
      lighter: Color.lerp(a.lighter, b.lighter, t)!,
      lightest: Color.lerp(a.lightest, b.lightest, t)!,
    );
  }

  final Color main;

  @override
  List<NamedProperty<Color>> get props {
    return [
      ...super.props,
      NamedProperty('main', main),
    ];
  }
}

@immutable
class Grey extends DSFRColor {
  const Grey({
    required super.strong,
    required super.softest,
    required super.light,
    required super.lighter,
    required super.lightest,
    required this.black,
    required this.strongest,
    required this.soft,
    required this.distinct,
    required this.white,
    required this.raised,
    required this.overlap,
    required this.lifted,
    required this.altRaised,
    required this.altOverlap,
    required this.contrastRaised,
    required this.contrastOverlap,
  });

  const Grey.light()
      : this(
          strong: ColorPalette.grey425,
          softest: ColorPalette.grey850,
          light: ColorPalette.grey925,
          lighter: ColorPalette.grey950,
          lightest: ColorPalette.grey975,
          black: ColorPalette.grey50,
          strongest: ColorPalette.grey200,
          soft: ColorPalette.grey625,
          distinct: ColorPalette.grey900,
          white: ColorPalette.grey1000,
          raised: ColorPalette.grey1000,
          overlap: ColorPalette.grey1000,
          lifted: ColorPalette.grey1000,
          altRaised: ColorPalette.grey975,
          altOverlap: ColorPalette.grey975,
          contrastRaised: ColorPalette.grey950,
          contrastOverlap: ColorPalette.grey950,
        );

  const Grey.dark()
      : this(
          strong: ColorPalette.grey625,
          softest: ColorPalette.grey200,
          light: ColorPalette.grey125,
          lighter: ColorPalette.grey100,
          lightest: ColorPalette.grey75,
          black: ColorPalette.grey1000,
          strongest: ColorPalette.grey850,
          soft: ColorPalette.grey425,
          distinct: ColorPalette.grey175,
          white: ColorPalette.grey50,
          raised: ColorPalette.grey75,
          overlap: ColorPalette.grey100,
          lifted: ColorPalette.grey75,
          altRaised: ColorPalette.grey100,
          altOverlap: ColorPalette.grey125,
          contrastRaised: ColorPalette.grey125,
          contrastOverlap: ColorPalette.grey150,
        );

  factory Grey.lerp(Grey a, Grey b, double t) {
    return Grey(
      strong: Color.lerp(a.strong, b.strong, t)!,
      softest: Color.lerp(a.softest, b.softest, t)!,
      light: Color.lerp(a.light, b.light, t)!,
      lighter: Color.lerp(a.lighter, b.lighter, t)!,
      lightest: Color.lerp(a.lightest, b.lightest, t)!,
      black: Color.lerp(a.black, b.black, t)!,
      strongest: Color.lerp(a.strongest, b.strongest, t)!,
      soft: Color.lerp(a.soft, b.soft, t)!,
      distinct: Color.lerp(a.distinct, b.distinct, t)!,
      white: Color.lerp(a.white, b.white, t)!,
      raised: Color.lerp(a.raised, b.raised, t)!,
      overlap: Color.lerp(a.overlap, b.overlap, t)!,
      lifted: Color.lerp(a.lifted, b.lifted, t)!,
      altRaised: Color.lerp(a.altRaised, b.altRaised, t)!,
      altOverlap: Color.lerp(a.altOverlap, b.altOverlap, t)!,
      contrastRaised: Color.lerp(a.contrastRaised, b.contrastRaised, t)!,
      contrastOverlap: Color.lerp(a.contrastOverlap, b.contrastOverlap, t)!,
    );
  }

  final Color black;
  final Color strongest;
  final Color soft;
  final Color distinct;
  final Color white;
  final Color raised;
  final Color overlap;
  final Color lifted;
  final Color altRaised;
  final Color altOverlap;
  final Color contrastRaised;
  final Color contrastOverlap;

  @override
  List<NamedProperty<Color>> get props {
    return [
      ...super.props,
      NamedProperty('black', black),
      NamedProperty('strongest', strongest),
      NamedProperty('soft', soft),
      NamedProperty('distinct', distinct),
      NamedProperty('white', white),
      NamedProperty('raised', raised),
      NamedProperty('overlap', overlap),
      NamedProperty('lifted', lifted),
      NamedProperty('altRaised', altRaised),
      NamedProperty('altOverlap', altOverlap),
      NamedProperty('contrastRaised', contrastRaised),
      NamedProperty('contrastOverlap', contrastOverlap),
    ];
  }
}
