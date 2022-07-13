import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/typography.dart';

/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/217088553/Boutons+radio+-+Radio+button
class DSFRRadioButton<T> extends StatelessWidget {
  final String label;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  const DSFRRadioButton({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrTypography = DSFRTypography.of(context);

    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: dsfrColors.frLabel,
      ),
      child: RadioListTile<T>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        title: Text(
          label,
          style: dsfrTypography.frLabel.copyWith(color: dsfrColors.frLabel),
        ),
        activeColor: dsfrColors.radioActive,
      ),
    );
  }
}
