import 'package:flutter/material.dart';

import '../../theme/button_style.dart';
import '../../theme/colors.dart';
import '../../theme/sizes.dart';
import '../../theme/typography.dart';
import '../buttons/base_button.dart';

enum DSFRButtonsGroupBreakpoint {
  /// 576px
  small(576),

  /// 768px
  medium(768),

  /// 992px
  large(992);

  final int width;
  const DSFRButtonsGroupBreakpoint(this.width);
}

enum DSFRButtonsGroupAlignment { left, center, right }

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/487915549/Groupe+de+boutons
class DSFRButtonsGroup extends StatelessWidget {
  final Axis? direction;
  final DSFRButtonsGroupAlignment alignment;
  final List<DSFRGroupeableButton> buttons;

  /// By setting a breakpoint, the buttons direction will become vertical if
  /// there is not enough width space.
  final DSFRButtonsGroupBreakpoint? breakpoint;

  /// Reverse the order of buttons.
  final bool reversed;

  const DSFRButtonsGroup({
    super.key,
    required this.buttons,
    this.alignment = DSFRButtonsGroupAlignment.left,
    this.direction,
    this.breakpoint,
    this.reversed = false,
  });

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
        if (groupBreakpoint != null) {
          axis = constraints.maxWidth < groupBreakpoint.width
              ? Axis.vertical
              : Axis.horizontal;
        } else {
          axis = direction ?? Axis.vertical;
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
                  alignment: alignment.toWrapAlignment(),
                  spacing: dsfrSizes.w2,
                  runSpacing: dsfrSizes.w2,
                  children: buttonList,
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

  WrapAlignment toWrapAlignment() {
    switch (this) {
      case DSFRButtonsGroupAlignment.left:
        return WrapAlignment.start;
      case DSFRButtonsGroupAlignment.center:
        return WrapAlignment.center;
      case DSFRButtonsGroupAlignment.right:
        return WrapAlignment.end;
    }
  }
}
