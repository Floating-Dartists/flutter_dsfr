import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

void main() {
  goldenTest(
    'DSFRColors.light',
    fileName: 'colors_light',
    tags: ['golden', 'light'],
    builder: () => GoldenTestGroup(
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
    tags: ['golden', 'dark'],
    builder: () => GoldenTestGroup(
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
