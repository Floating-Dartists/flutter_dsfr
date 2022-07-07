import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRSecondaryButton', () {
    final widget = GoldenTestGroup(
      columns: 4,
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
          name: 'icon only',
          child: DSFRSecondaryButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
        GoldenTestScenario(
          name: 'disabled',
          child: const DSFRSecondaryButton(
            onPressed: null,
            label: 'Label bouton',
          ),
        ),
        GoldenTestScenario(
          name: 'disabled with icon left',
          child: const DSFRSecondaryButton(
            onPressed: null,
            label: 'Label bouton',
            icon: Icon(Icons.add),
          ),
        ),
        GoldenTestScenario(
          name: 'disabled with icon right',
          child: const DSFRSecondaryButton(
            onPressed: null,
            label: 'Label bouton',
            icon: Icon(Icons.add),
            iconPosition: IconPosition.right,
          ),
        ),
        GoldenTestScenario(
          name: 'disabled icon only',
          child: const DSFRSecondaryButton.icon(
            onPressed: null,
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'secondary_button_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'secondary_button_dark',
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
