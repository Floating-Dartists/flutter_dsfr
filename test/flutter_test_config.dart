// ignore_for_file: avoid_redundant_argument_values

import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

import 'utils/font.dart';

const isRunningInCi = bool.fromEnvironment('CI', defaultValue: false);

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  await loadTestFonts();

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      ciGoldensConfig: const CiGoldensConfig(tolerance: 0.01),
      theme: ThemeData(
        fontFamily: DSFRFonts.marianne,
        brightness: Brightness.light,
        useMaterial3: false,
        extensions: const [
          DSFRThemeData(colors: DSFRColors.light()),
        ],
      ),
      platformGoldensConfig: const PlatformGoldensConfig(
        enabled: !isRunningInCi,
      ),
    ),
    run: testMain,
  );
}
