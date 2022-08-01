import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'base_radio.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217088553/Boutons+radio+-+Radio+button
class DSFRRadioButton<T> extends DSFRBaseRadio<T> {
  final bool isValid;

  const DSFRRadioButton({
    super.key,
    required super.label,
    required super.value,
    required super.groupValue,
    required super.onChanged,
    super.description,
    super.hasError = false,
    this.isValid = false,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrTypography = DSFRTypography.of(context);
    final dsfrSizes = DSFRSizes.of(context);

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
            activeColor: dsfrColors.activeBlueFrance,
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
            style: dsfrTypography.standard.copyWith(color: foregroundColor),
          ),
        ],
      ),
    );
  }
}
