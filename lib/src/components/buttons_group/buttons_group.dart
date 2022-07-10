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

class DSFRButtonsGroup extends StatelessWidget {
  final Axis? direction;
  final List<GroupeableButton> buttons;
  final DSFRButtonsGroupBreakpoint? breakpoint;

  const DSFRButtonsGroup({
    super.key,
    required this.buttons,
    this.direction,
    this.breakpoint,
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

    // return Theme(
    //   data: currentTheme.copyWith(
    //     extensions: [
    //       dsfrSizes,
    //       dsfrColors,
    //       dsfrTypography,
    //       dsfrButtonStyle, // TODO manage button's width when vertical
    //     ],
    //   ),
    //   child: Wrap(
    //     direction: direction ?? Axis.vertical, // TODO: manage breakpoint
    //     spacing: dsfrSizes.w2,
    //     runSpacing: dsfrSizes.w2,
    //     children: buttons,
    //   ),
    // );

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
                  mainAxisSize: MainAxisSize.min,
                  children: buttons,
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
