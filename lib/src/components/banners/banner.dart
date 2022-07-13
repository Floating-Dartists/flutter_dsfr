import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';
import '../../theme/breakpoints.dart';
import '../shared/close_button.dart';
import 'banner_text.dart';

/// Create a banner .
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/992903190/Bandeau+d+information+importante
class DSFRBanner extends StatelessWidget {
  const DSFRBanner({required this.text, this.onClose, this.link, super.key});

  final String text;
  final void Function()? onClose;
  final DSFRBannerLink? link;

  EdgeInsets _getPadding(double maxWidth) {
    if (maxWidth > Breakpoints.lg) {
      return EdgeInsets.symmetric(
        horizontal: (maxWidth - Breakpoints.lg) / 2,
      );
    }

    return EdgeInsets.zero;
  }

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrSizes = DSFRSizes.of(context);

    final textColor = dsfrColors.info;

    return Container(
      color: dsfrColors.banner,
      padding: EdgeInsets.all(dsfrSizes.w2),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final padding = _getPadding(constraints.maxWidth);

          return Padding(
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSFRIcon(
                  DSFRIcons.info,
                  color: textColor,
                  size: dsfrSizes.w3,
                ),
                SizedBox(
                  width: dsfrSizes.w2,
                ),
                Expanded(
                  child: DSFRBannerText(text: text, link: link),
                ),
                if (onClose != null) ...[
                  SizedBox(
                    width: dsfrSizes.w2,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SharedCloseButton(onClose: onClose!),
                  )
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
