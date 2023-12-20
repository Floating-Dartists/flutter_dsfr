import 'package:flutter/material.dart';

@immutable
class NamedProperty<T> {
  const NamedProperty(this.name, this.property);

  final String name;
  final T property;
}
