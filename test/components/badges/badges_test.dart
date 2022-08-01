import 'package:alchemist/alchemist.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSFRBadge', () {
    final widget = GoldenTestGroup(
      children: [
        GoldenTestScenario(
          name: 'error',
          child: const DSFRBadge(
            label: "error badge",
            type: DSFRBadgeType.error,
          ),
        ),
        GoldenTestScenario(
          name: 'success',
          child: const DSFRBadge(
            label: "success badge",
            type: DSFRBadgeType.success,
          ),
        ),
        GoldenTestScenario(
          name: 'info',
          child: const DSFRBadge(
            label: "info badge",
            type: DSFRBadgeType.info,
          ),
        ),
        GoldenTestScenario(
          name: 'warning',
          child: const DSFRBadge(
            label: "warning badge",
            type: DSFRBadgeType.warning,
          ),
        ),
        GoldenTestScenario(
          name: 'news',
          child: const DSFRBadge(
            label: "news badge",
            type: DSFRBadgeType.news,
          ),
        ),
        GoldenTestScenario(
          name: 'error - icon',
          child: const DSFRBadge(
            label: "error icon",
            type: DSFRBadgeType.error,
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'success - icon',
          child: const DSFRBadge(
            label: "success icon",
            type: DSFRBadgeType.success,
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'info - icon',
          child: const DSFRBadge(
            label: "info icon",
            type: DSFRBadgeType.info,
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'warning - icon',
          child: const DSFRBadge(
            label: "warning icon",
            type: DSFRBadgeType.warning,
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'news - icon',
          child: const DSFRBadge(
            label: "news icon",
            type: DSFRBadgeType.news,
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'error - sm',
          child: const DSFRBadge(
            label: "error sm",
            type: DSFRBadgeType.error,
            size: DSFRBadgeSize.small(),
          ),
        ),
        GoldenTestScenario(
          name: 'success - sm',
          child: const DSFRBadge(
            label: "success sm",
            type: DSFRBadgeType.success,
            size: DSFRBadgeSize.small(),
          ),
        ),
        GoldenTestScenario(
          name: 'info - sm',
          child: const DSFRBadge(
            label: "info sm",
            type: DSFRBadgeType.info,
            size: DSFRBadgeSize.small(),
          ),
        ),
        GoldenTestScenario(
          name: 'warning - sm',
          child: const DSFRBadge(
            label: "warning sm",
            type: DSFRBadgeType.warning,
            size: DSFRBadgeSize.small(),
          ),
        ),
        GoldenTestScenario(
          name: 'news - sm',
          child: const DSFRBadge(
            label: "news sm",
            type: DSFRBadgeType.news,
            size: DSFRBadgeSize.small(),
          ),
        ),
        GoldenTestScenario(
          name: 'error - sm - icon',
          child: const DSFRBadge(
            label: "error sm icon",
            type: DSFRBadgeType.error,
            size: DSFRBadgeSize.small(),
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'success - sm - icon',
          child: const DSFRBadge(
            label: "success sm icon",
            type: DSFRBadgeType.success,
            size: DSFRBadgeSize.small(),
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'info - sm - icon',
          child: const DSFRBadge(
            label: "info sm icon",
            type: DSFRBadgeType.info,
            size: DSFRBadgeSize.small(),
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'warning - sm - icon',
          child: const DSFRBadge(
            label: "warning sm icon",
            type: DSFRBadgeType.warning,
            size: DSFRBadgeSize.small(),
            showIcon: true,
          ),
        ),
        GoldenTestScenario(
          name: 'news - sm - icon',
          child: const DSFRBadge(
            label: "news sm icon",
            type: DSFRBadgeType.news,
            size: DSFRBadgeSize.small(),
            showIcon: true,
          ),
        ),
      ],
    );

    goldenTest(
      'renders light mode',
      fileName: 'badge_light',
      builder: () => widget,
    );

    goldenTest(
      'renders dark mode',
      fileName: 'badge_dark',
      builder: () => DSFRColorsTheme(
        data: const DSFRColors.dark(),
        child: widget,
      ),
    );
  });
}
