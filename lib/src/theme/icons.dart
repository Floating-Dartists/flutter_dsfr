import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/utils/named_property.dart';

/// DSFRIcons, use the remix icon icon pack
///
/// https://remixicon.com/
@immutable
class DSFRIcons {
  const DSFRIcons._();

  static const fontFamily = 'Remix Icon';
  static const packageName = 'flutter_dsfr';

  static const errorWarningFill =
      IconData(0xECA0, fontFamily: fontFamily, fontPackage: packageName);
  static const errorWarningLine =
      IconData(0xECA1, fontFamily: fontFamily, fontPackage: packageName);
  static const checkboxCircleFill =
      IconData(0xEB80, fontFamily: fontFamily, fontPackage: packageName);
  static const checkboxCircleLine =
      IconData(0xEB81, fontFamily: fontFamily, fontPackage: packageName);
  static const info =
      IconData(0xEE58, fontFamily: fontFamily, fontPackage: packageName);
  static const alertFill =
      IconData(0xEA20, fontFamily: fontFamily, fontPackage: packageName);
  static const alertLine =
      IconData(0xEA21, fontFamily: fontFamily, fontPackage: packageName);
  static const closeFill =
      IconData(0xEB98, fontFamily: fontFamily, fontPackage: packageName);
  static const flashLightFill =
      IconData(0xED3C, fontFamily: fontFamily, fontPackage: packageName);
  static const settings3Line =
      IconData(0xF0E6, fontFamily: fontFamily, fontPackage: packageName);
  static const add =
      IconData(0xEA12, fontFamily: fontFamily, fontPackage: packageName);
  static const substract =
      IconData(0xF1AE, fontFamily: fontFamily, fontPackage: packageName);

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
