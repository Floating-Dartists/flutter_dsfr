import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

void main() {
  const isRunningInCi = bool.fromEnvironment('CI', defaultValue: false);

  goldenTest(
    'icons rendering',
    fileName: 'icons',
    tags: ['golden', 'atom'],
    skip: isRunningInCi,
    builder: () => GoldenTestGroup(
      children: DSFRIcons.props
          .map<GoldenTestScenario>(
            (e) => GoldenTestScenario(
              name: e.name,
              child: Icon(e.property),
            ),
          )
          .toList(),
    ),
  );
}
