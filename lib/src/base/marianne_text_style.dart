import 'package:flutter/material.dart';

@immutable
class MarianneTextStyle extends TextStyle {
  const MarianneTextStyle({
    super.fontSize,
    super.color,
    super.fontWeight,
  }) : super(
          fontFamily: 'Marianne',
          package: 'flutter_dsfr',
        );
}
