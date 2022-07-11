import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  const isRunningInCi = bool.fromEnvironment('CI', defaultValue: false);

  DSFRTypography.packageName = null;
  DSFRIcons.packageName = null;

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      theme: ThemeData(
        fontFamily: 'Marianne',
        brightness: Brightness.light,
        extensions: [
          DSFRTypography.regular(),
          const DSFRColors.light(),
          const DSFRSizes.regular(),
          const DSFRButtonStyle.regular(),
        ],
      ),
      platformGoldensConfig: const PlatformGoldensConfig(
        enabled: !isRunningInCi,
      ),
    ),
    run: testMain,
  );
}
