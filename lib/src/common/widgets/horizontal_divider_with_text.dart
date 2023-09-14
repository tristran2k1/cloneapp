import 'package:flutter/material.dart';
import 'package:travo_app/src/common/widgets/custom_divider.dart';
import 'package:travo_app/src/constants/constants.dart';

// ignore: must_be_immutable
class HorizontalDividerWithText extends StatelessWidget {
  final String content;
  TextStyle? textStyle;

  HorizontalDividerWithText({super.key, required this.content});
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(child: CustomDivider()),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: Sizes.p16),
        child: Text(content,
            style: textStyle ?? CustomTextStyles.bodyMediumBluegray900),
      ),
      Expanded(child: CustomDivider()),
    ]);
  }
}
