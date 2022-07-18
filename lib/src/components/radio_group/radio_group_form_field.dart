import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/typography.dart';
import 'radio_group.dart';

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
  }) : super(
          builder: (state) {
            final context = state.context;
            final dsfrTypography = DSFRTypography.of(context);
            final dsfrColors = DSFRColors.of(context);

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
                  ),
                  if (state.hasError)
                    Text(
                      state.errorText!,
                      style: dsfrTypography.frErrorText
                          .copyWith(color: dsfrColors.error),
                    ),
                ],
              ),
            );
          },
        );
}
