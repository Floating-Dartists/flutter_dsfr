import 'package:flutter/material.dart';

@immutable
class DSFRColors extends ThemeExtension<DSFRColors> {
  final Color? frConnectHover;
  final Color? frConnectActive;
  final Color? frConnectBackground;

  const DSFRColors._({
    required this.frConnectHover,
    required this.frConnectActive,
    required this.frConnectBackground,
  });

  const DSFRColors.light()
      : this._(
          frConnectHover: const Color(0xFF1212ff),
          frConnectActive: const Color(0xFF2323ff),
          frConnectBackground: const Color(0xFF000091),
        );

  @override
  ThemeExtension<DSFRColors> copyWith() {
    return DSFRColors._(
      frConnectHover: frConnectHover,
      frConnectActive: frConnectActive,
      frConnectBackground: frConnectBackground,
    );
  }

  @override
  ThemeExtension<DSFRColors> lerp(ThemeExtension<DSFRColors>? other, double t) {
    if (other is! DSFRColors) {
      return this;
    }
    return DSFRColors._(
      frConnectHover: Color.lerp(frConnectHover, other.frConnectHover, t),
      frConnectActive: Color.lerp(frConnectActive, other.frConnectActive, t),
      frConnectBackground:
          Color.lerp(frConnectBackground, other.frConnectBackground, t),
    );
  }
}
