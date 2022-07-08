import 'package:flutter/material.dart';

import '../../theme/icons.dart';

/// Re-implementation of the [Icon] used to override package name.
class DSFRIcon extends StatelessWidget {
  const DSFRIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
    this.shadows,
  });

  final IconData icon;

  final double? size;

  final Color? color;

  final String? semanticLabel;

  final TextDirection? textDirection;

  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    assert(this.textDirection != null || debugCheckHasDirectionality(context));
    final TextDirection textDirection =
        this.textDirection ?? Directionality.of(context);

    final IconThemeData iconTheme = IconTheme.of(context);

    final double? iconSize = size ?? iconTheme.size;

    final List<Shadow>? iconShadows = shadows ?? iconTheme.shadows;

    final double iconOpacity = iconTheme.opacity ?? 1.0;
    Color iconColor = color ?? iconTheme.color!;
    if (iconOpacity != 1.0) {
      iconColor = iconColor.withOpacity(iconColor.opacity * iconOpacity);
    }

    Widget iconWidget = RichText(
      overflow: TextOverflow.visible,
      textDirection: textDirection,
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          inherit: false,
          color: iconColor,
          fontSize: iconSize,
          fontFamily: icon.fontFamily,
          package: icon.fontPackage ?? DSFRIcons.packageName,
          shadows: iconShadows,
        ),
      ),
    );

    if (icon.matchTextDirection) {
      switch (textDirection) {
        case TextDirection.rtl:
          iconWidget = Transform(
            transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
            alignment: Alignment.center,
            transformHitTests: false,
            child: iconWidget,
          );
          break;
        case TextDirection.ltr:
          break;
      }
    }

    return Semantics(
      label: semanticLabel,
      child: ExcludeSemantics(
        child: SizedBox(
          width: iconSize,
          height: iconSize,
          child: Center(
            child: iconWidget,
          ),
        ),
      ),
    );
  }
}
