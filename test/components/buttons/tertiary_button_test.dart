import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRTertiaryButton', () {
    final widget = GoldenTestGroup(
      columns: 4,
      children: [
        GoldenTestScenario(
          name: 'default',
          child: DSFRTertiaryButton(
            label: 'Label bouton tertiaire',
            onPressed: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'with icon left',
          child: DSFRTertiaryButton(
            label: 'Label bouton tertiaire',
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
        GoldenTestScenario(
          name: 'with icon right',
          child: DSFRTertiaryButton(
            label: 'Label bouton tertiaire',
            onPressed: () {},
            icon: const Icon(Icons.add),
            iconPosition: IconPosition.right,
          ),
        ),
        GoldenTestScenario(
          name: 'icon only',
          child: DSFRTertiaryButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
        GoldenTestScenario(
          name: 'without border',
          child: DSFRTertiaryButton(
            label: 'Label bouton tertiaire sans bordure',
            onPressed: () {},
            noOutline: true,
          ),
        ),
        GoldenTestScenario(
          name: 'with icon left no border',
          child: DSFRTertiaryButton(
            label: 'Label bouton tertiaire',
            onPressed: () {},
            icon: const Icon(Icons.add),
            noOutline: true,
          ),
        ),
        GoldenTestScenario(
          name: 'with icon right no border',
          child: DSFRTertiaryButton(
            label: 'Label bouton tertiaire',
            onPressed: () {},
            icon: const Icon(Icons.add),
            iconPosition: IconPosition.right,
            noOutline: true,
          ),
        ),
        GoldenTestScenario(
          name: 'icon only no border',
          child: DSFRTertiaryButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            noOutline: true,
          ),
        ),
        GoldenTestScenario(
          name: 'disabled',
          child: const DSFRTertiaryButton(
            label: 'Label bouton tertiaire',
            onPressed: null,
          ),
        ),
        GoldenTestScenario(
          name: 'Label bouton tertiaire sans bordure',
          child: const DSFRTertiaryButton(
            label: 'Label bouton tertiaire sans bordure',
            onPressed: null,
            noOutline: true,
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'tertiary_button_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'tertiary_button_dark',
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
