import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/buttons/base_radio.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217088553/Boutons+radio+-+Radio+button
class DSFRRadioButton<T> extends DSFRBaseRadio<T> {
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

  final bool isValid;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final dsfrTypography = dsfrTheme.typography;
    final spacings = dsfrTheme.spacings.radioSize;

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
        radioTheme: RadioThemeData(splashRadius: spacings.size),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
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
          SizedBox(width: spacings.spacing),
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
            style: dsfrTypography.regular.copyWith(color: foregroundColor),
          ),
        ],
      ),
    );
  }
}
