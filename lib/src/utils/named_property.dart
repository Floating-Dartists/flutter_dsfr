import 'package:flutter/material.dart';

@immutable
class NamedProperty<T> {
  final String name;
  final T property;

  const NamedProperty(this.name, this.property);
}
