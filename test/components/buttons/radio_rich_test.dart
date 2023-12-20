import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

void main() {
  const image = SizedBox(
    width: 80,
    height: 80,
    child: ColoredBox(
      color: Color(0xFF0063CB),
    ),
  );

  goldenTest(
    'light rich radio button widget rendering',
    fileName: 'radio_rich_light',
    tags: ['golden', 'light', 'atom'],
    builder: () => GoldenTestGroup(
      columns: 1,
      children: [
        GoldenTestScenario(
          name: 'unselected',
          child: DSFRRadioRich<bool>(
            label: 'Label radio',
            value: true,
            groupValue: false,
            onChanged: (_) {},
            image: image,
          ),
        ),
        GoldenTestScenario(
          name: 'selected',
          child: DSFRRadioRich<bool>(
            label: 'Label radio',
            value: true,
            groupValue: true,
            onChanged: (_) {},
            image: image,
          ),
        ),
        GoldenTestScenario(
          name: 'disabled',
          child: const DSFRRadioRich<bool>(
            label: 'Label radio',
            value: true,
            groupValue: false,
            onChanged: null,
            image: image,
          ),
        ),
      ],
    ),
  );
}
