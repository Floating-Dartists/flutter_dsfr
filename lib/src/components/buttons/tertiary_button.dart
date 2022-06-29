import 'package:flutter/material.dart';

import 'base_button.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217284660/Boutons+-+Buttons#Bouton-tertiaire
class DSFRTertiaryButton extends DSFRBaseButton {
  const DSFRTertiaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      onPressed: onPressed,
    );
  }
}
