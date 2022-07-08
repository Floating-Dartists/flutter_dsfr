import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/sizes.dart';
import 'alerts_close_button.dart';
import 'alerts_icon.dart';
import 'base_alerts.dart';

class DSFRSmallAlerts extends BaseAlerts {
  const DSFRSmallAlerts({
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
            AlertsIcon(
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
            if (onClose != null)
              SizedBox(child: AlertsCloseButton(onClose: onClose!)),
          ],
        ),
      ),
    );
  }
}
