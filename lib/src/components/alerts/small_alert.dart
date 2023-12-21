import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/alerts/alert_close_button.dart';
import 'package:flutter_dsfr/src/components/alerts/alert_icon.dart';
import 'package:flutter_dsfr/src/components/alerts/base_alert.dart';

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
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final dsfrSizes = dsfrTheme.sizes;
    final color = type.color(dsfrColors);

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
              icon: type.icon,
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
