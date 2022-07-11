import 'package:flutter/material.dart';

import '../utils/named_property.dart';

/// DSFRIcons, use the remix icon icon pack
///
/// https://remixicon.com/
@immutable
class DSFRIcons {
  const DSFRIcons._();

  static const String _fontFamily = 'Remix Icon';
  static String? get fontFamily => _packageName;
  static String? _packageName = 'flutter_dsfr';
  static String? get packageName => _packageName;

  @visibleForTesting
  static set packageName(String? value) => _packageName = value;

  static IconData error = IconData(
    0xECA0,
    fontFamily: _fontFamily,
    fontPackage: _packageName,
  );
  static IconData success = IconData(
    0xEB80,
    fontFamily: _fontFamily,
    fontPackage: _packageName,
  );
  static IconData info = IconData(
    0xEE58,
    fontFamily: _fontFamily,
    fontPackage: _packageName,
  );
  static IconData warning = IconData(
    0xEA20,
    fontFamily: _fontFamily,
    fontPackage: _packageName,
  );
  static IconData closeFill = IconData(
    0xEB98,
    fontFamily: _fontFamily,
    fontPackage: _packageName,
  );
  static IconData add = IconData(
    0xEA12,
    fontFamily: _fontFamily,
    fontPackage: _packageName,
  );
  static IconData substract = IconData(
    0xF1AE,
    fontFamily: _fontFamily,
    fontPackage: _packageName,
  );
  static IconData flashLightFill = IconData(
    0xED3C,
    fontFamily: _fontFamily,
    fontPackage: _packageName,
  );

  @visibleForTesting
  static List<NamedProperty<IconData>> get props => [
        NamedProperty('error', error),
        NamedProperty('success', success),
        NamedProperty('info', info),
        NamedProperty('warning', warning),
        NamedProperty('closeFill', closeFill),
        NamedProperty('add', add),
        NamedProperty('substract', substract),
        NamedProperty('flashLightFill', flashLightFill),
      ];
}
