import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/buttons/dsfr_secondary_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRSecondaryButton', () {
    goldenTest(
      'renders light mode',
      fileName: 'dsfr_secondary_button',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'default',
            child: DSFRSecondaryButton(
              onPressed: () {},
              label: 'Label bouton',
            ),
          ),
          GoldenTestScenario(
            name: 'with icon',
            child: DSFRSecondaryButton(
              onPressed: () {},
              label: 'Label bouton',
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  });
}
