import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/theme/colors.dart';
import 'package:flutter_dsfr/src/utils/named_property.dart';

void main() {
  goldenTest(
    'DSFRColors.light',
    fileName: 'colors_light',
    tags: ['golden', 'light'],
    builder: () {
      final props =
          const DSFRColors.light().props.expand<NamedProperty<Color>>((e) {
        final property = e.property;
        return switch (property) {
          Color() => [NamedProperty(e.name, property)],
          DSFRColor() => property.props,
          _ => throw Exception('Unsuported type ${e.runtimeType}'),
        };
      });

      return GoldenTestGroup(
        children: props
            .map<GoldenTestScenario>(
              (e) => GoldenTestScenario(
                name: e.name,
                child: _ColoredTile(e.property),
              ),
            )
            .toList(),
      );
    },
  );

  goldenTest(
    'DSFRColors.dark',
    fileName: 'colors_dark',
    tags: ['golden', 'dark'],
    builder: () {
      final props =
          const DSFRColors.dark().props.expand<NamedProperty<Color>>((e) {
        final property = e.property;
        return switch (property) {
          Color() => [NamedProperty(e.name, property)],
          DSFRColor() => property.props,
          _ => throw Exception('Unsuported type ${e.runtimeType}'),
        };
      });

      return GoldenTestGroup(
        children: props
            .map<GoldenTestScenario>(
              (e) => GoldenTestScenario(
                name: e.name,
                child: _ColoredTile(e.property),
              ),
            )
            .toList(),
      );
    },
  );
}

class _ColoredTile extends StatelessWidget {
  const _ColoredTile(this.color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: color,
    );
  }
}
