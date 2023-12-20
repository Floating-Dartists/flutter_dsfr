import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

/// {@template dsfr_fr_connect_button}
/// A close button used in mutliple component
///
/// this is an internal component and shouldn't be exposed
/// {@endtemplate}
class SharedCloseButton extends StatelessWidget {
  /// {@macro dsfr_fr_connect_button}
  const SharedCloseButton({required this.onClose, super.key});

  final VoidCallback onClose;

  static const _elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrSizes = dsfrTheme.sizes;
    final dsfrColors = dsfrTheme.colors;

    return SizedBox(
      width: dsfrSizes.w3,
      height: dsfrSizes.w3,
      child: RawMaterialButton(
        elevation: _elevation,
        fillColor: Colors.transparent,
        constraints: const BoxConstraints(),
        shape: const CircleBorder(),
        hoverColor: dsfrColors.hover,
        highlightColor: dsfrColors.active,
        hoverElevation: _elevation,
        focusElevation: _elevation,
        highlightElevation: _elevation,
        focusColor: dsfrColors.hover,
        splashColor: dsfrColors.splash,
        onPressed: onClose,
        child: Icon(
          DSFRIcons.closeFill,
          color: dsfrColors.alertsCloseButtonIcon,
          size: dsfrSizes.w2,
        ),
      ),
    );
  }
}
