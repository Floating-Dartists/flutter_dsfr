library flutter_dsfr;

import 'package:flutter/material.dart';
import 'src/theme_extensions/dsfr_colors.dart';
import 'src/theme_extensions/dsfr_spacings.dart';
import 'src/theme_extensions/dsfr_text_styles.dart';

export 'src/components/buttons/france_connect_button.dart'
    hide InfoLinkButton, FranceConnectBase;
export 'src/theme_extensions/dsfr_colors.dart';
export 'src/theme_extensions/dsfr_spacings.dart';
export 'src/theme_extensions/dsfr_text_styles.dart';

final dsfrExtensionsLight = <ThemeExtension>[
  const DSFRColors.light(),
  DSFRTextStyles.light(),
  const DSFRSpacings.base(),
];

final dsfrExtensionsDark = <ThemeExtension>[
  const DSFRColors.dark(),
  DSFRTextStyles.dark(),
  const DSFRSpacings.base(),
];
