part of 'colors.dart';

@immutable
class Grey extends DSFRColor {
  const Grey({
    required this.strong,
    required this.softest,
    required this.light,
    required this.lighter,
    required this.lightest,
    required this.black,
    required this.strongest,
    required this.soft,
    required this.distinct,
    required this.white,
    required this.raised,
    required this.overlap,
    required this.lifted,
    required this.altRaised,
    required this.altOverlap,
    required this.contrastRaised,
    required this.contrastOverlap,
  });

  const Grey.light()
      : this(
          strong: ColorPalette.grey425,
          softest: ColorPalette.grey850,
          light: ColorPalette.grey925,
          lighter: ColorPalette.grey950,
          lightest: ColorPalette.grey975,
          black: ColorPalette.grey50,
          strongest: ColorPalette.grey200,
          soft: ColorPalette.grey625,
          distinct: ColorPalette.grey900,
          white: ColorPalette.grey1000,
          raised: ColorPalette.grey1000,
          overlap: ColorPalette.grey1000,
          lifted: ColorPalette.grey1000,
          altRaised: ColorPalette.grey975,
          altOverlap: ColorPalette.grey975,
          contrastRaised: ColorPalette.grey950,
          contrastOverlap: ColorPalette.grey950,
        );

  const Grey.dark()
      : this(
          strong: ColorPalette.grey625,
          softest: ColorPalette.grey200,
          light: ColorPalette.grey125,
          lighter: ColorPalette.grey100,
          lightest: ColorPalette.grey75,
          black: ColorPalette.grey1000,
          strongest: ColorPalette.grey850,
          soft: ColorPalette.grey425,
          distinct: ColorPalette.grey175,
          white: ColorPalette.grey50,
          raised: ColorPalette.grey75,
          overlap: ColorPalette.grey100,
          lifted: ColorPalette.grey75,
          altRaised: ColorPalette.grey100,
          altOverlap: ColorPalette.grey125,
          contrastRaised: ColorPalette.grey125,
          contrastOverlap: ColorPalette.grey150,
        );

  factory Grey.lerp(Grey a, Grey b, double t) {
    return Grey(
      strong: Color.lerp(a.strong, b.strong, t)!,
      softest: Color.lerp(a.softest, b.softest, t)!,
      light: Color.lerp(a.light, b.light, t)!,
      lighter: Color.lerp(a.lighter, b.lighter, t)!,
      lightest: Color.lerp(a.lightest, b.lightest, t)!,
      black: Color.lerp(a.black, b.black, t)!,
      strongest: Color.lerp(a.strongest, b.strongest, t)!,
      soft: Color.lerp(a.soft, b.soft, t)!,
      distinct: Color.lerp(a.distinct, b.distinct, t)!,
      white: Color.lerp(a.white, b.white, t)!,
      raised: Color.lerp(a.raised, b.raised, t)!,
      overlap: Color.lerp(a.overlap, b.overlap, t)!,
      lifted: Color.lerp(a.lifted, b.lifted, t)!,
      altRaised: Color.lerp(a.altRaised, b.altRaised, t)!,
      altOverlap: Color.lerp(a.altOverlap, b.altOverlap, t)!,
      contrastRaised: Color.lerp(a.contrastRaised, b.contrastRaised, t)!,
      contrastOverlap: Color.lerp(a.contrastOverlap, b.contrastOverlap, t)!,
    );
  }

  final Color black;
  final Color strongest;
  final Color strong;
  final Color soft;
  final Color softest;
  final Color distinct;
  final Color light;
  final Color lighter;
  final Color lightest;
  final Color white;
  final Color raised;
  final Color overlap;
  final Color lifted;
  final Color altRaised;
  final Color altOverlap;
  final Color contrastRaised;
  final Color contrastOverlap;

  @override
  List<NamedProperty<Color>> get props {
    return [
      NamedProperty('black', black),
      NamedProperty('strongest', strongest),
      NamedProperty('strong', strong),
      NamedProperty('soft', soft),
      NamedProperty('softest', softest),
      NamedProperty('distinct', distinct),
      NamedProperty('light', light),
      NamedProperty('lighter', lighter),
      NamedProperty('lightest', lightest),
      NamedProperty('white', white),
      NamedProperty('raised', raised),
      NamedProperty('overlap', overlap),
      NamedProperty('lifted', lifted),
      NamedProperty('altRaised', altRaised),
      NamedProperty('altOverlap', altOverlap),
      NamedProperty('contrastRaised', contrastRaised),
      NamedProperty('contrastOverlap', contrastOverlap),
    ];
  }
}
