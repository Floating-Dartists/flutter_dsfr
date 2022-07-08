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
          name: 'close button',
          child: DSFRSmallAlert(
            description: "close button",
            onClose: () {},
            type: DSFRAlertType.success,
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
