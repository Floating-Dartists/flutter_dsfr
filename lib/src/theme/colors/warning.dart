part of 'colors.dart';

@immutable
class WarningColor extends DSFRColor {
  const WarningColor._({
    required this.strong,
    required this.lighter,
  });

  const WarningColor.light()
      : this._(
          strong: ColorPalette.warning425,
          lighter: ColorPalette.warning950,
        );

  const WarningColor.dark()
      : this._(
          strong: ColorPalette.warning625,
          lighter: ColorPalette.warning100,
        );

  factory WarningColor.lerp(WarningColor a, WarningColor b, double t) {
    return WarningColor._(
      strong: Color.lerp(a.strong, b.strong, t)!,
      lighter: Color.lerp(a.lighter, b.lighter, t)!,
    );
  }

  final Color strong;
  final Color lighter;

  @override
  List<NamedProperty<Color>> get props {
    return [
      NamedProperty('strong', strong),
      NamedProperty('lighter', lighter),
    ];
  }
}
