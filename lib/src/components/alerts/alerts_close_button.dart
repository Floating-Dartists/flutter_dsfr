import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import '../../theme/icons.dart';
import '../icon/icon.dart';

class AlertsCloseButton extends StatelessWidget {
  const AlertsCloseButton({required this.onClose, super.key});

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
      hoverColor: dsfrColors.alertsCloseButtonHover,
      highlightColor: dsfrColors.alertsCloseButtonHighlight,
      hoverElevation: _elevation,
      focusElevation: _elevation,
      highlightElevation: _elevation,
      focusColor: dsfrColors.alertsCloseButtonHover,
      padding: EdgeInsets.all(
        dsfrSizes.w1,
      ),
      splashColor: dsfrColors.alertsCloseButtonSplash,
      constraints: const BoxConstraints(),
      // textStyle: dsfrTypography.btnLabel.copyWith(color: foregroundColor),
      onPressed: onClose,
      child: DSFRIcon(
        DSFRIcons.closeFill,
        color: dsfrColors.alertsCloseButtonIcon,
        size: dsfrSizes.w2,
      ),
    );
  }
}
