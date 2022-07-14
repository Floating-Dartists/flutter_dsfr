import 'package:flutter/material.dart';

import '../../../flutter_dsfr.dart';

class DSFRTextInput extends StatefulWidget {
  const DSFRTextInput({required this.label, super.key});

  final String label;

  @override
  State<StatefulWidget> createState() => _DSFRTextInput();
}

class _DSFRTextInput extends State<DSFRTextInput> {
  late final _textEditingController = TextEditingController();
  late final _focusNode = FocusNode();
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dsfrTypography = DSFRTypography.of(context);
    final dsfrColors = DSFRColors.of(context);
    final dsfrSizes = DSFRSizes.of(context);

    final border = UnderlineInputBorder(
      borderSide: BorderSide(
        color: dsfrColors.inputBorder,
        width: dsfrSizes.v0_5,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: dsfrTypography.inputLabel.copyWith(color: dsfrColors.text),
        ),
        SizedBox(
          height: dsfrSizes.w1,
        ),
        Container(
          padding: _hasFocus ? EdgeInsets.all(dsfrSizes.v0_5) : EdgeInsets.zero,
          decoration: _hasFocus
              ? BoxDecoration(
                  border: Border.all(
                    color: Colors.amber,
                    width: dsfrSizes.v0_5,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(dsfrSizes.w1),
                    topRight: Radius.circular(dsfrSizes.w1),
                  ),
                )
              : null,
          child: TextField(
            controller: _textEditingController,
            focusNode: _focusNode,
            decoration: InputDecoration(
              enabledBorder: border,
              focusedBorder: border,
              filled: true,
              fillColor: dsfrColors.input,
            ),
          ),
        )
      ],
    );
  }
}
