import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

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

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final dsfrTypography = dsfrTheme.typography;
    final textColor = type.textColor(dsfrColors);
    final badgeSize = size ?? dsfrTheme.spacings.badgeSize;
    final borderRadius = dsfrTheme.borderRadius;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: badgeSize.horizontal,
        vertical: badgeSize.vertical,
      ),
      decoration: BoxDecoration(
        color: type.color(dsfrColors),
        borderRadius: borderRadius.small,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showIcon) ...[
            Icon(
              type.icon,
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
