import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

class DSFRAccordionBorder extends StatelessWidget {
  const DSFRAccordionBorder({
    required this.child,
    required this.isLastInGroup,
    super.key,
  });

  final bool isLastInGroup;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final border = BorderSide(color: dsfrColors.accordionBorder);
    final bottomBorder = isLastInGroup ? border : BorderSide.none;

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          top: border,
          bottom: bottomBorder,
        ),
      ),
      child: child,
    );
  }
}
