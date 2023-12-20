import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/buttons/base_button.dart';

enum DSFRButtonsGroupBreakpoint {
  /// 576px
  small(576),

  /// 768px
  medium(768),

  /// 992px
  large(992);

  const DSFRButtonsGroupBreakpoint(this.width);

  final int width;
}

enum DSFRButtonsGroupAlignment { left, center, right }

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/487915549/Groupe+de+boutons
class DSFRButtonsGroup extends StatelessWidget {
  const DSFRButtonsGroup({
    super.key,
    required this.buttons,
    this.alignment = DSFRButtonsGroupAlignment.left,
    this.direction,
    this.breakpoint,
    this.reversed = false,
  });
  final Axis? direction;
  final DSFRButtonsGroupAlignment alignment;
  final List<DSFRGroupeableButton> buttons;

  /// By setting a breakpoint, the buttons direction will become vertical if
  /// there is not enough width space.
  final DSFRButtonsGroupBreakpoint? breakpoint;

  /// Reverse the order of buttons.
  final bool reversed;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrSizes = dsfrTheme.sizes;
    final dsfrButtonStyle = dsfrTheme.buttonStyle;

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
        return DSFRThemeWidget(
          data: dsfrTheme.copyWith(
            buttonStyle: dsfrButtonStyle.copyWith(
              mainAxisSize:
                  axis == Axis.vertical ? MainAxisSize.max : MainAxisSize.min,
            ),
          ),
          child: axis == Axis.vertical
              ? Column(
                  crossAxisAlignment: alignment.toCrossAxisAlignment(),
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final e in buttonList) ...[
                      e,
                      SizedBox(height: dsfrSizes.w2),
                    ],
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
