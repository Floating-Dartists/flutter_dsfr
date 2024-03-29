import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/buttons/base_radio.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/368935129/Boutons+radio+riches+-+Radio+buttons+extended
class DSFRRadioRich<T> extends DSFRBaseRadio<T> {
  const DSFRRadioRich({
    super.key,
    required super.label,
    required super.value,
    required super.groupValue,
    required super.onChanged,
    super.description,
    super.hasError = false,
    required this.image,
  });

  final Widget image;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final dsfrTypography = dsfrTheme.typography;
    final dsfrSizes = dsfrTheme.sizes;

    final Color foregroundColor;
    if (disabled) {
      foregroundColor = dsfrColors.disabledGrey;
    } else if (hasError) {
      foregroundColor = dsfrColors.defaultError;
    } else {
      foregroundColor = dsfrColors.highGrey;
    }

    final Color borderColor;
    if (disabled) {
      borderColor = dsfrColors.disabledGrey;
    } else if (isSelected) {
      borderColor = dsfrColors.activeBlueFrance;
    } else {
      borderColor = dsfrColors.defaultGrey;
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
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: dsfrSizes.w4,
                horizontal: dsfrSizes.w3,
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
                    style:
                        dsfrTypography.regular.copyWith(color: foregroundColor),
                  ),
                ],
              ),
            ),
            Container(
              color: dsfrColors.defaultGrey,
              width: 1,
              height: 80,
            ),
            Container(
              constraints: const BoxConstraints(maxHeight: 80, maxWidth: 80),
              margin: EdgeInsets.all(dsfrSizes.v1),
              child: image,
            ),
          ],
        ),
      ),
    );
  }
}
