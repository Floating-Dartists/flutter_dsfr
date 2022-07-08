import 'package:flutter/material.dart';

import '../utils/named_property.dart';
import 'palette.dart';

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
  final Color error;
  final Color info;
  final Color success;
  final Color warning;
  final Color alertsBackground;
  final Color alertsCloseButtonIcon;
  final Color alertsCloseButtonHover;
  final Color alertsCloseButtonHighlight;
  final Color alertsCloseButtonSplash;
  final Color text;

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
    required this.error,
    required this.info,
    required this.success,
    required this.warning,
    required this.alertsBackground,
    required this.backgroundDisabledGrey,
    required this.textDisabledGrey,
    required this.alertsCloseButtonIcon,
    required this.alertsCloseButtonHover,
    required this.alertsCloseButtonHighlight,
    required this.alertsCloseButtonSplash,
    required this.text,
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
          error: ColorPalette.error,
          success: ColorPalette.success,
          info: ColorPalette.info,
          warning: ColorPalette.warning,
          alertsBackground: ColorPalette.grey1000,
          backgroundDisabledGrey: const Color(0xFFe5e5e5),
          textDisabledGrey: const Color(0xFF929292),
          alertsCloseButtonIcon: ColorPalette.blueFranceSun113,
          alertsCloseButtonHover: ColorPalette.grey950,
          alertsCloseButtonHighlight: ColorPalette.grey975,
          alertsCloseButtonSplash: ColorPalette.transparent,
          text: ColorPalette.black,
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
          error: ColorPalette.errorDarkMode,
          success: ColorPalette.successDarkMode,
          info: ColorPalette.infoDarkMode,
          warning: ColorPalette.warningDarkMode,
          alertsBackground: ColorPalette.grey50,
          backgroundDisabledGrey: const Color(0xFF2a2a2a),
          textDisabledGrey: const Color.fromRGBO(102, 102, 102, 1),
          alertsCloseButtonIcon: ColorPalette.blueFrance625,
          alertsCloseButtonHover: ColorPalette.grey950,
          alertsCloseButtonHighlight: ColorPalette.grey975,
          alertsCloseButtonSplash: ColorPalette.transparent,
          text: ColorPalette.white,
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
      error: error,
      success: success,
      info: info,
      warning: warning,
      alertsBackground: alertsBackground,
      alertsCloseButtonIcon: alertsCloseButtonIcon,
      alertsCloseButtonHover: alertsCloseButtonHover,
      alertsCloseButtonHighlight: alertsCloseButtonHighlight,
      alertsCloseButtonSplash: alertsCloseButtonSplash,
      text: text,
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
      error: Color.lerp(error, other.error, t)!,
      info: Color.lerp(info, other.info, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      alertsBackground:
          Color.lerp(alertsBackground, other.alertsBackground, t)!,
      alertsCloseButtonIcon:
          Color.lerp(alertsCloseButtonIcon, other.alertsCloseButtonIcon, t)!,
      alertsCloseButtonHover:
          Color.lerp(alertsCloseButtonHover, other.textDisabledGrey, t)!,
      alertsCloseButtonHighlight:
          Color.lerp(alertsCloseButtonHighlight, other.textDisabledGrey, t)!,
      alertsCloseButtonSplash:
          Color.lerp(alertsCloseButtonSplash, other.textDisabledGrey, t)!,
      text: Color.lerp(text, other.text, t)!,
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
        NamedProperty('error', error),
        NamedProperty('success', success),
        NamedProperty('info', info),
        NamedProperty('warning', warning),
        NamedProperty('alertsBackground', alertsBackground),
        NamedProperty('alertsCloseButtonIcon', alertsCloseButtonIcon),
        NamedProperty('alertsCloseButtonHover', alertsCloseButtonHover),
        NamedProperty('alertsCloseButtonHighlight', alertsCloseButtonHighlight),
        NamedProperty('alertsCloseButtonSplash', alertsCloseButtonSplash),
        NamedProperty('text', text),
      ];
}
