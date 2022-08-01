import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRPrimaryButton', () {
    final widget = GoldenTestGroup(
      columns: 4,
      children: [
        GoldenTestScenario(
          name: 'default',
          child: DSFRPrimaryButton(
            onPressed: () {},
            label: 'Label bouton',
          ),
        ),
        GoldenTestScenario(
          name: 'with icon left',
          child: DSFRPrimaryButton(
            onPressed: () {},
            label: 'Label bouton',
            icon: const Icon(Icons.add),
          ),
        ),
        GoldenTestScenario(
          name: 'with icon right',
          child: DSFRPrimaryButton(
            onPressed: () {},
            label: 'Label bouton',
            icon: const Icon(Icons.add),
            iconPosition: IconPosition.right,
          ),
        ),
        GoldenTestScenario(
          name: 'icon only',
          child: DSFRPrimaryButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
        GoldenTestScenario(
          name: 'disabled',
          child: const DSFRPrimaryButton(
            onPressed: null,
            label: 'Label bouton',
          ),
        ),
        GoldenTestScenario(
          name: 'disabled with icon left',
          child: const DSFRPrimaryButton(
            onPressed: null,
            label: 'Label bouton',
            icon: Icon(Icons.add),
          ),
        ),
        GoldenTestScenario(
          name: 'disabled with icon right',
          child: const DSFRPrimaryButton(
            onPressed: null,
            label: 'Label bouton',
            icon: Icon(Icons.add),
            iconPosition: IconPosition.right,
          ),
        ),
        GoldenTestScenario(
          name: 'disabled icon only',
          child: const DSFRPrimaryButton.icon(
            onPressed: null,
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'primary_button_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'primary_button_dark',
      builder: () => DSFRColorsTheme(
        data: const DSFRColors.dark(),
        child: widget,
      ),
    );
  });
}
