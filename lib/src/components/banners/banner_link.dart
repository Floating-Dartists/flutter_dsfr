import 'package:flutter/material.dart';

@immutable
class DSFRBannerLink {
  const DSFRBannerLink({required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;
}
