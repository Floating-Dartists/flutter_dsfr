part of 'colors.dart';

@immutable
class RedMarianne extends DSFRColor {
  const RedMarianne({
    required this.strong,
    required this.softest,
    required this.light,
    required this.lighter,
    required this.lightest,
    required this.main,
  });

  const RedMarianne.light()
      : this(
          strong: ColorPalette.redMarianne425,
          main: ColorPalette.redMarianne472,
          softest: ColorPalette.redMarianne850,
          light: ColorPalette.redMarianne925,
          lighter: ColorPalette.redMarianne950,
          lightest: ColorPalette.redMarianne975,
        );

  const RedMarianne.dark()
      : this(
          strong: ColorPalette.redMarianne625,
          main: ColorPalette.redMarianne472,
          softest: ColorPalette.redMarianne200,
          light: ColorPalette.redMarianne125,
          lighter: ColorPalette.redMarianne100,
          lightest: ColorPalette.redMarianne75,
        );

  factory RedMarianne.lerp(RedMarianne a, RedMarianne b, double t) {
    return RedMarianne(
      strong: Color.lerp(a.strong, b.strong, t)!,
      main: Color.lerp(a.main, b.main, t)!,
      softest: Color.lerp(a.softest, b.softest, t)!,
      light: Color.lerp(a.light, b.light, t)!,
      lighter: Color.lerp(a.lighter, b.lighter, t)!,
      lightest: Color.lerp(a.lightest, b.lightest, t)!,
    );
  }

  final Color strong;
  final Color main;
  final Color softest;
  final Color light;
  final Color lighter;
  final Color lightest;

  @override
  List<NamedProperty<Color>> get props {
    return [
      NamedProperty('strong', strong),
      NamedProperty('main', main),
      NamedProperty('softest', softest),
      NamedProperty('light', light),
      NamedProperty('lighter', lighter),
      NamedProperty('lightest', lightest),
    ];
  }
}
