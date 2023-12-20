import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

import '../flutter_test_config.dart';

void main() {
  goldenTest(
    'DSFRSizes.regular',
    // ignore: avoid_redundant_argument_values
    skip: isRunningInCi,
    fileName: 'sizes',
    builder: () => GoldenTestGroup(
      children: const DSFRSizes.regular()
          .props
          .map<GoldenTestScenario>(
            (e) => GoldenTestScenario(
              name: e.name,
              child: Container(
                color: Colors.white,
                height: 50,
                width: e.property,
              ),
            ),
          )
          .toList(),
    ),
  );
}
