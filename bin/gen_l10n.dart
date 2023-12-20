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

  final genOps = labelsByLocale.entries.map((e) {
    final value = e.value as Map<String, dynamic>;
    if (value.length == 1) {
      return [
        generateLocalizationsClass(
          locale: e.key,
          arb: value['default'] as Map<String, dynamic>,
        ),
      ];
    }

    return [
      generateLocalizationsClass(
        locale: e.key,
        arb: value['default'] as Map<String, dynamic>,
      ),
      ...value.entries.where((element) => element.key != 'default').map((e) {
        return generateLocalizationsClass(
          locale: e.key,
          countryCode: e.key,
          arb: value,
        );
      }),
    ];
  }).expand((e) => e);

  await Future.wait(genOps);

  await generateDefaultLocalizations(
    ((labelsByLocale['fr'] as Map<String, dynamic>)['default'] as Map)
        .cast<String, dynamic>(),
  );

  Process.runSync('dart', ['format', outDir.path]);
}

Future<void> generateLocalizationsClass({
  required String locale,
  required Map<String, dynamic> arb,
  String? countryCode,
}) async {
  final filename = dartFilename(locale, countryCode);
  final outFile = File(path.join('lib', 'src', 'gen', 'lang', filename));

  if (!outFile.existsSync()) {
    outFile.createSync(recursive: true);
  }

  final out = outFile.openWrite()
    ..writeln('// coverage:ignore-file')
    ..writeln('// GENERATED CODE - DO NOT MODIFY BY HAND')
    ..writeln('// ignore_for_file: ${ignoredRules.join(', ')}')
    ..writeln()
    ..writeln("import '../default_localizations.dart';");

  final labels = arb.entries.where(isLabelEntry).map((e) {
    final meta = arb['@${e.key}'] as Map<String, dynamic>? ?? {};
    return Label(
      key: e.key,
      translation: e.value as String,
      description: meta['description'] as String?,
    );
  }).toList()
    ..sort((a, b) => a.key.compareTo(b.key));

  out.writeln();

  final className = dartClassName(locale, countryCode);

  out
    ..writeln('class $className extends DSFRLocalizationLabels {')
    ..writeln('  const $className();');

  for (final label in labels) {
    final escapedTranslation = label.translation.contains('"')
        ? '"""${label.translation}"""'
        : '"${label.translation}"';

    out
      ..writeln()
      ..writeln('  @override')
      ..writeln('  String get ${label.key} => $escapedTranslation;');
  }

  out.writeln('}');

  await out.flush();
  await out.close();
}

Future<void> generateDefaultLocalizations(Map<String, dynamic> arb) async {
  final labels = arb.entries.where(isLabelEntry).map((e) {
    final meta = arb['@${e.key}'] as Map<String, dynamic>? ?? {};

    return Label(
      key: e.key,
      translation: e.value as String,
      description: meta['description'] as String?,
    );
  }).toList()
    ..sort((a, b) => a.key.compareTo(b.key));

  final content = await getDefaultLocalizationsContent(labels);
  final outFile = File(
    path.join('lib', 'src', 'gen', 'default_localizations.dart'),
  );

  if (!outFile.existsSync()) {
    outFile.createSync(recursive: true);
  }

  final out = outFile.openWrite()..write(content);
  await out.flush();
  await out.close();
}

String dartFilename(String locale, [String? countryCode]) {
  return '$locale'
      '${countryCode != null ? '_${countryCode.toLowerCase()}' : ''}'
      '.dart';
}

String dartClassName(String locale, [String? countryCode]) {
  return '${locale.capitalize()}'
      '${countryCode?.capitalize() ?? ''}Localizations';
}

bool isLabelEntry(MapEntry<String, dynamic> entry) {
  return !entry.key.startsWith('@');
}

Future<String> getDefaultLocalizationsContent(List<Label> labels) async {
  final sb = StringBuffer()
    ..writeln(defaultLocalizationsHeader)
    ..writeln('abstract class DSFRLocalizationLabels {')
    ..writeln('  const DSFRLocalizationLabels();');

  for (final label in labels) {
    sb.writeln();
    if (label.description case final description? when description.isNotEmpty) {
      const prefix = '  /// ';
      for (final line in breakIntoLines(description, 80 - prefix.length)) {
        sb.writeln('$prefix$line');
      }
    }
    sb.writeln('  String get ${label.key};');
  }

  sb
    ..writeln('}')
    ..writeln()
    ..writeln(defaultLocalizationsFooter);

  return sb.toString();
}

Iterable<String> breakIntoLines(String string, int lineLength) sync* {
  final words = string.split(' ');

  var currentLine = StringBuffer();
  for (final word in words) {
    if (currentLine.length + word.length > lineLength) {
      yield currentLine.toString();
      currentLine = StringBuffer();
    }

    currentLine.write('$word ');
  }

  if (currentLine.isNotEmpty) {
    yield currentLine.toString();
  }
}

class Label {
  const Label({
    required this.key,
    required this.translation,
    this.description,
  });

  final String key;
  final String translation;
  final String? description;
}

const ignoredRules = <String>{
  'non_constant_identifier_names',
  'always_use_package_imports',
};

final defaultLocalizationsHeader = '''
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: ${ignoredRules.join(', ')}

import 'package:flutter/material.dart';

import 'lang/fr.dart';

/// An abstract class containing all labels that concrete languages should
/// provide.
///
/// The easiest way to override some of these labels is to provide
/// an object that extends [DefaultLocalizations] and pass it to the
/// [MaterialApp.localizationsDelegates].
///
/// ```dart
/// import 'package:flutter_dsfr/flutter_dsfr.dart';
///
/// class LabelOverrides extends DefaultLocalizations {
///   const LabelOverrides();
///
///   @override
///   String get auth => 'Authenticate with';
/// }
///
/// MaterialApp(
///   // ...
///   localizationsDelegates: [
///     DSFRLocalizations.withDefaultOverrides(const LabelOverrides()),
///     GlobalMaterialLocalizations.delegate,
///     GlobalWidgetsLocalizations.delegate,
///     DSFRLocalizations.delegate,
///   ],
/// )
/// ```''';

const defaultLocalizationsFooter = '''
class DefaultLocalizations extends FrLocalizations {
  const DefaultLocalizations();
}
''';

extension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
