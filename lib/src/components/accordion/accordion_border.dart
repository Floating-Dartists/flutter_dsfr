import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';

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
    final border = BorderSide(color: dsfrColors.accordionBorder, width: 1.0);
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
