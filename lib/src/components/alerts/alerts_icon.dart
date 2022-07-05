import 'package:flutter/material.dart';

class AlertsIcon extends StatelessWidget {
  const AlertsIcon({
    required this.color,
    required this.icon,
    required this.padding,
    Key? key,
  }) : super(key: key);

  final Color color;
  final Widget icon;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: padding,
      child: Align(alignment: Alignment.topCenter, child: icon),
    );
  }
}
