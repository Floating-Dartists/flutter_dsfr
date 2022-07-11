import 'package:flutter/material.dart';

@immutable
class DSFRAccordionData {
  const DSFRAccordionData({
    required this.title,
    required this.content,
    this.isInitialyExpanded = false,
  });
  final String title;
  final Widget content;

  /// expand the panel by default.
  ///
  /// In case where there is multiple panels who are expanded by default,
  /// only the last one will be expanded because DSFRAccordion have a radio like
  /// logic
  final bool isInitialyExpanded;
}
