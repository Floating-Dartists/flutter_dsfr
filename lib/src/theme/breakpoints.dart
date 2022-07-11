import 'package:flutter/material.dart';

/// Breakpoints value for different screen sizes.
///
/// Anything above [Breakpoints.lg] (>= 1248.0) will be considered as being
/// "xl".
@immutable
class Breakpoints {
  const Breakpoints._();

  static const xs = 575.0;
  static const sm = 767.0;
  static const md = 991.0;
  static const lg = 1247.0;
}
