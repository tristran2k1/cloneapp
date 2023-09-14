import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

// ignore: must_be_immutable
class TextButtonWithNoPadding extends StatelessWidget {
  TextButtonWithNoPadding({
    super.key,
    required this.onPressed,
    this.textStyle,
    required this.text,
  });

  final String text;
  TextStyle? textStyle;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: Alignment.centerLeft),
      onPressed: onPressed,
      child: Text(text,
          style: textStyle ?? CustomTextStyles.titleSmallIndigo40001),
    );
  }
}
