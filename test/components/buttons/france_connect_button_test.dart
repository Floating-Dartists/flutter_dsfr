import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FranceConnectButton', () {
    final widget = GoldenTestGroup(
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
    );

    goldenTest(
      'renders light mode',
      fileName: 'france_connect_button',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'france_connect_button_dark',
      builder: () => DSFRThemeWidget(
        data: const DSFRThemeData(
          colors: DSFRColors.dark(),
        ),
        child: widget,
      ),
    );
  });
}
