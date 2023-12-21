part of 'colors.dart';

@immutable
class GreenMenthe extends DSFRColor {
  const GreenMenthe._({
    required this.main,
    required this.strong,
    required this.softest,
    required this.light,
    required this.lighter,
    required this.lightest,
  });

  const GreenMenthe.light()
      : this._(
          main: ColorPalette.greenMenthe548,
          strong: ColorPalette.greenMenthe373,
          softest: ColorPalette.greenMenthe850,
          light: ColorPalette.greenMenthe925,
          lighter: ColorPalette.greenMenthe950,
          lightest: ColorPalette.greenMenthe975,
        );

  const GreenMenthe.dark()
      : this._(
          main: ColorPalette.greenMenthe548,
          strong: ColorPalette.greenMenthe652,
          softest: ColorPalette.greenMenthe200,
          light: ColorPalette.greenMenthe125,
          lighter: ColorPalette.greenMenthe100,
          lightest: ColorPalette.greenMenthe75,
        );

  factory GreenMenthe.lerp(GreenMenthe a, GreenMenthe b, double t) {
    return GreenMenthe._(
      main: Color.lerp(a.main, b.main, t)!,
      strong: Color.lerp(a.strong, b.strong, t)!,
      softest: Color.lerp(a.softest, b.softest, t)!,
      light: Color.lerp(a.light, b.light, t)!,
      lighter: Color.lerp(a.lighter, b.lighter, t)!,
      lightest: Color.lerp(a.lightest, b.lightest, t)!,
    );
  }

  final Color main;
  final Color strong;
  final Color softest;
  final Color light;
  final Color lighter;
  final Color lightest;

  @override
  List<NamedProperty<Color>> get props {
    return [
      NamedProperty<Color>('main', main),
      NamedProperty<Color>('strong', strong),
      NamedProperty<Color>('softest', softest),
      NamedProperty<Color>('light', light),
      NamedProperty<Color>('lighter', lighter),
      NamedProperty<Color>('lightest', lightest),
    ];
  }
}
