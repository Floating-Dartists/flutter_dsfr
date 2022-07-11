import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ButtonsGroup vertical', () {
    const tSize = Size(250, 128);

    goldenTest(
      'vertical rendering',
      fileName: 'buttons_group_vertical',
      tags: ['golden', 'molecule'],
      builder: () => GoldenTestGroup(
        columns: 2,
        children: [
          GoldenTestScenario(
            name: 'default',
            child: SizedBox.fromSize(
              size: tSize,
              child: DSFRButtonsGroup(
                buttons: [
                  DSFRPrimaryButton(
                    label: 'Label Button',
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton(
                    label: 'Label Button',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'with MainAxisSize.min',
            child: SizedBox.fromSize(
              size: tSize,
              child: DSFRButtonsGroup(
                buttons: [
                  DSFRPrimaryButton(
                    label: 'Label Button',
                    mainAxisSize: MainAxisSize.min,
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton(
                    label: 'Label Button',
                    mainAxisSize: MainAxisSize.min,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'with center alignment',
            child: SizedBox.fromSize(
              size: tSize,
              child: DSFRButtonsGroup(
                alignment: DSFRButtonsGroupAlignment.center,
                buttons: [
                  DSFRPrimaryButton(
                    label: 'Label Button',
                    mainAxisSize: MainAxisSize.min,
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton(
                    label: 'Label Button',
                    mainAxisSize: MainAxisSize.min,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  });

  group('ButtonsGroup horizontal', () {
    const tSize = Size(450, 50);
    const tSize2 = Size(350, 120);

    goldenTest(
      'horizontal rendering',
      fileName: 'buttons_group_horizontal',
      tags: ['golden', 'molecule'],
      builder: () => GoldenTestGroup(
        columns: 2,
        children: [
          GoldenTestScenario(
            name: 'default',
            child: SizedBox.fromSize(
              size: tSize,
              child: DSFRButtonsGroup(
                direction: Axis.horizontal,
                buttons: [
                  DSFRPrimaryButton(
                    label: 'Label Button',
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton(
                    label: 'Lorem ipsum label très long',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'icon buttons',
            child: SizedBox.fromSize(
              size: tSize,
              child: DSFRButtonsGroup(
                buttons: List<DSFRPrimaryButton>.generate(
                  6,
                  (_) => DSFRPrimaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.settings3Line),
                    onPressed: () {},
                  ),
                ),
                direction: Axis.horizontal,
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'mixed',
            child: SizedBox.fromSize(
              size: tSize2,
              child: DSFRButtonsGroup(
                buttons: [
                  DSFRPrimaryButton(
                    label: 'Label Button',
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton(
                    label: 'Label Button',
                    onPressed: () {},
                  ),
                  DSFRPrimaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                ],
                direction: Axis.horizontal,
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'mixed with right alignment',
            child: SizedBox.fromSize(
              size: tSize2,
              child: DSFRButtonsGroup(
                direction: Axis.horizontal,
                alignment: DSFRButtonsGroupAlignment.right,
                buttons: [
                  DSFRPrimaryButton(
                    label: 'Label Button',
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton(
                    label: 'Label Button',
                    onPressed: () {},
                  ),
                  DSFRPrimaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          GoldenTestScenario(
            name: 'with DSFRButtonsGroupBreakpoint.small',
            child: SizedBox.fromSize(
              size: Size(tSize2.width, tSize2.height + 200),
              child: DSFRButtonsGroup(
                direction: Axis.horizontal,
                breakpoint: DSFRButtonsGroupBreakpoint.small,
                buttons: [
                  DSFRPrimaryButton(
                    label: 'Label Button',
                    mainAxisSize: MainAxisSize.min,
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton(
                    label: 'Label Button',
                    mainAxisSize: MainAxisSize.min,
                    onPressed: () {},
                  ),
                  DSFRPrimaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                  DSFRSecondaryButton.icon(
                    icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  });
}
