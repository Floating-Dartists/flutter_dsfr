part of 'colors.dart';

@immutable
class GreenEmeraude extends DSFRColor {
  const GreenEmeraude._({
    required this.main,
    required this.strong,
    required this.softest,
    required this.light,
    required this.lighter,
    required this.lightest,
  });

  const GreenEmeraude.light()
      : this._(
          main: ColorPalette.greenEmeraude632,
          strong: ColorPalette.greenEmeraude425,
          softest: ColorPalette.greenEmeraude850,
          light: ColorPalette.greenEmeraude925,
          lighter: ColorPalette.greenEmeraude950,
          lightest: ColorPalette.greenEmeraude975,
        );

  const GreenEmeraude.dark()
      : this._(
          main: ColorPalette.greenEmeraude632,
          strong: ColorPalette.greenEmeraude753,
          softest: ColorPalette.greenEmeraude200,
          light: ColorPalette.greenEmeraude125,
          lighter: ColorPalette.greenEmeraude100,
          lightest: ColorPalette.greenEmeraude75,
        );

  factory GreenEmeraude.lerp(GreenEmeraude a, GreenEmeraude b, double t) {
    return GreenEmeraude._(
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
