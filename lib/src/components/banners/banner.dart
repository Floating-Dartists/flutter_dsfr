import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/banners/banner_text.dart';
import 'package:flutter_dsfr/src/components/shared/close_button.dart';
import 'package:flutter_dsfr/src/theme/breakpoints.dart';

/// Create a banner .
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/992903190/Bandeau+d+information+importante
class DSFRBanner extends StatelessWidget {
  const DSFRBanner({required this.text, this.onClose, this.link, super.key});

  final String text;
  final VoidCallback? onClose;
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
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final dsfrSizes = dsfrTheme.sizes;

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
                Icon(
                  DSFRIcons.info,
                  color: textColor.strong,
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
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
