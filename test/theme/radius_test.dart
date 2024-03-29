import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/theme/palette.dart';

void main() {
  goldenTest(
    'DSFRRadius.regular',
    fileName: 'radius',
    builder: () => GoldenTestGroup(
      children: const DSFRRadius.regular()
          .props
          .map<GoldenTestScenario>(
            (e) => GoldenTestScenario(
              name: e.name,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: e.property),
                  color: ColorPalette.blueFranceMain525,
                ),
              ),
            ),
          )
          .toList(),
    ),
  );
}
