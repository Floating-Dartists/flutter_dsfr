import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';

class DSFRBadge extends StatelessWidget {
  const DSFRBadge({
    required this.type,
    required this.label,
    this.size = DSFRBadgeSize.md,
    this.showIcon = false,
    super.key,
  });

  final DSFRBadgeType type;
  final String label;
  final DSFRBadgeSize size;
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

  TextStyle _getTextStyle(DSFRTypography dsfrTypography) {
    if (size == DSFRBadgeSize.md) {
      return dsfrTypography.badgeLabel;
    }

    return dsfrTypography.badgeLabelSmall;
  }

  double _getLeftPadding(double initialValue) {
    if (showIcon) {
      return initialValue / 2;
    }

    return initialValue;
  }

  EdgeInsets _getPadding(DSFRSizes dsfrSizes) {
    final space = size == DSFRBadgeSize.md ? dsfrSizes.w1 : dsfrSizes.v1_5;
    return EdgeInsets.fromLTRB(_getLeftPadding(space), space, space, space);
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
        return DSFRIcons.warning;
      case DSFRBadgeType.news:
        return DSFRIcons.flashLightFill;
    }
  }

  @override
  Widget build(BuildContext context) {
    final dsfrSizes = DSFRSizes.of(context);
    final dsfrColors = DSFRColors.of(context);
    final dsfrTypography = DSFRTypography.of(context);
    final textStyle = _getTextStyle(dsfrTypography);
    final textColor = _getTextColor(dsfrColors);

    return Container(
      padding: _getPadding(dsfrSizes),
      decoration: BoxDecoration(
        color: _getColor(dsfrColors),
        borderRadius: BorderRadius.circular(dsfrSizes.v1),
      ),
      child: Text.rich(
        TextSpan(
          children: <InlineSpan>[
            if (showIcon) ...[
              WidgetSpan(
                child: DSFRIcon(
                  _getIconData(),
                  color: textColor,
                  size: dsfrSizes.w2,
                ),
              ),
              WidgetSpan(
                child: SizedBox(
                  width: dsfrSizes.v1,
                ),
              )
            ],
            TextSpan(
              text: label.toUpperCase(),
              style: textStyle.copyWith(color: textColor),
            )
          ],
        ),
      ),
    );
  }
}
