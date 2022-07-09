import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import 'alert_type.dart';

abstract class BaseAlert extends StatelessWidget {
  const BaseAlert({required this.type, this.onClose, super.key});
  final DSFRAlertType type;
  final void Function()? onClose;

  @protected
  Color getColor(DSFRColors dsfrColors) {
    switch (type) {
      case DSFRAlertType.error:
        return dsfrColors.alertError;
      case DSFRAlertType.success:
        return dsfrColors.alertSuccess;
      case DSFRAlertType.info:
        return dsfrColors.alertInfo;
      case DSFRAlertType.warning:
        return dsfrColors.alertWarning;
    }
  }

  @protected
  IconData getIconData() {
    switch (type) {
      case DSFRAlertType.error:
        return DSFRIcons.error;
      case DSFRAlertType.success:
        return DSFRIcons.success;
      case DSFRAlertType.info:
        return DSFRIcons.info;
      case DSFRAlertType.warning:
        return DSFRIcons.warning;
    }
  }
}
