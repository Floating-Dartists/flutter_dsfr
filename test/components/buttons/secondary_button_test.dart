import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
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
            name: 'with icon left',
            child: DSFRSecondaryButton(
              onPressed: () {},
              label: 'Label bouton',
              icon: const Icon(Icons.add),
            ),
          ),
          GoldenTestScenario(
            name: 'with icon right',
            child: DSFRSecondaryButton(
              onPressed: () {},
              label: 'Label bouton',
              icon: const Icon(Icons.add),
              iconPosition: IconPosition.right,
            ),
          ),
          GoldenTestScenario(
            name: 'disabled',
            child: const DSFRSecondaryButton(
              onPressed: null,
              label: 'Label bouton',
            ),
          ),
        ],
      ),
    );
  });
}
