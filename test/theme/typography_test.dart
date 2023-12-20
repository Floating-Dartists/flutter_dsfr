import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

import '../flutter_test_config.dart';

void main() {
  goldenTest(
    'DSFRTypography.regular',
    fileName: 'typography',
    skip: isRunningInCi, // Test not needed in CI
    builder: () => GoldenTestGroup(
      children: const DSFRTypography.medium()
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
