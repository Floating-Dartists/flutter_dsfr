part of 'colors.dart';

@immutable
class GreenBourgeon extends DSFRColor {
  const GreenBourgeon._({
    required this.main,
    required this.strong,
    required this.softest,
    required this.light,
    required this.lighter,
    required this.lightest,
  });

  const GreenBourgeon.light()
      : this._(
          main: ColorPalette.greenBourgeon640,
          strong: ColorPalette.greenBourgeon425,
          softest: ColorPalette.greenBourgeon850,
          light: ColorPalette.greenBourgeon925,
          lighter: ColorPalette.greenBourgeon950,
          lightest: ColorPalette.greenBourgeon975,
        );

  const GreenBourgeon.dark()
      : this._(
          main: ColorPalette.greenBourgeon640,
          strong: ColorPalette.greenBourgeon759,
          softest: ColorPalette.greenBourgeon200,
          light: ColorPalette.greenBourgeon125,
          lighter: ColorPalette.greenBourgeon100,
          lightest: ColorPalette.greenBourgeon75,
        );

  factory GreenBourgeon.lerp(GreenBourgeon a, GreenBourgeon b, double t) {
    return GreenBourgeon._(
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
