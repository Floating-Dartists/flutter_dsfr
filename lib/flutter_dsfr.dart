library flutter_dsfr;

import 'package:flutter/material.dart';

import 'src/theme/button_style.dart';
import 'src/theme/colors.dart';
import 'src/theme/sizes.dart';
import 'src/theme/typography.dart';

export 'src/components/accordion/accordion.dart';
export 'src/components/accordion/accordion_data.dart';
export 'src/components/alerts/alert.dart';
export 'src/components/alerts/alert_type.dart';
export 'src/components/alerts/small_alert.dart';
export 'src/components/badges/badge.dart';
export 'src/components/badges/badge_size.dart';
export 'src/components/badges/badge_type.dart';
export 'src/components/banners/banner.dart';
export 'src/components/buttons/base_button.dart'
    hide DSFRBaseButton, DSFRGroupeableButton;
export 'src/components/buttons/france_connect_button.dart'
    hide InfoLinkButton, FranceConnectBase;
export 'src/components/buttons/primary_button.dart';
export 'src/components/buttons/secondary_button.dart';
export 'src/components/buttons/tertiary_button.dart';
export 'src/components/buttons_group/buttons_group.dart';
export 'src/components/icon/icon.dart';
export 'src/theme/button_style.dart';
export 'src/theme/colors.dart';
export 'src/theme/icons.dart';
export 'src/theme/sizes.dart';
export 'src/theme/typography.dart';

/// Provides the default [ThemeExtension] for the flutter_dsfr theme in light
/// mode.
final dsfrExtensionsLight = <ThemeExtension>[
  const DSFRColors.light(),
  DSFRTypography.regular(),
  const DSFRSizes.regular(),
  const DSFRButtonStyle.regular(),
];

/// Provides the default [ThemeExtension] for the flutter_dsfr theme in dark
/// mode.
final dsfrExtensionsDark = <ThemeExtension>[
  const DSFRColors.dark(),
  DSFRTypography.regular(),
  const DSFRSizes.regular(),
  const DSFRButtonStyle.regular(),
];
