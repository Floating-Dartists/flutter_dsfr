import 'package:flutter/material.dart';

import '../utils/named_property.dart';

/// DSFRIcons, use the remix icon icon pack
///
/// https://remixicon.com/
@immutable
class DSFRIcons {
  const DSFRIcons._();

  static const fontFamily = 'Remix Icon';
  static String? _packageName = 'flutter_dsfr';
  static String? get packageName => _packageName;

  @visibleForTesting
  static set packageName(String? value) => _packageName = value;

  static const errorWarningFill = IconData(0xECA0, fontFamily: fontFamily);
  static const errorWarningLine = IconData(0xECA1, fontFamily: fontFamily);
  static const checkboxCircleFill = IconData(0xEB80, fontFamily: fontFamily);
  static const checkboxCircleLine = IconData(0xEB81, fontFamily: fontFamily);
  static const info = IconData(0xEE58, fontFamily: fontFamily);
  static const alertFill = IconData(0xEA20, fontFamily: fontFamily);
  static const alertLine = IconData(0xEA21, fontFamily: fontFamily);
  static const closeFill = IconData(0xEB98, fontFamily: fontFamily);
  static const flashLightFill = IconData(0xED3C, fontFamily: fontFamily);
  static const settings3Line = IconData(0xF0E6, fontFamily: fontFamily);
  static const add = IconData(0xEA12, fontFamily: fontFamily);
  static const substract = IconData(0xF1AE, fontFamily: fontFamily);

  @visibleForTesting
  static List<NamedProperty<IconData>> get props => const [
        NamedProperty('error-warning-fill', errorWarningFill),
        NamedProperty('error-warning-line', errorWarningLine),
        NamedProperty('checkbox-circle-fill', checkboxCircleFill),
        NamedProperty('checkbox-circle-line', checkboxCircleLine),
        NamedProperty('info', info),
        NamedProperty('alert-fill', alertFill),
        NamedProperty('alert-line', alertLine),
        NamedProperty('close-fill', closeFill),
        NamedProperty('flash-light-fill', flashLightFill),
        NamedProperty('settings-3-line', settings3Line),
        NamedProperty('add', add),
        NamedProperty('substract', substract),
      ];
}
