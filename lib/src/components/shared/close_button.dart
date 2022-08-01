import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';

/// A close button used in mutliple component
///
/// this is an internal component and shouldn't be exposed
class SharedCloseButton extends StatelessWidget {
  const SharedCloseButton({required this.onClose, super.key});

  final void Function() onClose;
  static const _elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    final dsfrSizes = DSFRSizes.of(context);
    final dsfrColors = DSFRColors.of(context);

    return SizedBox(
      width: dsfrSizes.w3,
      height: dsfrSizes.w3,
      child: RawMaterialButton(
        elevation: _elevation,
        disabledElevation: _elevation,
        fillColor: Colors.transparent,
        constraints: const BoxConstraints(),
        shape: const CircleBorder(
          side: BorderSide.none,
        ),
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
