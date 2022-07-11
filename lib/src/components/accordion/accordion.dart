import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'accordion_border.dart';
import 'accordion_panel.dart';

/// Create an Accordion .
/// Must be render inside a Scrollable widget
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/312082509/Accord+on+-+Accordion
class DSFRAccordion extends StatefulWidget {
  const DSFRAccordion({required this.panels, super.key});

  final List<DSFRAccordionData> panels;

  @override
  State<StatefulWidget> createState() => _DSFRAccordionState();
}

class _DSFRAccordionState extends State<DSFRAccordion> {
  UniqueKey? _accordionValue;
  late final _itemsValues =
      List<UniqueKey>.generate(widget.panels.length, (_) => UniqueKey());
  late final _panels = widget.panels;

  @override
  void initState() {
    super.initState();
    _setDefaultAccordionValue();
  }

  // ! this should only be called once in initState
  void _setDefaultAccordionValue() {
    final lastInitialyExpandedIndex =
        _panels.lastIndexWhere((panelData) => panelData.isInitialyExpanded);

    if (lastInitialyExpandedIndex != -1 &&
        _itemsValues.length == _panels.length) {
      _accordionValue = _itemsValues[lastInitialyExpandedIndex];
    }
  }

  List<Widget> _renderPanels() {
    final children = <Widget>[];

    for (var i = 0; i < _panels.length; i++) {
      final isLastInGroup = i == _panels.length - 1;
      final panelData = _panels[i];

      final child = DSFRAccordionBorder(
        isLastInGroup: isLastInGroup,
        child: DSFRAccordionPanel(
          data: panelData,
          accordionValue: _accordionValue,
          itemValue: _itemsValues[i],
          onExpandedChange: (newValue) {
            setState(() {
              _accordionValue = newValue;
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
