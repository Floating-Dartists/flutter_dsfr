import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import '../shared/close_button.dart';

class AlertCloseButton extends StatelessWidget {
  const AlertCloseButton({required this.onClose, super.key});

  final void Function() onClose;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);

    return Padding(
      padding: EdgeInsets.all(dsfrTheme.sizes.v1),
      child: Align(
        alignment: Alignment.topCenter,
        child: SharedCloseButton(onClose: onClose),
      ),
    );
  }
}
