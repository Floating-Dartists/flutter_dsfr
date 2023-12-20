import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;

Future<void> main(List<String> args) async {
  final name = prompt('Label name');
  final cwd = Directory.current.path;
  final l10nSrc = Directory(path.join(cwd, 'lib', 'l10n'));

  final frArb = File(path.join(l10nSrc.path, 'flutter_dsfr_fr.arb'));
  final frContent =
      jsonDecode(await frArb.readAsString()) as Map<String, dynamic>;

  if (frContent.containsKey(name)) {
    stderr.writeln('Label "$name" already exists');
    exit(1);
  }

  final description = prompt('Label description');
  final frTranslation = prompt('French translation');

  final files = l10nSrc.listSync().whereType<File>().toList();
  final futures = files.map((file) async {
    final newContent = await addLabel(file, name, description, frTranslation);
    final b = StringBuffer();
    final string = const JsonEncoder.withIndent('  ').convert(newContent);
    b.write(string);
    b.write('\n');

    await file.writeAsString(b.toString());
  });

  await Future.wait(futures);
  stdout.writeln('Done!');
}

String prompt(String tag) {
  stdout.write('$tag?: ');
  final answer = stdin.readLineSync();
  if (answer == null || answer.isEmpty) {
    throw Exception('$tag is required');
  }
  return answer;
}

Future<Map<String, dynamic>> addLabel(
  File file,
  String name,
  String description,
  String frTranslation,
) async {
  final content = jsonDecode(await file.readAsString()) as Map<String, dynamic>;

  return {
    ...content,
    "@@last_modified": DateTime.now().toIso8601String(),
    name: frTranslation,
    "@$name": {"description": description},
  };
}
