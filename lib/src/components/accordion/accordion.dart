import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'accordion_panel.dart';

class DSFRAccordion extends StatefulWidget {
  const DSFRAccordion({required this.panels, super.key});

  final List<DSFRAccordionData> panels;

  @override
  State<StatefulWidget> createState() => _DSFRAccordionState();
}

class _DSFRAccordionState extends State<DSFRAccordion> {
  Object? accordionValue;

  @override
  Widget build(BuildContext context) {
    final dsfrTypography = DSFRTypography.of(context);

    return Column(
      children: widget.panels
          .map(
            (panel) => DSFRAccordionPanel(
              data: panel,
              accordionValue: accordionValue,
              itemValue: panel.title,
              onExpandedChange: (newValue) {
                setState(() {
                  accordionValue = newValue;
                });
              },
            ),
          )
          .toList(),
    );
  }
}
