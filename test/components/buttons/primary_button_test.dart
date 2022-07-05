import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRPrimaryButton', () {
    final widget = GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'default',
          child: DSFRPrimaryButton(
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
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'dsfr_primary_button_dark',
      builder: () => Theme(
        data: ThemeData(
          fontFamily: 'Marianne',
          brightness: Brightness.dark,
          extensions: [
            DSFRTypography.regular(),
            const DSFRColors.dark(),
            const DSFRSizes.regular(),
          ],
        ),
        child: widget,
      ),
    );
  });
}
