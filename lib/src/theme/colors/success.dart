part of 'colors.dart';

@immutable
class SuccessColor extends DSFRColor {
  const SuccessColor._({
    required this.strong,
    required this.lighter,
  });

  const SuccessColor.light()
      : this._(
          strong: ColorPalette.success425,
          lighter: ColorPalette.success950,
        );

  const SuccessColor.dark()
      : this._(
          strong: ColorPalette.success625,
          lighter: ColorPalette.success100,
        );

  factory SuccessColor.lerp(SuccessColor a, SuccessColor b, double t) {
    return SuccessColor._(
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
