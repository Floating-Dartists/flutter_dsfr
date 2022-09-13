import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';

/// Create a badge .
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/851869737/Badges
class DSFRBadge extends StatelessWidget {
  const DSFRBadge({
    required this.type,
    required this.label,
    this.size,
    this.showIcon = false,
    super.key,
  });

  final DSFRBadgeType type;
  final String label;
  final DSFRBadgeSize? size;
  final bool showIcon;

  Color _getTextColor(DSFRColors dsfrColors) {
    switch (type) {
      case DSFRBadgeType.error:
        return dsfrColors.error;
      case DSFRBadgeType.success:
        return dsfrColors.success;
      case DSFRBadgeType.info:
        return dsfrColors.info;
      case DSFRBadgeType.warning:
        return dsfrColors.warning;
      case DSFRBadgeType.news:
        return dsfrColors.news;
    }
  }

  Color _getColor(DSFRColors dsfrColors) {
    switch (type) {
      case DSFRBadgeType.error:
        return dsfrColors.badgeError;
      case DSFRBadgeType.success:
        return dsfrColors.badgeSuccess;
      case DSFRBadgeType.info:
        return dsfrColors.badgeInfo;
      case DSFRBadgeType.warning:
        return dsfrColors.badgeWarning;
      case DSFRBadgeType.news:
        return dsfrColors.badgeNews;
    }
  }

  IconData _getIconData() {
    switch (type) {
      case DSFRBadgeType.error:
        return DSFRIcons.errorWarningFill;
      case DSFRBadgeType.success:
        return DSFRIcons.checkboxCircleFill;
      case DSFRBadgeType.info:
        return DSFRIcons.info;
      case DSFRBadgeType.warning:
        return DSFRIcons.alertFill;
      case DSFRBadgeType.news:
        return DSFRIcons.flashLightFill;
    }
  }

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final dsfrTypography = dsfrTheme.typography;
    final textColor = _getTextColor(dsfrColors);
    final badgeSize = size ?? dsfrTheme.spacings.badgeSize;
    final borderRadius = dsfrTheme.borderRadius;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: badgeSize.horizontal,
        vertical: badgeSize.vertical,
      ),
      decoration: BoxDecoration(
        color: _getColor(dsfrColors),
        borderRadius: borderRadius.small,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showIcon) ...[
            Icon(
              _getIconData(),
              color: textColor,
              size: badgeSize.iconSize,
            ),
            SizedBox(width: badgeSize.spacing),
          ],
          Text(
            label.toUpperCase(),
            style: dsfrTypography.detail.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}
