part of 'colors.dart';

@immutable
class InfoColor extends DSFRColor {
  const InfoColor._({
    required this.strong,
    required this.lighter,
  });

  const InfoColor.light()
      : this._(
          strong: ColorPalette.info425,
          lighter: ColorPalette.info950,
        );

  const InfoColor.dark()
      : this._(
          strong: ColorPalette.info625,
          lighter: ColorPalette.info100,
        );

  factory InfoColor.lerp(InfoColor a, InfoColor b, double t) {
    return InfoColor._(
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
