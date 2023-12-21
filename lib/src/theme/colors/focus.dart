part of 'colors.dart';

@immutable
class FocusColor extends DSFRColor {
  const FocusColor._({
    required this.main,
  });

  const FocusColor.light() : this._(main: ColorPalette.focus525);
  const FocusColor.dark() : this._(main: ColorPalette.focus525);

  factory FocusColor.lerp(FocusColor a, FocusColor b, double t) {
    return FocusColor._(
      main: Color.lerp(a.main, b.main, t)!,
    );
  }

  final Color main;

  @override
  List<NamedProperty<Color>> get props {
    return [
      NamedProperty<Color>('main', main),
    ];
  }
}
