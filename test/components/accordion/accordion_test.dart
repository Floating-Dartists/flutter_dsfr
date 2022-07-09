import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

const content = Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("I'm an awesome content"),
);

void main() {
  group('DSFRAccordion', () {
    final widget = GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'solo',
          child: const DSFRAccordion(
            panels: [
              DSFRAccordionData(title: "DSFRAccordion", content: content)
            ],
          ),
        ),
        GoldenTestScenario(
          name: 'solo - expanded',
          child: const DSFRAccordion(
            panels: [
              DSFRAccordionData(
                title: "DSFRAccordion",
                content: content,
                isInitialyExpanded: true,
              )
            ],
          ),
        ),
        GoldenTestScenario(
          name: 'group',
          child: const DSFRAccordion(
            panels: [
              DSFRAccordionData(title: "DSFRAccordion1", content: content),
              DSFRAccordionData(title: "DSFRAccordion2", content: content),
              DSFRAccordionData(title: "DSFRAccordion3", content: content),
              DSFRAccordionData(title: "DSFRAccordion4", content: content),
            ],
          ),
        ),
        GoldenTestScenario(
          name: 'group - expanded',
          child: const DSFRAccordion(
            panels: [
              DSFRAccordionData(
                title: "DSFRAccordion1",
                content: content,
                isInitialyExpanded: true,
              ),
              DSFRAccordionData(title: "DSFRAccordion2", content: content),
              DSFRAccordionData(title: "DSFRAccordion3", content: content),
              DSFRAccordionData(title: "DSFRAccordion4", content: content),
            ],
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'accordion_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'accordion_dark',
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
