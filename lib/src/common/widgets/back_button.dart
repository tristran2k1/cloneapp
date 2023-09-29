import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, required this.ctx});
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ElevatedButton(
        onPressed: () => Navigator.pop(ctx),
        style: CustomButtonStyles.none,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: AppDecoration.fillWhiteA
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
            svgPath: Assets.images.arrowLeft,
            height: 16,
            width: 16,
            margin: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
