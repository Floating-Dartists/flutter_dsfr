import 'package:flutter/services.dart';
import 'package:flutter_dsfr/src/fonts.dart';
import 'package:flutter_test/flutter_test.dart';

/// This loads fonts for the test runner.
Future<void> loadTestFonts() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  await _loadFamily(
    'flutter_dsfr',
    DSFRFonts.marianne,
    [
      'fonts/Marianne/Marianne-Thin.otf',
      'fonts/Marianne/Marianne-ThinItalic.otf',
      'fonts/Marianne/Marianne-Light.otf',
      'fonts/Marianne/Marianne-LightItalic.otf',
      'fonts/Marianne/Marianne-Regular.otf',
      'fonts/Marianne/Marianne-RegularItalic.otf',
      'fonts/Marianne/Marianne-Medium.otf',
      'fonts/Marianne/Marianne-MediumItalic.otf',
      'fonts/Marianne/Marianne-Bold.otf',
      'fonts/Marianne/Marianne-BoldItalic.otf',
      'fonts/Marianne/Marianne-ExtraBold.otf',
      'fonts/Marianne/Marianne-ExtraBoldItalic.otf',
    ],
  );
  await _loadFamily(
    'flutter_dsfr',
    DSFRFonts.spectral,
    [
      'fonts/Spectral/Spectral-Light.ttf',
      'fonts/Spectral/Spectral-LightItalic.ttf',
      'fonts/Spectral/Spectral-Regular.ttf',
      'fonts/Spectral/Spectral-Italic.ttf',
    ],
  );
  await _loadFamily('flutter_dsfr', 'Remix Icon', ['icons/remixicon.ttf']);
}

Future<void> _loadFamily(
  String package,
  String name,
  List<String> assets,
) async {
  final prefix = 'packages/$package/';
  final fontLoader = FontLoader('$prefix$name');

  for (final asset in assets) {
    final bytes = rootBundle.load('$prefix$asset');
    fontLoader.addFont(bytes);
  }
  await fontLoader.load();
}
