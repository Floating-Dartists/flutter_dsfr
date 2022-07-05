import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import 'base_button.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217284660/Boutons+-+Buttons#Bouton-tertiaire
class DSFRTertiaryButton extends DSFRBaseButton {
  final bool noOutline;

  const DSFRTertiaryButton({
    super.key,
    required super.onPressed,
    required super.label,
    super.icon,
    this.noOutline = false,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    return RawMaterialButton(
      elevation: 0,
      fillColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: !noOutline
            ? BorderSide(color: dsfrColors.defaultBorderGrey)
            : BorderSide.none,
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
