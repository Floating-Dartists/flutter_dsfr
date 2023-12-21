import 'package:flutter/material.dart';
import 'package:flutter_dsfr/src/components/alerts/alert_type.dart';

abstract class BaseAlert extends StatelessWidget {
  const BaseAlert({
    required this.type,
    this.onClose,
    super.key,
  });

  final DSFRAlertType type;
  final VoidCallback? onClose;
}
