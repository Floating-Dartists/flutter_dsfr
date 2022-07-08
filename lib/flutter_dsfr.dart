library flutter_dsfr;

import 'package:flutter/material.dart';

import 'src/theme/colors.dart';
import 'src/theme/sizes.dart';
import 'src/theme/typography.dart';

export 'src/components/alerts/alerts.dart';
export 'src/components/alerts/alerts_type.dart';
export 'src/components/alerts/small_alerts.dart';
export 'src/components/buttons/base_button.dart' hide DSFRBaseButton;
export 'src/components/buttons/france_connect_button.dart'
    hide InfoLinkButton, FranceConnectBase;
export 'src/components/buttons/primary_button.dart';
export 'src/components/buttons/secondary_button.dart';
export 'src/components/buttons/tertiary_button.dart';
export 'src/theme/button_style.dart';
export 'src/theme/colors.dart';
export 'src/theme/sizes.dart';
export 'src/theme/typography.dart';

/// Provides the default [ThemeExtension] for the flutter_dsfr theme in light
/// mode.
final dsfrExtensionsLight = <ThemeExtension>[
  const DSFRColors.light(),
  DSFRTypography.regular(),
  const DSFRSizes.regular(),
];

/// Provides the default [ThemeExtension] for the flutter_dsfr theme in dark
/// mode.
final dsfrExtensionsDark = <ThemeExtension>[
  const DSFRColors.dark(),
  DSFRTypography.regular(),
  const DSFRSizes.regular(),
];
