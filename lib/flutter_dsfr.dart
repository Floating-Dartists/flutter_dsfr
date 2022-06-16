library flutter_dsfr;

import 'package:flutter/material.dart';

import 'src/theme_extensions/dsfr_button_style.dart';
import 'src/theme_extensions/dsfr_colors.dart';
import 'src/theme_extensions/dsfr_spacings.dart';
import 'src/theme_extensions/dsfr_text_styles.dart';

export 'src/components/buttons/dsfr_primary_button.dart';
export 'src/components/buttons/france_connect_button.dart'
    hide InfoLinkButton, FranceConnectBase;
export 'src/theme_extensions/dsfr_button_style.dart';
export 'src/theme_extensions/dsfr_colors.dart';
export 'src/theme_extensions/dsfr_spacings.dart';
export 'src/theme_extensions/dsfr_text_styles.dart';

final dsfrExtensionsLight = <ThemeExtension>[
  const DSFRColors.light(),
  DSFRTextStyles.light(),
  const DSFRSpacings.base(),
  const DSFRButtonStyle.light(),
];

final dsfrExtensionsDark = <ThemeExtension>[
  const DSFRColors.dark(),
  DSFRTextStyles.dark(),
  const DSFRSpacings.base(),
  const DSFRButtonStyle.dark(),
];
