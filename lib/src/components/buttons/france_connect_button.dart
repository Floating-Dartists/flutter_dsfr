import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../consts/endpoints.dart';
import '../../theme/button_style.dart';
import '../../theme/colors.dart';
import '../../theme/sizes.dart';
import '../../theme/typography.dart';

/// Create a button to connect using FranceConnect services.
///
/// This widgets requires you to inject the extension [DSFRColors] in your
/// theme.
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/967868417/Bouton+FranceConnect
class FranceConnectButton extends StatelessWidget {
  /// {@macro base.dsfrButtonStyleButton.onPressed}
  final VoidCallback onPressed;

  /// If `true` the button displayed will be FranceConnect+.
  final bool variant;

  final DSFRButtonStyle? style;

  const FranceConnectButton({
    Key? key,
    required this.onPressed,
    this.variant = false,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FranceConnectBase(
          variant: variant,
          onPressed: onPressed,
          style: style,
        ),
        InfoLinkButton(variant: variant),
      ],
    );
  }
}

class FranceConnectBase extends StatelessWidget {
  final bool variant;
  final VoidCallback onPressed;
  final DSFRButtonStyle? style;

  const FranceConnectBase({
    Key? key,
    required this.onPressed,
    required this.variant,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final dsfrTextStyles = DSFRTypography.of(context);
    final dsfrSpacings = DSFRSizes.of(context);

    final btnStyle = DSFRButtonStyle(
      shape: style?.shape ?? const RoundedRectangleBorder(),
      elevation: style?.elevation ?? 0,
    );

    return Padding(
      padding: EdgeInsets.only(
        bottom: dsfrSpacings.v3,
      ),
      child: RawMaterialButton(
        elevation: btnStyle.elevation ?? 0,
        hoverElevation: 0,
        focusElevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        padding: EdgeInsets.only(
          top: dsfrSpacings.v1,
          bottom: dsfrSpacings.v1,
          left: dsfrSpacings.v3,
          right: dsfrSpacings.w3,
        ),
        shape: btnStyle.shape ?? const RoundedRectangleBorder(),
        fillColor: dsfrColors.frConnectBackground,
        hoverColor: dsfrColors.frConnectHover,
        splashColor: dsfrColors.frConnectActive,
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: dsfrSpacings.v1,
                horizontal: dsfrSpacings.v3,
              ),
              child: SvgPicture.asset(
                'assets/svg/icon.svg',
                package: 'flutter_dsfr',
                width: dsfrSpacings.w5,
                height: dsfrSpacings.w6,
              ),
            ),
            Text.rich(
              TextSpan(
                text: "S'identifier avec\n",
                style: dsfrTextStyles.frConnectLogin
                    .copyWith(color: dsfrColors.textInvertedBlueFrance),
                children: [
                  TextSpan(
                    text: "FranceConnect",
                    style: dsfrTextStyles.frConnectBrand,
                  ),
                ],
              ),
            ),
            if (variant)
              Padding(
                padding: EdgeInsets.only(left: dsfrSpacings.v1),
                child: Icon(
                  Icons.add,
                  size: dsfrSpacings.w5,
                  color: dsfrColors.textInvertedBlueFrance,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class InfoLinkButton extends StatefulWidget {
  final bool variant;

  const InfoLinkButton({Key? key, required this.variant}) : super(key: key);

  @override
  State<InfoLinkButton> createState() => _InfoLinkButtonState();
}

class _InfoLinkButtonState extends State<InfoLinkButton> {
  static const _kFranceConnectText = "Qu'est ce que FranceConnect ?";
  static const _kFranceConnectTextVariant = "Qu'est ce que FranceConnect+ ?";

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final dsfrColors = DSFRColors.of(context);
    final baseStyle = DSFRTypography.of(context).frConnectGroup;
    final style = baseStyle.merge(
      TextStyle(
        decoration: _isHovered ? TextDecoration.underline : null,
        color: dsfrColors.frConnectBackground,
      ),
    );
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () => launchUrl(
        Uri.parse(
          widget.variant
              ? Endpoints.franceConnectPlus
              : Endpoints.franceConnect,
        ),
      ),
      onHover: (isHovered) => setState(() => _isHovered = isHovered),
      child: Text(
        widget.variant ? _kFranceConnectTextVariant : _kFranceConnectText,
        style: style,
      ),
    );
  }
}
