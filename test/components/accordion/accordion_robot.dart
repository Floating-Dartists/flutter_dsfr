import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/accordion/accordion_panel.dart';
import 'package:flutter_test/flutter_test.dart';

class AccordionRobot {
  const AccordionRobot({required this.tester});

  final WidgetTester tester;

  Future<void> renderAccordion({
    required List<DSFRAccordionData> panels,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Theme(
          data: ThemeData(
            fontFamily: 'Marianne',
            brightness: Brightness.light,
            extensions: [
              DSFRTypography.regular(),
              const DSFRColors.light(),
              const DSFRSizes.regular(),
            ],
          ),
          child: SingleChildScrollView(
            child: DSFRAccordion(
              panels: panels,
            ),
          ),
        ),
      ),
    );
  }

  void expenctNAccordionPanelWidget(int n) {
    final accordion = find.byType(DSFRAccordionPanel);
    expect(accordion, findsNWidgets(n));
  }

  Future<void> tapOnFirstAccordionPanelWidget() async {
    final accordionPanels = find.byType(DSFRAccordionPanel);
    await tester.tap(accordionPanels.first);
    await tester.pumpAndSettle();
  }

  Future<void> tapOnLastAccordionPanelWidget() async {
    final accordionPanels = find.byType(DSFRAccordionPanel);
    await tester.tap(accordionPanels.last);
    await tester.pumpAndSettle();
  }

  void expectContentByText(String contentText) {
    final content = find.text(contentText);
    expect(content, findsOneWidget);
  }

  void expectNoContentByText(String contentText) {
    final content = find.text(contentText);
    expect(content, findsNothing);
  }
}
