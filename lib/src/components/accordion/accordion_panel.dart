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
  final void Function(Object?) onExpandedChange;
  final Object? accordionValue;
  final Object itemValue;

  @override
  Widget build(BuildContext context) {
    return ProgrammableExpansionTile(
      key: Key(data.title),
      onExpansionChanged: (shouldBeExpanded) {
        if (shouldBeExpanded) {
          onExpandedChange(itemValue);
        } else {
          onExpandedChange(null);
        }
      },
      isExpanded: itemValue == accordionValue,
      title: Text(data.title),
      trailing: const Icon(Icons.add),
      children: [data.content],
    );
  }
}
