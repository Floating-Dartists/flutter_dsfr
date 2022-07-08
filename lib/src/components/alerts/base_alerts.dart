import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import 'alerts_type.dart';

abstract class BaseAlerts extends StatelessWidget {
  const BaseAlerts({required this.type, this.onClose, super.key});
  final DSFRAlertsType type;
  final void Function()? onClose;

  @protected
  Color getColor(DSFRColors dsfrColors) {
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

  @protected
  IconData getIconData() {
    switch (type) {
      case DSFRAlertsType.error:
        return DSFRIcons.error;
      case DSFRAlertsType.success:
        return DSFRIcons.success;
      case DSFRAlertsType.info:
        return DSFRIcons.info;
      case DSFRAlertsType.warning:
        return DSFRIcons.warning;
    }
  }
}
