import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/buttons/dsfr_primary_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRPrimaryButton', () {
    goldenTest(
      'renders correctly',
      fileName: 'dsfr_primary_button',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'default',
            child: DSFRPrimaryButton(
              onPressed: () {},
              child: const Text('Label bouton'),
            ),
          ),
        ],
      ),
    );
  });
}
