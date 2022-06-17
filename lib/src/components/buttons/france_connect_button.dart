import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../flutter_dsfr.dart';
import '../../consts/endpoints.dart';

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

  /// {@macor base.dsfrButtonStyleButton.style}
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
    final theme = Theme.of(context);

    final dsfrColors = theme.extension<DSFRColors>()!;
    final dsfrTextStyles = theme.extension<DSFRTextStyles>()!;
    final dsfrSpacings = theme.extension<DSFRSizes>()!;

    final defaultStyle = DSFRButtonStyle(
      backgroundColor: dsfrColors.frConnectBackground,
      hoverColor: dsfrColors.frConnectHover,
      activeColor: dsfrColors.frConnectActive,
      shape: const RoundedRectangleBorder(),
      elevation: 0,
    );
    final btnStyle = defaultStyle.copyWith(
      elevation: style?.elevation,
      shape: style?.shape,
    ) as DSFRButtonStyle;

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
        fillColor: btnStyle.backgroundColor,
        hoverColor: btnStyle.hoverColor,
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
                style: dsfrTextStyles.frConnectLogin,
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
                  color: dsfrTextStyles.frConnectBrand?.color,
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
    final theme = Theme.of(context);
    final baseStyle = theme.extension<DSFRTextStyles>()!.frConnectGroup;
    final style = baseStyle?.merge(
      TextStyle(decoration: _isHovered ? TextDecoration.underline : null),
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
