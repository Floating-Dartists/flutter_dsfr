import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import 'alerts_icon.dart';

enum DSFRAlertsType { error, success, info, warning }

enum DSFRAlertsSize { sm, md }

/// Create an alert .
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/736362500/Alertes+-+Alerts
class DSFRAlerts extends StatelessWidget {
  const DSFRAlerts({
    required this.type,
    this.size = DSFRAlertsSize.md,
    this.title,
    this.description,
    Key? key,
  })  : assert(
          size == DSFRAlertsSize.sm ||
              size == DSFRAlertsSize.md && title != null,
          """
          You must provide a title if you are using DSFRAlerts with size == DSFRAlertsSize.md
          
          please see https://gouvfr.atlassian.net/wiki/spaces/DB/pages/736362500/Alertes+-+Alerts#Structure
          """,
        ),
        assert(
          size == DSFRAlertsSize.md ||
              size == DSFRAlertsSize.sm && description != null,
          """
          You must provide a description if you are using DSFRAlerts with size == DSFRAlertsSize.sm

          please see https://gouvfr.atlassian.net/wiki/spaces/DB/pages/736362500/Alertes+-+Alerts#Structure
          """,
        ),
        super(key: key);

  final DSFRAlertsSize size;
  final DSFRAlertsType type;
  final String? title;
  final String? description;

  Color _getColor(DSFRColors dsfrColors) {
    switch (type) {
      case DSFRAlertsType.error:
        return dsfrColors.error;
      case DSFRAlertsType.success:
        return dsfrColors.success;
      case DSFRAlertsType.info:
        return dsfrColors.info;
      case DSFRAlertsType.warning:
        return dsfrColors.warning;
    }
  }

  EdgeInsets _getIconPadding(DSFRSizes sizes) {
    if (size == DSFRAlertsSize.md) {
      return EdgeInsets.fromLTRB(sizes.w1, sizes.w2, sizes.w1, sizes.w2);
    }

    return EdgeInsets.all(sizes.w1);
  }

  IconData _getIconData() {
    switch (type) {
      case DSFRAlertsType.error:
        return Icons.error;
      case DSFRAlertsType.success:
        return Icons.check_circle;
      case DSFRAlertsType.info:
        return Icons.info;
      case DSFRAlertsType.warning:
        return Icons.warning;
    }
  }

  Widget _getIcon(DSFRColors dsfrColors) {
    final iconData = _getIconData();

    return Icon(
      iconData,
      color: dsfrColors.alertsBackgroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrTextStyles = DSFRTypography.of(context);
    final color = _getColor(dsfrColors);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: dsfrColors.alertsBackgroundColor,
        border: Border.all(color: color),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              child: AlertsIcon(
                color: color,
                icon: _getIcon(dsfrColors),
                padding: _getIconPadding(DSFRSizes.of(context)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null)
                    Text(
                      title!,
                      style: dsfrTextStyles.alertsTitle,
                    ),
                  if (description != null) Text(description!)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
