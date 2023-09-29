import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, this.onPressed, required this.icon});
  final VoidCallback? onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: CustomButtonStyles.none,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: CustomImageView(
          svgPath: icon,
          height: 16,
          width: 16,
          margin: EdgeInsets.zero,
        ),
      ),
    );
  }
}
