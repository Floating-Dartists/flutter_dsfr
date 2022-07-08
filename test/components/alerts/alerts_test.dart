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
          child: const DSFRAlerts(
            title: "error alerts",
            type: DSFRAlertsType.error,
          ),
        ),
        GoldenTestScenario(
          name: 'success',
          child: const DSFRAlerts(
            title: "success alerts",
            type: DSFRAlertsType.success,
          ),
        ),
        GoldenTestScenario(
          name: 'info',
          child: const DSFRAlerts(
            title: "info alerts",
            type: DSFRAlertsType.info,
          ),
        ),
        GoldenTestScenario(
          name: 'warning',
          child: const DSFRAlerts(
            title: "warning alerts",
            type: DSFRAlertsType.warning,
          ),
        ),
        GoldenTestScenario(
          name: 'description',
          child: const DSFRAlerts(
            title: "alerts with description",
            description: "awesome description",
            type: DSFRAlertsType.success,
          ),
        ),
        GoldenTestScenario(
          name: 'close button',
          child: DSFRAlerts(
            title: "close button",
            onClose: () {},
            type: DSFRAlertsType.success,
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'alerts_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'alerts_dark',
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
