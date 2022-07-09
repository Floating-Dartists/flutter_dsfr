import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'programmable_expansion_tile.dart';

class DSFRAccordionPanel extends StatelessWidget {
  const DSFRAccordionPanel({
    required this.data,
    required this.onExpandedChange,
    required this.accordionValue,
    required this.itemValue,
    super.key,
  });

  final DSFRAccordionData data;
  final void Function(UniqueKey?) onExpandedChange;
  final UniqueKey? accordionValue;
  final UniqueKey itemValue;

  bool get _isExpanded => itemValue == accordionValue;

  Widget _getTitle(
    BuildContext context, {
    required DSFRTypography dsfrTypography,
    required DSFRColors dsfrColors,
  }) {
    if (_isExpanded) {
      return Text(
        data.title,
        style: dsfrTypography.accordionOpen.copyWith(
          color: dsfrColors.text,
        ),
      );
    }

    return Text(
      data.title,
      style:
          DefaultTextStyle.of(context).style.copyWith(color: dsfrColors.text),
    );
  }

  Widget _getTrailingIcon({
    required DSFRColors dsfrColors,
    required DSFRSizes dsfrSizes,
  }) {
    final iconData = _isExpanded ? DSFRIcons.substract : DSFRIcons.add;

    return DSFRIcon(
      iconData,
      color: dsfrColors.text,
      size: dsfrSizes.w2,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dsfrTypography = DSFRTypography.of(context);
    final dsfrColors = DSFRColors.of(context);
    final dsfrSizes = DSFRSizes.of(context);

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
        isExpanded: _isExpanded,
        title: _getTitle(
          context,
          dsfrTypography: dsfrTypography,
          dsfrColors: dsfrColors,
        ),
        trailing:
            _getTrailingIcon(dsfrColors: dsfrColors, dsfrSizes: dsfrSizes),
        child: data.content,
      ),
    );
  }
}
