import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRAlert', () {
    final widget = GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'banner',
          child: const DSFRBanner(text: "Im an awesome banner"),
        ),
        GoldenTestScenario(
          name: 'banner close',
          child: DSFRBanner(
            text: "Im an awesome banner with close button",
            onClose: () {},
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'banner_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'banner_dark',
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
