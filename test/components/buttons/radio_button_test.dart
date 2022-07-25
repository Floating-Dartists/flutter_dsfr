import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/buttons/radio.dart';
import 'package:flutter_dsfr/src/components/radio_group/radio_group_form_field.dart';

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

  goldenTest(
    'light group radio button rendering',
    fileName: 'radio_group_light',
    tags: ['golden', 'light', 'molecule'],
    builder: () {
      const items = [
        DSFRRadioData(label: 'Label radio', value: false),
        DSFRRadioData(label: 'Label radio', value: false),
        DSFRRadioData(label: 'Label radio', value: false),
      ];

      return GoldenTestGroup(
        columns: 3,
        children: [
          GoldenTestScenario(
            name: 'vertical',
            child: DSFRRadioGroup<bool>(
              title: "Légende pour l'ensemble de champs",
              onChanged: (_) {},
              items: items,
            ),
          ),
          GoldenTestScenario(
            name: 'horizontal',
            child: DSFRRadioGroup<bool>(
              title: "Légende pour l'ensemble de champs",
              onChanged: (_) {},
              items: items,
              direction: Axis.horizontal,
            ),
          ),
          GoldenTestScenario(
            name: 'with description',
            child: DSFRRadioGroup(
              title: "Légende pour l'ensemble de champs",
              description: 'Texte de description additionnel',
              onChanged: (_) {},
              items: const [
                DSFRRadioData(
                  label: 'Label radio',
                  description: 'Texte de description additionnel',
                  value: false,
                ),
                DSFRRadioData(
                  label: 'Label radio',
                  description: 'Texte de description additionnel',
                  value: false,
                ),
                DSFRRadioData(
                  label: 'Label radio',
                  description: 'Texte de description additionnel',
                  value: false,
                ),
              ],
            ),
          ),
          GoldenTestScenario(
            name: 'error state',
            child: DSFRRadioGroupFormField<bool>(
              title: "Légende pour l'ensemble de champs",
              onChanged: (_) {},
              items: items,
              autovalidateMode: AutovalidateMode.always,
              validator: (selectedValue) =>
                  selectedValue == null || !selectedValue
                      ? "Texte d'erreur obligatoire"
                      : null,
            ),
          ),
          GoldenTestScenario(
            name: 'success state',
            child: DSFRRadioGroupFormField<bool>(
              title: "Légende pour l'ensemble de champs",
              onChanged: (_) {},
              items: items,
              autovalidateMode: AutovalidateMode.always,
              successMessage: 'Texte de validation',
              validator: (_) => null,
            ),
          ),
          GoldenTestScenario(
            name: 'disabled state',
            child: DSFRRadioGroup<bool>(
              title: "Légende pour l'ensemble de champs",
              onChanged: null,
              items: items,
            ),
          )
        ],
      );
    },
  );
}
