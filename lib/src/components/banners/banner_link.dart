import 'package:flutter/material.dart';

@immutable
class DSFRBannerLink {
  const DSFRBannerLink({required this.text, required this.link});

  final String text;
  final Uri link;
}
