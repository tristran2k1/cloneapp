import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key, required this.title, required this.icon});
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: [
            CustomImageView(
              svgPath: icon,
              height: 32,
              width: 32,
            ),
            Text(title, style: theme.textTheme.titleSmall)
          ],
        ),
      ),
    );
  }
}
