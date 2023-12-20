import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/accordion/programmable_expansion_tile.dart';

class DSFRAccordionPanel extends StatelessWidget {
  const DSFRAccordionPanel({
    required this.data,
    required this.onExpandedChange,
    required this.accordionValue,
    required this.itemValue,
    super.key,
  });

  final DSFRAccordionData data;
  final ValueChanged<UniqueKey?> onExpandedChange;
  final UniqueKey? accordionValue;
  final UniqueKey itemValue;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrTypography = dsfrTheme.typography;
    final dsfrColors = dsfrTheme.colors;
    final dsfrSizes = dsfrTheme.sizes;
    final isExpanded = itemValue == accordionValue;

    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: dsfrColors.splash,
        hoverColor: dsfrColors.hover,
        highlightColor: dsfrColors.active,
        focusColor: dsfrColors.hover,
      ),
      child: ProgrammableExpansionTile(
        key: Key(data.title),
        onExpansionChanged: (shouldBeExpanded) {
          if (shouldBeExpanded) {
            onExpandedChange(itemValue);
          } else {
            onExpandedChange(null);
          }
        },
        isExpanded: isExpanded,
        title: DefaultTextStyle(
          style: (isExpanded
                  ? dsfrTypography.boldText
                  : dsfrTypography.defaultText)
              .copyWith(color: dsfrColors.text),
          child: Text(data.title),
        ),
        trailing: Icon(
          isExpanded ? DSFRIcons.substract : DSFRIcons.add,
          color: dsfrColors.text,
          size: dsfrSizes.w2,
        ),
        child: data.content,
      ),
    );
  }
}
