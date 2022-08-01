import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRAlert', () {
    final widget = GoldenTestGroup(
      columns: 4,
      children: [
        GoldenTestScenario(
          name: 'error',
          child: const DSFRSmallAlert(
            description: "error alerts",
            type: DSFRAlertType.error,
          ),
        ),
        GoldenTestScenario(
          name: 'success',
          child: const DSFRSmallAlert(
            description: "success alerts",
            type: DSFRAlertType.success,
          ),
        ),
        GoldenTestScenario(
          name: 'info',
          child: const DSFRSmallAlert(
            description: "info alerts",
            type: DSFRAlertType.info,
          ),
        ),
        GoldenTestScenario(
          name: 'warning',
          child: const DSFRSmallAlert(
            description: "warning alerts",
            type: DSFRAlertType.warning,
          ),
        ),
        GoldenTestScenario(
          name: 'error - close button',
          child: DSFRSmallAlert(
            description: "error close button",
            type: DSFRAlertType.error,
            onClose: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'success - close button',
          child: DSFRSmallAlert(
            description: "success close button",
            type: DSFRAlertType.success,
            onClose: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'info - close button',
          child: DSFRSmallAlert(
            description: "info close button",
            type: DSFRAlertType.info,
            onClose: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'warning - close button',
          child: DSFRSmallAlert(
            description: "warning close button",
            type: DSFRAlertType.warning,
            onClose: () {},
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'small_alert_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'small_alert_dark',
      builder: () => Theme(
        data: ThemeData(
          fontFamily: 'Marianne',
          brightness: Brightness.dark,
          extensions: const [
            DSFRTypography.medium(),
            DSFRColors.dark(),
            DSFRSizes.regular(),
          ],
        ),
        child: widget,
      ),
    );
  });
}
