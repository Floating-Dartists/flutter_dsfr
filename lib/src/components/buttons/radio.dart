import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/sizes.dart';
import '../../theme/typography.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217088553/Boutons+radio+-+Radio+button
class DSFRRadioButton<T> extends StatelessWidget {
  final String label;
  final String? description;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool hasError;
  final bool isValid;

  const DSFRRadioButton({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.description,
    this.hasError = false,
    this.isValid = false,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrTypography = DSFRTypography.of(context);
    final dsfrSizes = DSFRSizes.of(context);
    final disabled = onChanged == null;

    final Color foregroundColor;
    if (disabled) {
      foregroundColor = dsfrColors.disabledGrey;
    } else if (hasError) {
      foregroundColor = dsfrColors.defaultError;
    } else if (isValid) {
      foregroundColor = dsfrColors.defaultSuccess;
    } else {
      foregroundColor = dsfrColors.highGrey;
    }

    final Color descriptionColor;
    if (disabled) {
      descriptionColor = dsfrColors.disabledGrey;
    } else {
      descriptionColor = dsfrColors.mentionGrey;
    }

    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: foregroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio<T>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: dsfrColors.backgroundActiveBlueFrance,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
          ),
          SizedBox(width: dsfrSizes.w4),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: label),
                if (description != null)
                  TextSpan(
                    text: '\n$description',
                    style: dsfrTypography.mention
                        .copyWith(color: descriptionColor),
                  ),
              ],
            ),
            style: dsfrTypography.body.copyWith(color: foregroundColor),
          ),
        ],
      ),
    );
  }
}
