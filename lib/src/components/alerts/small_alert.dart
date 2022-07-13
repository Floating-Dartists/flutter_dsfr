import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/sizes.dart';
import 'alert_close_button.dart';
import 'alert_icon.dart';
import 'base_alert.dart';

class DSFRSmallAlert extends BaseAlert {
  const DSFRSmallAlert({
    required super.type,
    required this.description,
    super.onClose,
    super.key,
  });

  final String description;

  EdgeInsets _getIconPadding(DSFRSizes sizes) {
    return EdgeInsets.all(sizes.w1);
  }

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrSizes = DSFRSizes.of(context);
    final color = getColor(dsfrColors);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: dsfrColors.alertsBackground,
        border: Border.all(color: color),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            AlertIcon(
              color: color,
              icon: getIconData(),
              padding: _getIconPadding(dsfrSizes),
              shouldCenterIcon: true,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(dsfrSizes.w1),
                child: Text(
                  description,
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(color: dsfrColors.text),
                ),
              ),
            ),
            if (onClose != null) AlertCloseButton(onClose: onClose!),
          ],
        ),
      ),
    );
  }
}
