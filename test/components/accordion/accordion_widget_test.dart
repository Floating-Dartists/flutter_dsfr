import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../flutter_test_config.dart';
import 'accordion_robot.dart';

const titleText = "Amazing title";
const contentText1 = "Im an beautiful content";
const contentText2 = "Im also an beautiful content";

void main() {
  testWidgets(
    'it display content on tap',
    (tester) async {
      const contentText1 = "Im an beautiful content";
      final panels = [
        const DSFRAccordionData(
          title: titleText,
          content: Text(
            contentText1,
          ),
        ),
      ];

      final accordionRobot = AccordionRobot(tester: tester);
      await accordionRobot.renderAccordion(
        panels: panels,
      );

      accordionRobot.expenctNAccordionPanelWidget(panels.length);
      await accordionRobot.tapOnFirstAccordionPanelWidget();
      accordionRobot.expectContentByText(contentText1);
    },
    skip: isRunningInCi, // FIXME
  );

  testWidgets(
    'it have a radio like logic, only one content can be open at a time',
    (tester) async {
      const panels = [
        DSFRAccordionData(
          title: titleText,
          content: Text(contentText1),
        ),
        DSFRAccordionData(
          title: titleText,
          content: Text(contentText2),
        ),
      ];

      final accordionRobot = AccordionRobot(tester: tester);
      await accordionRobot.renderAccordion(
        panels: panels,
      );

      accordionRobot.expenctNAccordionPanelWidget(panels.length);
      await accordionRobot.tapOnFirstAccordionPanelWidget();
      accordionRobot.expectContentByText(contentText1);

      await accordionRobot.tapOnLastAccordionPanelWidget();
      accordionRobot
        ..expectNoContentByText(contentText1)
        ..expectContentByText(contentText2);
    },
    skip: isRunningInCi, // FIXME
  );

  testWidgets(
    'it can expand a panel by default with isInitialyExpanded',
    (tester) async {
      final panels = [
        const DSFRAccordionData(
          title: titleText,
          content: Text(
            contentText1,
          ),
          isInitialyExpanded: true,
        ),
        const DSFRAccordionData(
          title: titleText,
          content: Text(
            contentText2,
          ),
          isInitialyExpanded: true,
        ),
      ];

      final accordionRobot = AccordionRobot(tester: tester);
      await accordionRobot.renderAccordion(
        panels: panels,
      );

      accordionRobot
        ..expenctNAccordionPanelWidget(panels.length)
        ..expectContentByText(contentText2);
    },
    skip: isRunningInCi, // FIXME
  );

  testWidgets(
    'it expand only the last panel if there is multiple DSFRAccordionData with isInitialyExpanded set to true',
    (tester) async {
      final panels = [
        const DSFRAccordionData(
          title: titleText,
          content: Text(
            contentText1,
          ),
          isInitialyExpanded: true,
        ),
        const DSFRAccordionData(
          title: titleText,
          content: Text(
            contentText2,
          ),
          isInitialyExpanded: true,
        ),
      ];

      final accordionRobot = AccordionRobot(tester: tester);
      await accordionRobot.renderAccordion(
        panels: panels,
      );

      accordionRobot
        ..expenctNAccordionPanelWidget(panels.length)
        ..expectNoContentByText(contentText1)
        ..expectContentByText(contentText2);
    },
    skip: isRunningInCi, // FIXME
  );
}
