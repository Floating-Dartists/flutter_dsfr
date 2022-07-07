import 'package:flutter/material.dart';

/// DSFRIcons, use the remix icon icon pack
///
/// https://remixicon.com/
abstract class DSFRIcons {
  static const _kFontFam = 'remixicon';

  static const IconData error = IconData(
    0xECA0,
    fontFamily: _kFontFam,
  );
  static const IconData success = IconData(
    0xEB80,
    fontFamily: _kFontFam,
  );
  static const IconData info = IconData(
    0xEE58,
    fontFamily: _kFontFam,
  );
  static const IconData warning = IconData(
    0xEA20,
    fontFamily: _kFontFam,
  );
}
