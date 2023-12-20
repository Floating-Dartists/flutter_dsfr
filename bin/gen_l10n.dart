import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;

Future<void> main() async {
  final cwd = Directory.current.path;
  final l10nSrc = Directory(path.join(cwd, 'lib', 'l10n'));
  final outDir = Directory(path.join(cwd, 'lib', 'src', 'gen'));

  if (!outDir.existsSync()) {
    outDir.createSync(recursive: true);
  }

  final readFutures = await l10nSrc.list().map((event) {
    final file = File(event.path);
    return file.openRead().transform(utf8.decoder).toList();
  }).toList();

  final sources = await Future.wait(readFutures);

  final labelsByLocale = sources.fold<Map<String, dynamic>>({}, (acc, lines) {
    final fullSrc = lines.join();
    final arbJson = jsonDecode(fullSrc) as Map<String, dynamic>;
    final localeString = arbJson['@@locale'] as String;

    final parsed = localeString.split('_');

    return {
      ...acc,
      parsed[0]: {
        ...(acc[parsed[0]] as Map<String, dynamic>?) ?? <String, dynamic>{},
        if (parsed.length > 1) parsed[1]: arbJson else 'default': arbJson,
      },
    };
  });

  final licenseHeader = await getLicenseHeader();
}

Future<String> getLicenseHeader() async {
  final licenseFile = File(path.join(Directory.current.path, 'LICENSE'));
  final licenseLines = await licenseFile.readAsLines();
  return licenseLines.join('\n');
}
