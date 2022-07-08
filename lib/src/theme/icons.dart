import 'package:flutter/material.dart';

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
}
