import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';

class DSFRRadioGroupFormField<T> extends FormField<T> {
  final String? successMessage;

  DSFRRadioGroupFormField({
    super.key,
    required String title,
    required ValueChanged<T?>? onChanged,
    required List<DSFRRadioData<T>> items,
    String? description,
    super.onSaved,
    super.validator,
    super.autovalidateMode,
    this.successMessage,
  }) : super(
          builder: (state) {
            final context = state.context;
            final dsfrColors = DSFRColors.of(context);
            final disabled = onChanged == null;
            final hasError = state.hasError && !disabled;
            final isValid =
                state.isValid && successMessage != null && !disabled;

            void onChangedHandler(T? value) {
              state.didChange(value);
              onChanged?.call(value);
            }

            return UnmanagedRestorationScope(
              bucket: state.bucket,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DSFRRadioGroup<T>(
                    title: title,
                    description: description,
                    onChanged: onChangedHandler,
                    items: items,
                    hasError: state.hasError,
                    isValid: isValid,
                  ),
                  if (hasError)
                    _FormMessage(
                      icon: DSFRIcons.alertLine,
                      message: state.errorText!,
                      color: dsfrColors.error,
                    ),
                  if (isValid)
                    _FormMessage(
                      icon: DSFRIcons.checkboxCircleLine,
                      message: successMessage,
                      color: dsfrColors.success,
                    ),
                ],
              ),
            );
          },
        );
}

class _FormMessage extends StatelessWidget {
  final IconData icon;
  final String message;
  final Color color;

  const _FormMessage({
    required this.icon,
    required this.message,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrTypography = DSFRTypography.of(context);
    final dsfrSizes = DSFRSizes.of(context);

    return Padding(
      padding: EdgeInsets.only(top: dsfrSizes.v3),
      child: Row(
        children: [
          DSFRIcon(
            icon,
            color: color,
            size: (dsfrTypography.frErrorText.fontSize ?? 12.0) + 2,
          ),
          const SizedBox(width: 2.0),
          Text(
            message,
            style: dsfrTypography.frErrorText.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
