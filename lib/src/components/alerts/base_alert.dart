import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/alerts/alert_type.dart';
import 'package:flutter_dsfr/src/theme/colors.dart';
import 'package:flutter_dsfr/src/theme/icons.dart';

abstract class BaseAlert extends StatelessWidget {
  const BaseAlert({required this.type, this.onClose, super.key});
  final DSFRAlertType type;
  final void Function()? onClose;

  @protected
  Color getColor(DSFRColors dsfrColors) {
    switch (type) {
      case DSFRAlertType.error:
        return dsfrColors.error;
      case DSFRAlertType.success:
        return dsfrColors.success;
      case DSFRAlertType.info:
        return dsfrColors.info;
      case DSFRAlertType.warning:
        return dsfrColors.warning;
    }
  }

  @protected
  IconData getIconData() {
    switch (type) {
      case DSFRAlertType.error:
        return DSFRIcons.errorWarningFill;
      case DSFRAlertType.success:
        return DSFRIcons.checkboxCircleFill;
      case DSFRAlertType.info:
        return DSFRIcons.info;
      case DSFRAlertType.warning:
        return DSFRIcons.alertFill;
    }
  }
}
