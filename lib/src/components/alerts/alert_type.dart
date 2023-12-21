import 'package:flutter/widgets.dart';
import 'package:flutter_dsfr/src/theme/colors.dart';
import 'package:flutter_dsfr/src/theme/icons.dart';

enum DSFRAlertType {
  error(_error, DSFRIcons.errorWarningFill),
  success(_success, DSFRIcons.checkboxCircleFill),
  info(_info, DSFRIcons.info),
  warning(_warning, DSFRIcons.alertFill);

  const DSFRAlertType(this.color, this.icon);

  final ColorFetcher color;
  final IconData icon;

  static Color _error(DSFRColors colors) => colors.error;
  static Color _success(DSFRColors colors) => colors.success;
  static Color _info(DSFRColors colors) => colors.info.strong;
  static Color _warning(DSFRColors colors) => colors.warning.strong;
}
