import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

TableColumnWidth? columnWidthBuilder(int columns) {
  // ! must use this in order to avoid error
  // !
  // ! 'columns.isEmpty || (columns.first >= 0.0 && columns.last <= rect.width)': is not true.
  return const FlexColumnWidth();
}

void main() {
  goldenTest(
    'DSFRColors.light',
    fileName: 'colors_light',
    builder: () => GoldenTestGroup(
      columnWidthBuilder: columnWidthBuilder,
      children: const DSFRColors.light()
          .props
          .map<GoldenTestScenario>(
            (e) => GoldenTestScenario(
              name: e.name,
              child: Container(
                height: 50.0,
                width: 50.0,
                color: e.property,
              ),
            ),
          )
          .toList(),
    ),
  );

  goldenTest(
    'DSFRColors.dark',
    fileName: 'colors_dark',
    builder: () => GoldenTestGroup(
      columnWidthBuilder: columnWidthBuilder,
      children: const DSFRColors.dark()
          .props
          .map<GoldenTestScenario>(
            (e) => GoldenTestScenario(
              name: e.name,
              child: Container(
                height: 50.0,
                width: 50.0,
                color: e.property,
              ),
            ),
          )
          .toList(),
    ),
  );
}
