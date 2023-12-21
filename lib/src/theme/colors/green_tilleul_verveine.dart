part of 'colors.dart';

@immutable
class GreenTilleulVerveine extends DSFRColor {
  const GreenTilleulVerveine._({
    required this.strong,
    required this.main,
    required this.softest,
    required this.light,
    required this.lighter,
    required this.lightest,
  });

  const GreenTilleulVerveine.light()
      : this._(
          strong: ColorPalette.greenTilleulVerveine418,
          main: ColorPalette.greenTilleulVerveine707,
          softest: ColorPalette.greenTilleulVerveine850,
          light: ColorPalette.greenTilleulVerveine925,
          lighter: ColorPalette.greenTilleulVerveine950,
          lightest: ColorPalette.greenTilleulVerveine975,
        );

  const GreenTilleulVerveine.dark()
      : this._(
          strong: ColorPalette.greenTilleulVerveine817,
          main: ColorPalette.greenTilleulVerveine707,
          softest: ColorPalette.greenTilleulVerveine200,
          light: ColorPalette.greenTilleulVerveine125,
          lighter: ColorPalette.greenTilleulVerveine100,
          lightest: ColorPalette.greenTilleulVerveine75,
        );

  factory GreenTilleulVerveine.lerp(
    GreenTilleulVerveine a,
    GreenTilleulVerveine b,
    double t,
  ) {
    return GreenTilleulVerveine._(
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
      NamedProperty<Color>('strong', strong),
      NamedProperty<Color>('main', main),
      NamedProperty<Color>('softest', softest),
      NamedProperty<Color>('light', light),
      NamedProperty<Color>('lighter', lighter),
      NamedProperty<Color>('lightest', lightest),
    ];
  }
}
