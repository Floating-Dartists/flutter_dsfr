import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'alert_close_button.dart';
import 'alert_icon.dart';
import 'base_alert.dart';

/// Create an alert .
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/736362500/Alertes+-+Alerts
class DSFRAlert extends BaseAlert {
  const DSFRAlert({
    required super.type,
    required this.title,
    this.description,
    super.onClose,
    super.key,
  });

  final String title;
  final String? description;

  EdgeInsets _getIconPadding(DSFRSizes sizes) {
    return EdgeInsets.fromLTRB(sizes.w1, sizes.w2, sizes.w1, sizes.w2);
  }

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrTextStyles = DSFRTypography.of(context);

    final color = getColor(dsfrColors);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: dsfrColors.alertsBackground,
        border: Border.all(color: color),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AlertIcon(
              color: color,
              icon: getIconData(),
              padding: _getIconPadding(DSFRSizes.of(context)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: dsfrTextStyles.alertsTitle
                          .copyWith(color: dsfrColors.text),
                    ),
                    if (description != null)
                      Text(
                        description!,
                        style: DefaultTextStyle.of(context)
                            .style
                            .copyWith(color: dsfrColors.text),
                      )
                  ],
                ),
              ),
            ),
            if (onClose != null)
              Align(
                alignment: Alignment.topRight,
                child: AlertCloseButton(onClose: onClose!),
              ),
          ],
        ),
      ),
    );
  }
}
