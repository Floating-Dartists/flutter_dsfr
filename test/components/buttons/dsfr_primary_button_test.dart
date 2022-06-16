import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
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
          GoldenTestScenario(
            name: 'rounded',
            child: DSFRPrimaryButton(
              style: DSFRButtonStyle(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: const Text('Label bouton'),
            ),
          ),
        ],
      ),
    );
  });
}
