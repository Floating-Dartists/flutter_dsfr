import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

void main() {
  goldenTest(
    'DSFRTypography.regular',
    fileName: 'typography',
    builder: () => GoldenTestGroup(
      children: DSFRTypography.regular()
          .props
          .map<GoldenTestScenario>(
            (e) => GoldenTestScenario(
              name: e.name,
              child: Text('Hello world!', style: e.property),
            ),
          )
          .toList(),
    ),
  );
}
