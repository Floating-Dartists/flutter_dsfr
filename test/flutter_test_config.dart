import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

import 'utils/font.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  const isRunningInCi = bool.fromEnvironment('CI', defaultValue: false);

  await loadTestFonts();

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      theme: ThemeData(
        fontFamily: 'Marianne',
        brightness: Brightness.light,
        extensions: const [
          DSFRTypography.medium(),
          DSFRColors.light(),
          DSFRSizes.regular(),
          DSFRButtonStyle.regular(),
          DSFRSpacings.medium(),
        ],
      ),
      platformGoldensConfig: const PlatformGoldensConfig(
        enabled: !isRunningInCi,
      ),
    ),
    run: testMain,
  );
}
