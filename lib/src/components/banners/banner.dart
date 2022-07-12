import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import '../shared/close_button.dart';

class DSFRBanner extends StatelessWidget {
  const DSFRBanner({required this.text, this.onClose, super.key});

  final String text;
  final void Function()? onClose;

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrSizes = DSFRSizes.of(context);
    final dsfrTypography = DSFRTypography.of(context);

    final textColor = dsfrColors.info;

    return Container(
      color: dsfrColors.banner,
      padding: EdgeInsets.all(dsfrSizes.w2),
      child: Row(
        children: [
          DSFRIcon(
            DSFRIcons.info,
            color: textColor,
            size: dsfrSizes.w3,
          ),
          SizedBox(
            width: dsfrSizes.w2,
          ),
          Expanded(
            child: Text(
              text,
              style: dsfrTypography.boldText.copyWith(color: textColor),
            ),
          ),
          if (onClose != null)
            Align(
              alignment: Alignment.topRight,
              child: SharedCloseButton(onClose: onClose!),
            ),
        ],
      ),
    );
  }
}
