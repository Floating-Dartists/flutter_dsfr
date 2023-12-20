import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class DSFRRadioGroupFormField<T> extends FormField<T> {
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
            final dsfrColors = DSFRThemeData.of(context).colors;
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

  final String? successMessage;
}

class _FormMessage extends StatelessWidget {
  const _FormMessage({
    required this.icon,
    required this.message,
    required this.color,
  });

  final IconData icon;
  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrTypography = dsfrTheme.typography;
    final dsfrSizes = dsfrTheme.sizes;

    return Padding(
      padding: EdgeInsets.only(top: dsfrSizes.v3),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
            size: (dsfrTypography.mention.fontSize ?? 12.0) + 2,
          ),
          const SizedBox(width: 2),
          Text(
            message,
            style: dsfrTypography.mention
                .copyWith(color: color, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
