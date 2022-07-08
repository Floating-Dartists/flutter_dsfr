import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRAlerts', () {
    final widget = GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'error',
          child: const DSFRSmallAlerts(
            description: "error alerts",
            type: DSFRAlertsType.error,
          ),
        ),
        GoldenTestScenario(
          name: 'success',
          child: const DSFRSmallAlerts(
            description: "success alerts",
            type: DSFRAlertsType.success,
          ),
        ),
        GoldenTestScenario(
          name: 'info',
          child: const DSFRSmallAlerts(
            description: "info alerts",
            type: DSFRAlertsType.info,
          ),
        ),
        GoldenTestScenario(
          name: 'warning',
          child: const DSFRSmallAlerts(
            description: "warning alerts",
            type: DSFRAlertsType.warning,
          ),
        ),
        GoldenTestScenario(
          name: 'close button',
          child: DSFRSmallAlerts(
            description: "close button",
            onClose: () {},
            type: DSFRAlertsType.success,
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'small_alerts_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'small_alerts_dark',
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
