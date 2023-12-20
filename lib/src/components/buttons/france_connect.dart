import 'package:flutter/material.dart';
import 'package:flutter_dsfr/flutter_dsfr.dart';
import 'package:flutter_dsfr/src/components/logo/logo.dart';

/// {@template dsfr_fr_connect_button}
/// Create a button to connect using FranceConnect services.
///
/// This widgets requires you to inject the extension [DSFRColors] in your
/// theme.
///
/// Specs: https://gouvfr.atlassian.net/wiki/spaces/DB/pages/967868417/Bouton+FranceConnect
/// {@endtemplate}
class FranceConnectButton extends StatelessWidget {
  /// {@macro dsfr_fr_connect_button}
  const FranceConnectButton({
    super.key,
    required this.onPressed,
    required this.onInfoLinkTap,
    this.style,
  }) : _variant = false;

  const FranceConnectButton.plus({
    super.key,
    required this.onPressed,
    required this.onInfoLinkTap,
    this.style,
  }) : _variant = true;

  /// {@macro base.dsfrButtonStyleButton.onPressed}
  final VoidCallback onPressed;

  /// If `true` the button displayed will be FranceConnect+.
  final bool _variant;

  final DSFRButtonStyle? style;

  /// Tapping on the info link should open either of the url:
  /// - https://franceconnect.gouv.fr/
  /// - https://franceconnect.gouv.fr/france-connect-plus for the "plus"
  /// variant.
  final VoidCallback onInfoLinkTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FranceConnectBase(
          variant: _variant,
          onPressed: onPressed,
          style: style,
        ),
        InfoLinkButton(
          variant: _variant,
          onTap: onInfoLinkTap,
        ),
      ],
    );
  }
}

class FranceConnectBase extends StatelessWidget {
  const FranceConnectBase({
    super.key,
    required this.onPressed,
    required this.variant,
    required this.style,
  });
  final bool variant;
  final VoidCallback onPressed;
  final DSFRButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final dsfrTextStyles = dsfrTheme.typography;
    final dsfrSizes = dsfrTheme.sizes;

    final btnStyle = DSFRButtonStyle(
      shape: style?.shape ?? const RoundedRectangleBorder(),
      elevation: style?.elevation ?? 0,
    );

    return Padding(
      padding: EdgeInsets.only(
        bottom: dsfrSizes.v3,
      ),
      child: RawMaterialButton(
        elevation: btnStyle.elevation ?? 0,
        hoverElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        padding: EdgeInsets.only(
          top: dsfrSizes.v1,
          bottom: dsfrSizes.v1,
          left: dsfrSizes.v3,
          right: dsfrSizes.w3,
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
                vertical: dsfrSizes.v1,
                horizontal: dsfrSizes.v3,
              ),
              child: DSFRLogo(size: dsfrSizes.w5),
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
                padding: EdgeInsets.only(left: dsfrSizes.v1),
                child: Icon(
                  Icons.add,
                  size: dsfrSizes.w5,
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
  const InfoLinkButton({
    super.key,
    required this.variant,
    required this.onTap,
  });
  final bool variant;
  final VoidCallback onTap;

  @override
  State<InfoLinkButton> createState() => _InfoLinkButtonState();
}

class _InfoLinkButtonState extends State<InfoLinkButton> {
  static const _kFranceConnectText = "Qu'est ce que FranceConnect ?";
  static const _kFranceConnectTextVariant = "Qu'est ce que FranceConnect+ ?";

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final dsfrTheme = DSFRThemeData.of(context);
    final dsfrColors = dsfrTheme.colors;
    final baseStyle = dsfrTheme.typography.frConnectGroup;
    final style = baseStyle.merge(
      TextStyle(
        decoration: _isHovered ? TextDecoration.underline : null,
        color: dsfrColors.frConnectBackground,
      ),
    );
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: widget.onTap,
      onHover: (isHovered) => setState(() => _isHovered = isHovered),
      child: Text(
        widget.variant ? _kFranceConnectTextVariant : _kFranceConnectText,
        style: style,
      ),
    );
  }
}
