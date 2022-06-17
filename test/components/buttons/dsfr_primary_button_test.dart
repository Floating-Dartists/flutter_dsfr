import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRPrimaryButton', () {
    final widgets = GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'default',
          child: DSFRPrimaryButton(
            onPressed: () {},
            label: 'Label bouton',
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
            label: 'Label bouton',
          ),
        ),
        GoldenTestScenario(
          name: 'with icon',
          child: DSFRPrimaryButton(
            onPressed: () {},
            label: 'Label bouton',
            icon: const Icon(Icons.add),
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'dsfr_primary_button',
      builder: () => widgets,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'dsfr_primary_button_dark',
      builder: () => Theme(
        data: ThemeData(
          fontFamily: 'Marianne',
          brightness: Brightness.dark,
          extensions: [
            DSFRTextStyles.dark(),
            const DSFRColors.dark(),
            const DSFRSizes.base(),
            DSFRButtonStyle.dark(),
          ],
        ),
        child: widgets,
      ),
    );
  });
}
