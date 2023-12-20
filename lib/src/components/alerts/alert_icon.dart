import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class AlertIcon extends StatelessWidget {
  const AlertIcon({
    required this.color,
    required this.icon,
    required this.padding,
    this.shouldCenterIcon = false,
    super.key,
  });

  final Color color;
  final IconData icon;
  final EdgeInsets padding;
  final bool shouldCenterIcon;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final aligment = shouldCenterIcon ? Alignment.center : Alignment.topCenter;

    return Container(
      color: color,
      padding: padding,
      child: Align(
        alignment: aligment,
        child: Icon(
          icon,
          color: dsfrTheme.colors.alertsBackground,
        ),
      ),
    );
  }
}
