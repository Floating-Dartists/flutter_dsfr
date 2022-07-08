import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRAlert', () {
    final widget = GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'error',
          child: const DSFRAlert(
            title: "error alerts",
            type: DSFRAlertType.error,
          ),
        ),
        GoldenTestScenario(
          name: 'success',
          child: const DSFRAlert(
            title: "success alerts",
            type: DSFRAlertType.success,
          ),
        ),
        GoldenTestScenario(
          name: 'info',
          child: const DSFRAlert(
            title: "info alerts",
            type: DSFRAlertType.info,
          ),
        ),
        GoldenTestScenario(
          name: 'warning',
          child: const DSFRAlert(
            title: "warning alerts",
            type: DSFRAlertType.warning,
          ),
        ),
        GoldenTestScenario(
          name: 'description',
          child: const DSFRAlert(
            title: "alerts with description",
            description: "awesome description",
            type: DSFRAlertType.success,
          ),
        ),
        GoldenTestScenario(
          name: 'close button',
          child: DSFRAlert(
            title: "close button",
            onClose: () {},
            type: DSFRAlertType.success,
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'alert_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'alert_dark',
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
