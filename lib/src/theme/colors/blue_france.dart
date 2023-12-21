part of 'colors.dart';

@immutable
class BlueFrance extends DSFRColor {
  const BlueFrance({
    required this.strong,
    required this.softest,
    required this.light,
    required this.lighter,
    required this.lightest,
    required this.main,
    required this.inverted,
  });

  const BlueFrance.light()
      : this(
          strong: ColorPalette.blueFrance113,
          main: ColorPalette.blueFrance525,
          softest: ColorPalette.blueFrance850,
          light: ColorPalette.blueFrance925,
          lighter: ColorPalette.blueFrance950,
          lightest: ColorPalette.blueFrance975,
          inverted: ColorPalette.blueFrance975,
        );

  const BlueFrance.dark()
      : this(
          strong: ColorPalette.blueFrance625,
          main: ColorPalette.blueFrance525,
          softest: ColorPalette.blueFrance200,
          light: ColorPalette.blueFrance125,
          lighter: ColorPalette.blueFrance100,
          lightest: ColorPalette.blueFrance75,
          inverted: ColorPalette.blueFrance113,
        );

  factory BlueFrance.lerp(BlueFrance a, BlueFrance b, double t) {
    return BlueFrance(
      strong: Color.lerp(a.strong, b.strong, t)!,
      main: Color.lerp(a.main, b.main, t)!,
      softest: Color.lerp(a.softest, b.softest, t)!,
      light: Color.lerp(a.light, b.light, t)!,
      lighter: Color.lerp(a.lighter, b.lighter, t)!,
      lightest: Color.lerp(a.lightest, b.lightest, t)!,
      inverted: Color.lerp(a.inverted, b.inverted, t)!,
    );
  }

  final Color strong;
  final Color main;
  final Color softest;
  final Color light;
  final Color lighter;
  final Color lightest;
  final Color inverted;

  @override
  List<NamedProperty<Color>> get props {
    return [
      NamedProperty('strong', strong),
      NamedProperty('main', main),
      NamedProperty('softest', softest),
      NamedProperty('light', light),
      NamedProperty('lighter', lighter),
      NamedProperty('lightest', lightest),
      NamedProperty('inverted', inverted),
    ];
  }
}
