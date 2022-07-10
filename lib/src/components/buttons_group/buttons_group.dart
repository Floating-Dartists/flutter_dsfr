import 'package:flutter/material.dart';

import '../../theme/button_style.dart';
import '../../theme/colors.dart';
import '../../theme/sizes.dart';
import '../../theme/typography.dart';
import '../buttons/base_button.dart';

enum DSFRButtonsGroupBreakpoint {
  small(576),
  medium(768),
  large(992);

  final int width;
  const DSFRButtonsGroupBreakpoint(this.width);
}

enum DSFRButtonsGroupAlignment { left, center, right }

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/487915549/Groupe+de+boutons
class DSFRButtonsGroup extends StatelessWidget {
  final Axis? direction;
  final DSFRButtonsGroupAlignment alignment;
  final List<GroupeableButton> buttons;
  final DSFRButtonsGroupBreakpoint? breakpoint;
  final bool reversed;

  const DSFRButtonsGroup({
    super.key,
    required this.buttons,
    this.alignment = DSFRButtonsGroupAlignment.left,
    this.direction,
    this.breakpoint,
    this.reversed = false,
  }) : assert(
          direction == null || breakpoint == null,
          "You can't use both direction and breakpoint",
        );

  @override
  Widget build(BuildContext context) {
    final dsfrSizes = DSFRSizes.of(context);
    final dsfrColors = DSFRColors.of(context);
    final dsfrTypography = DSFRTypography.of(context);
    final dsfrButtonStyle = DSFRButtonStyle.of(context);
    final currentTheme = Theme.of(context);

    final buttonList = reversed ? buttons.reversed.toList() : buttons;

    return LayoutBuilder(
      builder: (_, constraints) {
        final Axis axis;
        final groupBreakpoint = breakpoint;
        if (direction != null) {
          axis = direction!;
        } else if (groupBreakpoint != null) {
          axis = constraints.maxWidth < groupBreakpoint.width
              ? Axis.horizontal
              : Axis.vertical;
        } else {
          axis = Axis.vertical;
        }
        return Theme(
          data: currentTheme.copyWith(
            extensions: [
              dsfrSizes,
              dsfrColors,
              dsfrTypography,
              dsfrButtonStyle.copyWith(
                mainAxisSize:
                    axis == Axis.vertical ? MainAxisSize.max : MainAxisSize.min,
              ),
            ],
          ),
          child: axis == Axis.vertical
              ? Column(
                  crossAxisAlignment: alignment.toCrossAxisAlignment(),
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final e in buttonList) ...[
                      e,
                      SizedBox(height: dsfrSizes.w2),
                    ]
                  ],
                )
              : Wrap(
                  spacing: dsfrSizes.w2,
                  runSpacing: dsfrSizes.w2,
                  children: buttons,
                ),
        );
      },
    );
  }
}

extension on DSFRButtonsGroupAlignment {
  CrossAxisAlignment toCrossAxisAlignment() {
    switch (this) {
      case DSFRButtonsGroupAlignment.left:
        return CrossAxisAlignment.start;
      case DSFRButtonsGroupAlignment.center:
        return CrossAxisAlignment.center;
      case DSFRButtonsGroupAlignment.right:
        return CrossAxisAlignment.end;
    }
  }
}
