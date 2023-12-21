import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/theme/colors/palette.dart';
import 'package:flutter_dsfr/src/utils/named_property.dart';

part 'blue_france.dart';
part 'error.dart';
part 'focus.dart';
part 'green_bourgeon.dart';
part 'green_emeraude.dart';
part 'green_tilleul_verveine.dart';
part 'grey.dart';
part 'info.dart';
part 'red_marianne.dart';
part 'success.dart';
part 'warning.dart';

typedef ColorFetcher = Color Function(DSFRColors dsfrColors);

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
    required this.success,
    required this.warning,
    required this.news,
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
    required this.error,
    required this.grey,
    required this.info,
    required this.focus,
    required this.greenTilleulVerveine,
    required this.greenBourgeon,
    required this.greenEmeraude,
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
          news: ColorPalette.yellowTounesolSun407,
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
          // ===
          blueFrance: const BlueFrance.light(),
          redMarianne: const RedMarianne.light(),
          grey: const Grey.light(),
          error: const ErrorColor.light(),
          success: const SuccessColor.light(),
          warning: const WarningColor.light(),
          info: const InfoColor.light(),
          focus: const FocusColor.light(),
          greenTilleulVerveine: const GreenTilleulVerveine.light(),
          greenBourgeon: const GreenBourgeon.light(),
          greenEmeraude: const GreenEmeraude.light(),
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
          news: ColorPalette.yellowTournesolMoon922,
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
          // ===
          blueFrance: const BlueFrance.dark(),
          redMarianne: const RedMarianne.dark(),
          grey: const Grey.dark(),
          error: const ErrorColor.dark(),
          success: const SuccessColor.dark(),
          warning: const WarningColor.dark(),
          info: const InfoColor.dark(),
          focus: const FocusColor.dark(),
          greenTilleulVerveine: const GreenTilleulVerveine.dark(),
          greenBourgeon: const GreenBourgeon.dark(),
          greenEmeraude: const GreenEmeraude.dark(),
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
  final Color news;
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
  final ErrorColor error;
  final SuccessColor success;
  final WarningColor warning;
  final InfoColor info;
  final FocusColor focus;
  final GreenTilleulVerveine greenTilleulVerveine;
  final GreenBourgeon greenBourgeon;
  final GreenEmeraude greenEmeraude;

  @override
  DSFRColors copyWith({
    Color? frConnectHover,
    Color? frConnectActive,
    Color? frConnectBackground,
    Color? backgroundActionHighBlueFrance,
    Color? backgroundActionHighBlueFranceHover,
    Color? backgroundActionHighBlueFranceActive,
    Color? activeBlueFrance,
    Color? borderActionHighBlueFrance,
    Color? blockColorHover,
    Color? blockColorActive,
    Color? defaultGrey,
    Color? backgroundDisabledGrey,
    Color? textDisabledGrey,
    Color? alertsBackground,
    Color? alertsCloseButtonIcon,
    Color? hover,
    Color? active,
    Color? splash,
    Color? text,
    Color? accordionBorder,
    Color? news,
    Color? badgeError,
    Color? badgeSuccess,
    Color? badgeInfo,
    Color? badgeWarning,
    Color? badgeNews,
    Color? banner,
    Color? g200,
    Color? g800,
    Color? highGrey,
    Color? disabledGrey,
    Color? mentionGrey,
    Color? defaultError,
    Color? defaultSuccess,
    Color? titleGrey,
    // ===
    BlueFrance? blueFrance,
    RedMarianne? redMarianne,
    Grey? grey,
    ErrorColor? error,
    SuccessColor? success,
    WarningColor? warning,
    InfoColor? info,
    FocusColor? focus,
    GreenTilleulVerveine? greenTilleulVerveine,
    GreenBourgeon? greenBourgeon,
    GreenEmeraude? greenEmeraude,
  }) {
    return DSFRColors._(
      frConnectHover: frConnectHover ?? this.frConnectHover,
      frConnectActive: frConnectActive ?? this.frConnectActive,
      frConnectBackground: frConnectBackground ?? this.frConnectBackground,
      backgroundActionHighBlueFrance:
          backgroundActionHighBlueFrance ?? this.backgroundActionHighBlueFrance,
      backgroundActionHighBlueFranceHover:
          backgroundActionHighBlueFranceHover ??
              this.backgroundActionHighBlueFranceHover,
      backgroundActionHighBlueFranceActive:
          backgroundActionHighBlueFranceActive ??
              this.backgroundActionHighBlueFranceActive,
      activeBlueFrance: activeBlueFrance ?? this.activeBlueFrance,
      borderActionHighBlueFrance:
          borderActionHighBlueFrance ?? this.borderActionHighBlueFrance,
      blockColorHover: blockColorHover ?? this.blockColorHover,
      blockColorActive: blockColorActive ?? this.blockColorActive,
      defaultGrey: defaultGrey ?? this.defaultGrey,
      backgroundDisabledGrey:
          backgroundDisabledGrey ?? this.backgroundDisabledGrey,
      textDisabledGrey: textDisabledGrey ?? this.textDisabledGrey,
      alertsBackground: alertsBackground ?? this.alertsBackground,
      alertsCloseButtonIcon:
          alertsCloseButtonIcon ?? this.alertsCloseButtonIcon,
      hover: hover ?? this.hover,
      active: active ?? this.active,
      splash: splash ?? this.splash,
      text: text ?? this.text,
      accordionBorder: accordionBorder ?? this.accordionBorder,
      news: news ?? this.news,
      badgeNews: badgeNews ?? this.badgeNews,
      banner: banner ?? this.banner,
      g200: g200 ?? this.g200,
      g800: g800 ?? this.g800,
      highGrey: highGrey ?? this.highGrey,
      disabledGrey: disabledGrey ?? this.disabledGrey,
      mentionGrey: mentionGrey ?? this.mentionGrey,
      defaultError: defaultError ?? this.defaultError,
      defaultSuccess: defaultSuccess ?? this.defaultSuccess,
      titleGrey: titleGrey ?? this.titleGrey,
      // ===
      blueFrance: blueFrance ?? this.blueFrance,
      redMarianne: redMarianne ?? this.redMarianne,
      grey: grey ?? this.grey,
      error: error ?? this.error,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      focus: focus ?? this.focus,
      greenTilleulVerveine: greenTilleulVerveine ?? this.greenTilleulVerveine,
      greenBourgeon: greenBourgeon ?? this.greenBourgeon,
      greenEmeraude: greenEmeraude ?? this.greenEmeraude,
    );
  }

  @override
  DSFRColors lerp(ThemeExtension<DSFRColors>? other, double t) {
    if (other is! DSFRColors) return this;
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
      news: Color.lerp(news, other.news, t)!,
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
      error: ErrorColor.lerp(error, other.error, t),
      success: SuccessColor.lerp(success, other.success, t),
      warning: WarningColor.lerp(warning, other.warning, t),
      info: InfoColor.lerp(info, other.info, t),
      focus: FocusColor.lerp(focus, other.focus, t),
      greenTilleulVerveine: GreenTilleulVerveine.lerp(
        greenTilleulVerveine,
        other.greenTilleulVerveine,
        t,
      ),
      greenBourgeon: GreenBourgeon.lerp(greenBourgeon, other.greenBourgeon, t),
      greenEmeraude: GreenEmeraude.lerp(greenEmeraude, other.greenEmeraude, t),
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
        NamedProperty('news', news),
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
        NamedProperty('grey', grey),
        NamedProperty('error', error),
        NamedProperty('success', success),
        NamedProperty('warning', warning),
        NamedProperty('info', info),
        NamedProperty('focus', focus),
        NamedProperty('greenTilleulVerveine', greenTilleulVerveine),
        NamedProperty('greenBourgeon', greenBourgeon),
        NamedProperty('greenEmeraude', greenEmeraude),
      ];
}

@visibleForTesting
@immutable
abstract class DSFRColor with NamedPropertiesMixin<Color> {
  const DSFRColor();
}
