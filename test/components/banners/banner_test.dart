import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/theme/breakpoints.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const largeWidth = Breakpoints.lg + 200;
  const smallWidth = Breakpoints.xs;

  group('DSFRAlert', () {
    final widgetLarge = GoldenTestGroup(
      columns: 1,
      columnWidthBuilder: (_) {
        return const FixedColumnWidth(largeWidth);
      },
      children: [
        GoldenTestScenario(
          name: 'banner - large',
          child: const DSFRBanner(text: "Im an awesome banner"),
        ),
        GoldenTestScenario(
          name: 'banner - large - close',
          child: DSFRBanner(
            text: "Im an awesome banner with close button",
            onClose: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'banner - large - link',
          child: DSFRBanner(
            text: "Im an awesome banner with a link",
            link: DSFRBannerLink(
              text: "this is an awesome link",
              link: Uri.parse("https://http.cat/404"),
            ),
          ),
        ),
        GoldenTestScenario(
          name: 'banner - large - close - link',
          child: DSFRBanner(
            text: "Im an awesome banner with a link and a close button",
            link: DSFRBannerLink(
              text: "this is an awesome link",
              link: Uri.parse("https://http.cat/404"),
            ),
            onClose: () {},
          ),
        ),
      ],
    );

    final widgetSmall = GoldenTestGroup(
      columns: 2,
      columnWidthBuilder: (_) {
        return const FixedColumnWidth(smallWidth);
      },
      children: [
        GoldenTestScenario(
          name: 'banner - small',
          child: const DSFRBanner(
            text: "Im an awesome banner with a link and a close button",
          ),
        ),
        GoldenTestScenario(
          name: 'banner - small - close',
          child: DSFRBanner(
            text: "Im an awesome banner with close button",
            onClose: () {},
          ),
        ),
        GoldenTestScenario(
          name: 'banner - small - link',
          child: DSFRBanner(
            text: "Im an awesome banner with a link",
            link: DSFRBannerLink(
              text: "this is an awesome link",
              link: Uri.parse("https://http.cat/404"),
            ),
          ),
        ),
        GoldenTestScenario(
          name: 'banner - small - close - link',
          child: DSFRBanner(
            text: "Im an awesome banner with a link and a close button",
            link: DSFRBannerLink(
              text: "this is an awesome link",
              link: Uri.parse("https://http.cat/404"),
            ),
            onClose: () {},
          ),
        ),
      ],
    );

    goldenTest(
      'renders large light mode',
      fileName: 'banner_large_light',
      builder: () => widgetLarge,
    );

    goldenTest(
      'renders large dark mode',
      fileName: 'banner_large_dark',
      builder: () => DSFRThemeWidget(
        data: const DSFRThemeData(
          colors: DSFRColors.dark(),
        ),
        child: Material(child: widgetLarge),
      ),
    );

    goldenTest(
      'renders small light mode',
      fileName: 'banner_small_light',
      builder: () => widgetSmall,
    );

    goldenTest(
      'renders small dark mode',
      fileName: 'banner_small_dark',
      builder: () => DSFRThemeWidget(
        data: const DSFRThemeData(
          colors: DSFRColors.dark(),
        ),
        child: Material(child: widgetSmall),
      ),
    );
  });
}
