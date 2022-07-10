import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ButtonsGroup vertical', () {
    const tSize = Size(250, 100);

    goldenTest(
      'size: ${tSize.width}x${tSize.height}',
      fileName: 'buttons_group_vertical',
      tags: ['golden', 'molecule'],
      pumpBeforeTest: (tester) async {
        await tester.binding.setSurfaceSize(tSize);

        // reset
        await tester.binding.setSurfaceSize(null);
      },
      builder: () => GoldenTestGroup(
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
        ],
      ),
    );
  });

  // goldenTest(
  //   'ButtonsGroup horizontal',
  //   fileName: 'buttons_group_horizontal',
  //   tags: ['golden', 'molecule'],
  //   builder: () => GoldenTestGroup(
  //     columns: 1,
  //     children: [
  //       GoldenTestScenario(
  //         name: 'default',
  //         child: SizedBox(
  //           width: _kWidth,
  //           child: DSFRButtonsGroup(
  //             buttons: [
  //               DSFRPrimaryButton(
  //                 label: 'Label Button',
  //                 onPressed: () {},
  //               ),
  //               DSFRSecondaryButton(
  //                 label: 'Lorem ipsum label très long',
  //                 onPressed: () {},
  //               ),
  //             ],
  //             direction: Axis.horizontal,
  //           ),
  //         ),
  //       ),
  //       GoldenTestScenario(
  //         name: 'icon buttons',
  //         child: SizedBox(
  //           width: _kWidth,
  //           child: DSFRButtonsGroup(
  //             buttons: List<DSFRPrimaryButton>.generate(
  //               6,
  //               (_) => DSFRPrimaryButton.icon(
  //                 icon: const DSFRIcon(DSFRIcons.settings3Line),
  //                 onPressed: () {},
  //               ),
  //             ),
  //             direction: Axis.horizontal,
  //           ),
  //         ),
  //       ),
  //       GoldenTestScenario(
  //         name: 'mixed',
  //         child: SizedBox(
  //           width: _kWidth,
  //           child: DSFRButtonsGroup(
  //             buttons: [
  //               DSFRPrimaryButton(
  //                 label: 'Label Button',
  //                 onPressed: () {},
  //               ),
  //               DSFRSecondaryButton(
  //                 label: 'Label Button',
  //                 onPressed: () {},
  //               ),
  //               DSFRPrimaryButton.icon(
  //                 icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
  //                 onPressed: () {},
  //               ),
  //               DSFRSecondaryButton.icon(
  //                 icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
  //                 onPressed: () {},
  //               ),
  //               DSFRSecondaryButton.icon(
  //                 icon: const DSFRIcon(DSFRIcons.checkboxCircleLine),
  //                 onPressed: () {},
  //               ),
  //             ],
  //             direction: Axis.horizontal,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  // );
}
