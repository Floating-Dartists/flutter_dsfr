import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/src/theme/colors/colors.dart';
import 'package:flutter_dsfr/src/theme/icons.dart';

enum DSFRBadgeType {
  error(_errorText, _error, DSFRIcons.errorWarningFill),
  success(_successText, _success, DSFRIcons.checkboxCircleFill),
  info(_infoText, _info, DSFRIcons.info),
  warning(_warningText, _warning, DSFRIcons.alertFill),
  news(_newsText, _news, DSFRIcons.flashLightFill);

  const DSFRBadgeType(this.textColor, this.color, this.icon);

  final ColorFetcher textColor;
  final ColorFetcher color;
  final IconData icon;

  static Color _errorText(DSFRColors colors) => colors.error.strong;
  static Color _error(DSFRColors colors) => colors.error.lighter;

  static Color _successText(DSFRColors colors) => colors.success.strong;
  static Color _success(DSFRColors colors) => colors.success.lighter;

  static Color _infoText(DSFRColors colors) => colors.info.strong;
  static Color _info(DSFRColors colors) => colors.info.lighter;

  static Color _warningText(DSFRColors colors) => colors.warning.strong;
  static Color _warning(DSFRColors colors) => colors.warning.lighter;

  static Color _newsText(DSFRColors colors) => colors.news;
  static Color _news(DSFRColors colors) => colors.badgeNews;
}
