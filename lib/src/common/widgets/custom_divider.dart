import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

// ignore: must_be_immutable
class CustomDivider extends StatelessWidget {
  CustomDivider({
    super.key,
    this.inset,
    this.color,
    this.height,
    this.isVertical = false,
  });

  double? inset;
  Color? color;
  double? height;
  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    return isVertical
        ? VerticalDivider(
            width: height,
            thickness: 1,
            color: color ?? appTheme.gray400,
            indent: inset,
            endIndent: inset,
          )
        : Divider(
            height: height,
            thickness: 1,
            color: color ?? appTheme.gray400,
            indent: inset,
            endIndent: inset,
          );
  }
}
