import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/accordion/accordion_border.dart';
import 'package:flutter_dsfr/src/components/accordion/accordion_panel.dart';

/// {@template accordion_data}
/// Create an Accordion .
/// Must be render inside a Scrollable widget
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/312082509/Accord+on+-+Accordion
/// {@endtemplate}
class DSFRAccordion extends StatefulWidget {
  /// {@macro accordion_data}
  const DSFRAccordion({required this.panels, super.key});

  final List<DSFRAccordionData> panels;

  @override
  State<DSFRAccordion> createState() => _DSFRAccordionState();
}

class _DSFRAccordionState extends State<DSFRAccordion> {
  UniqueKey? accordionValue;
  late final itemsValues =
      List<UniqueKey>.generate(widget.panels.length, (_) => UniqueKey());
  late final panels = widget.panels;
  bool initialized = false;

  @override
  void initState() {
    super.initState();
    setDefaultAccordionValue();
  }

  void setDefaultAccordionValue() {
    if (initialized) return;
    final lastInitialyExpandedIndex =
        panels.lastIndexWhere((panelData) => panelData.isInitialyExpanded);

    if (lastInitialyExpandedIndex != -1 &&
        itemsValues.length == panels.length) {
      accordionValue = itemsValues[lastInitialyExpandedIndex];
    }
    initialized = true;
  }

  Iterable<Widget> renderPanels() sync* {
    for (var i = 0; i < panels.length; i++) {
      final isLastInGroup = i == panels.length - 1;
      final panelData = panels[i];

      yield DSFRAccordionBorder(
        isLastInGroup: isLastInGroup,
        child: DSFRAccordionPanel(
          data: panelData,
          accordionValue: accordionValue,
          itemValue: itemsValues[i],
          onExpandedChange: (newValue) {
            setState(() => accordionValue = newValue);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [...renderPanels()],
    );
  }
}
