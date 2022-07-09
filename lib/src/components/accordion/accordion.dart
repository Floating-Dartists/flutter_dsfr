import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'accordion_border.dart';
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
  late final panels = widget.panels;

  @override
  void initState() {
    super.initState();
    _initItemsValues();
    _setDefaultAccordionValue();
  }

  // ! this should only be called once in initState
  void _initItemsValues() {
    for (var i = 0; i < panels.length; i++) {
      final uniqueKey = UniqueKey();
      itemsValues.add(uniqueKey);
    }
  }

  // ! this should only be called once in initState
  // ! itemsValues must be initialized before calling this
  void _setDefaultAccordionValue() {
    final lastInitialyExpandedIndex =
        panels.lastIndexWhere((panelData) => panelData.isInitialyExpanded);

    if (lastInitialyExpandedIndex != -1 &&
        itemsValues.length == panels.length) {
      accordionValue = itemsValues[lastInitialyExpandedIndex];
    }
  }

  List<Widget> _renderPanels() {
    final children = <Widget>[];

    for (var i = 0; i < panels.length; i++) {
      final isLastInGroup = i == panels.length - 1;
      final panelData = panels[i];

      final child = DSFRAccordionBorder(
        isLastInGroup: isLastInGroup,
        child: DSFRAccordionPanel(
          data: panelData,
          accordionValue: accordionValue,
          itemValue: itemsValues[i],
          onExpandedChange: (newValue) {
            setState(() {
              accordionValue = newValue;
            });
          },
        ),
      );

      children.add(child);
    }

    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _renderPanels(),
    );
  }
}
