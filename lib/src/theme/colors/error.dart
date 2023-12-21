part of 'colors.dart';

@immutable
class ErrorColor extends DSFRColor {
  const ErrorColor._({
    required this.strong,
    required this.lighter,
  });

  const ErrorColor.light()
      : this._(
          strong: ColorPalette.error425,
          lighter: ColorPalette.error950,
        );

  const ErrorColor.dark()
      : this._(
          strong: ColorPalette.error625,
          lighter: ColorPalette.error100,
        );

  factory ErrorColor.lerp(ErrorColor a, ErrorColor b, double t) {
    return ErrorColor._(
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
