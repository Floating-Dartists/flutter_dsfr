import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';

class AlertCloseButton extends StatelessWidget {
  const AlertCloseButton({required this.onClose, super.key});

  final void Function() onClose;
  static const _elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    final dsfrSizes = DSFRSizes.of(context);
    final dsfrColors = DSFRColors.of(context);

    return RawMaterialButton(
      elevation: _elevation,
      disabledElevation: _elevation,
      fillColor: Colors.transparent,
      shape: const CircleBorder(
        side: BorderSide.none,
      ),
      hoverColor: dsfrColors.hover,
      highlightColor: dsfrColors.active,
      hoverElevation: _elevation,
      focusElevation: _elevation,
      highlightElevation: _elevation,
      focusColor: dsfrColors.hover,
      padding: EdgeInsets.all(
        dsfrSizes.w1,
      ),
      splashColor: dsfrColors.splash,
      constraints: const BoxConstraints(),
      onPressed: onClose,
      child: DSFRIcon(
        DSFRIcons.closeFill,
        color: dsfrColors.alertsCloseButtonIcon,
        size: dsfrSizes.w2,
      ),
    );
  }
}
