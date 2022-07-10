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
            title: "error",
            type: DSFRAlertType.error,
          ),
        ),
        GoldenTestScenario(
          name: 'success',
          child: const DSFRAlert(
            title: "success",
            type: DSFRAlertType.success,
          ),
        ),
        GoldenTestScenario(
          name: 'info',
          child: const DSFRAlert(
            title: "info",
            type: DSFRAlertType.info,
          ),
        ),
        GoldenTestScenario(
          name: 'warning',
          child: const DSFRAlert(
            title: "warning",
            type: DSFRAlertType.warning,
          ),
        ),
        GoldenTestScenario(
          name: 'error - description',
          child: const DSFRAlert(
            title: "error description",
            type: DSFRAlertType.error,
            description: "awesome description",
          ),
        ),
        GoldenTestScenario(
          name: 'success - description',
          child: const DSFRAlert(
            title: "success description",
            type: DSFRAlertType.success,
            description: "awesome description",
          ),
        ),
        GoldenTestScenario(
          name: 'info - description',
          child: const DSFRAlert(
            title: "info description",
            type: DSFRAlertType.info,
            description: "awesome description",
          ),
        ),
        GoldenTestScenario(
          name: 'warning - description',
          child: const DSFRAlert(
            title: "warning description",
            type: DSFRAlertType.warning,
            description: "awesome description",
          ),
        ),
        GoldenTestScenario(
          name: 'error - close button',
          child: DSFRAlert(
            title: "error close button",
            type: DSFRAlertType.error,
            description: "awesome description",
            onClose: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'success - close button',
          child: DSFRAlert(
            title: "success close button",
            type: DSFRAlertType.success,
            description: "awesome description",
            onClose: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'info - close button',
          child: DSFRAlert(
            title: "info close button",
            type: DSFRAlertType.info,
            description: "awesome description",
            onClose: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'warning - close button',
          child: DSFRAlert(
            title: "warning close button",
            type: DSFRAlertType.warning,
            description: "awesome description",
            onClose: () {},
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
