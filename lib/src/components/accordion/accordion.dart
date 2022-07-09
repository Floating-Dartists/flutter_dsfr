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
  UniqueKey? accordionValue;
  late final itemsValues = <UniqueKey>[];

  @override
  void initState() {
    super.initState();

    var i = 0;
    while (i < widget.panels.length) {
      final uniqueKey = UniqueKey();
      itemsValues.add(uniqueKey);
      i++;
    }
  }

  List<Widget> _renderPanels() {
    final children = <Widget>[];

    var i = 0;
    while (i < widget.panels.length) {
      final panelData = widget.panels[i];
      final child = DSFRAccordionPanel(
        data: panelData,
        accordionValue: accordionValue,
        itemValue: itemsValues[i],
        onExpandedChange: (newValue) {
          setState(() {
            accordionValue = newValue;
          });
        },
      );

      children.add(child);

      i++;
    }

    return children;
  }

  @override
  Widget build(BuildContext context) {
    final dsfrTypography = DSFRTypography.of(context);

    return Column(
      children: _renderPanels(),
    );
  }
}
