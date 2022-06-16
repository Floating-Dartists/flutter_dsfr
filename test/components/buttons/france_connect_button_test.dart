import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FranceConnectButton', () {
    goldenTest(
      'renders correctly',
      fileName: 'france_connect_button',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'default',
            child: FranceConnectButton(
              onPressed: () {},
            ),
          ),
          GoldenTestScenario(
            name: 'variant',
            child: FranceConnectButton(
              onPressed: () {},
              variant: true,
            ),
          ),
          GoldenTestScenario(
            name: 'rounded',
            child: FranceConnectButton(
              onPressed: () {},
              style: DSFRButtonStyle(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  });
}
