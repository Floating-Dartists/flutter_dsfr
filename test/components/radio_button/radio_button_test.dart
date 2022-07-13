import 'package:alchemist/alchemist.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/radio_button/radio_button.dart';

void main() {
  goldenTest(
    'light radio button widget rendering',
    fileName: 'radio_button_light',
    tags: ['golden', 'light', 'atom'],
    builder: () => GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'unselected',
          child: DSFRRadioButton<bool>(
            label: 'Label radio',
            value: true,
            groupValue: false,
            onChanged: (_) {},
          ),
        ),
        GoldenTestScenario(
          name: 'selected',
          child: DSFRRadioButton<bool>(
            label: 'Label radio',
            value: true,
            groupValue: true,
            onChanged: (_) {},
          ),
        ),
      ],
    ),
  );

  goldenTest(
    'dark radio button widget rendering',
    fileName: 'radio_button_dark',
    tags: ['golden', 'dark', 'atom'],
    builder: () => DSFRColorsTheme(
      data: const DSFRColors.dark(),
      child: GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'unselected',
            child: DSFRRadioButton<bool>(
              label: 'Label radio',
              value: true,
              groupValue: false,
              onChanged: (_) {},
            ),
          ),
          GoldenTestScenario(
            name: 'selected',
            child: DSFRRadioButton<bool>(
              label: 'Label radio',
              value: true,
              groupValue: true,
              onChanged: (_) {},
            ),
          ),
        ],
      ),
    ),
  );
}
