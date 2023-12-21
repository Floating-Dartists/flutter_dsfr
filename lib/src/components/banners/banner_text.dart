import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';

/// DSFRBannerText, it add a clickable link when the link attribute is not empty
class DSFRBannerText extends StatelessWidget {
  const DSFRBannerText({
    required this.text,
    required this.link,
    super.key,
  });

  final String text;
  final DSFRBannerLink? link;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final dsfrTypography = dsfrTheme.typography;

    final textColor = dsfrColors.info.strong;
    final textStyle = dsfrTypography.boldText.copyWith(color: textColor);
    // we assign to a new variable for type shadowing
    final bannerLink = link;

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text,
            style: textStyle,
          ),
          if (bannerLink != null) ...[
            TextSpan(
              text: ',\x20',
              style: textStyle,
            ),
            TextSpan(
              text: bannerLink.text,
              recognizer: TapGestureRecognizer()..onTap = link?.onTap,
              style: textStyle.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
