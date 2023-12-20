import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

import '../flutter_test_config.dart';

void main() {
  goldenTest(
    'icons rendering',
    fileName: 'icons',
    tags: ['golden', 'atom'],
    // ignore: avoid_redundant_argument_values
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
