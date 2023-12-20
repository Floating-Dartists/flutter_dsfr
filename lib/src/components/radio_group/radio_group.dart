import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

@immutable
class DSFRRadioData<T> {
  const DSFRRadioData({
    required this.label,
    required this.value,
    this.description,
  });

  final String label;
  final String? description;
  final T value;

  DSFRRadioData<T> copyWith({
    String? label,
    String? description,
    T? value,
    bool? hasError,
  }) {
    return DSFRRadioData<T>(
      label: label ?? this.label,
      description: description ?? this.description,
      value: value ?? this.value,
    );
  }
}

class DSFRRadioGroup<T> extends StatefulWidget {
  const DSFRRadioGroup({
    super.key,
    required this.title,
    required this.onChanged,
    required this.items,
    this.direction = Axis.vertical,
    this.description,
    this.hasError = false,
    this.isValid = false,
  }) : assert(items.length > 0);

  final String title;
  final String? description;
  final ValueChanged<T?>? onChanged;
  final List<DSFRRadioData<T>> items;
  final Axis direction;
  final bool hasError;
  final bool isValid;

  @override
  State<DSFRRadioGroup<T>> createState() => _DSFRRadioGroupState<T>();
}

class _DSFRRadioGroupState<T> extends State<DSFRRadioGroup<T>> {
  T? _groupValue;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrTypography = dsfrTheme.typography;
    final dsfrColors = dsfrTheme.colors;
    final dsfrSizes = dsfrTheme.sizes;
    final description = widget.description;

    final disabled = widget.onChanged == null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: widget.title),
              if (description != null)
                TextSpan(
                  text: '\n$description',
                  style: dsfrTypography.mention.copyWith(
                    color: dsfrColors.mentionGrey,
                  ),
                ),
            ],
          ),
          style: dsfrTypography.regular.copyWith(color: dsfrColors.titleGrey),
        ),
        SizedBox(height: dsfrSizes.v3),
        Wrap(
          direction: widget.direction,
          runSpacing: dsfrSizes.v3,
          spacing: dsfrSizes.v3,
          children: widget.items
              .map<DSFRRadioButton<T>>(
                (e) => DSFRRadioButton(
                  label: e.label,
                  description: e.description,
                  value: e.value,
                  groupValue: _groupValue,
                  onChanged: disabled ? null : _onChangedHandler,
                  hasError: widget.hasError,
                  isValid: widget.isValid,
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  void _onChangedHandler(T? value) {
    setState(() => _groupValue = value);
    widget.onChanged?.call(value);
  }
}
