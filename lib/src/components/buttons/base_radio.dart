import 'package:flutter/material.dart';

abstract class DSFRBaseRadio<T> extends StatelessWidget {
  const DSFRBaseRadio({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.description,
    this.hasError = false,
  });

  final String label;
  final String? description;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool hasError;

  bool get isSelected => groupValue == value;
  bool get disabled => onChanged == null;
}
