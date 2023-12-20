import 'package:flutter/material.dart';

@immutable
class NamedProperty<T> {
  const NamedProperty(this.name, this.property);

  final String name;
  final T property;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamedProperty<T> &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          property == other.property;

  @override
  int get hashCode => Object.hash(runtimeType, name, property);
}

@immutable
mixin NamedPropertiesMixin<T> {
  @visibleForTesting
  List<NamedProperty<T>> get props;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamedPropertiesMixin<T> &&
          runtimeType == other.runtimeType &&
          _equals<T>(props, other.props);

  @override
  int get hashCode => Object.hashAll([runtimeType, ...props]);
}

bool _equals<T>(List<NamedProperty<T>> list1, List<NamedProperty<T>> list2) {
  if (identical(list1, list2)) return true;
  if (list1.length != list2.length) return false;

  for (var i = 0; i < list1.length; i++) {
    final item1 = list1[i];
    final item2 = list2[i];
    if (item1.name != item2.name) return false;
  }

  return true;
}
