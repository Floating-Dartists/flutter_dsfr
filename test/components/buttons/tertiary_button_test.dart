import 'package:alchemist/alchemist.dart';
import 'package:flutter_dsfr/src/components/buttons/tertiary_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRTertiaryButton', () {
    goldenTest(
      'renders light mode',
      fileName: 'dsfr_tertiary_button',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            name: 'with border',
            child: DSFRTertiaryButton(
              label: 'Label bouton tertiaire',
              onPressed: () {},
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
      ),
    );
  });
}
