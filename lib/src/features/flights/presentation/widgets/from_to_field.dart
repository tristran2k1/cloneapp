import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

import 'swap_btn.dart';

class FromToField extends StatelessWidget {
  const FromToField({
    super.key,
    required this.fromController,
    required this.toController,
    this.onTap,
  });

  final TextEditingController fromController;
  final TextEditingController toController;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CustomFloatingTextField(
              controller: fromController,
              focusNode: FocusNode(),
              labelStyle: CustomTextStyles.bodyMediumGray700,
              hintText: "Your departure",
              labelText: "From",
              prefixIcon: CustomImageView(
                svgPath: Assets.images.flightDarkblueWithDot,
                margin: const EdgeInsets.only(left: 5, right: 25),
              ),
              prefixConstraints: const BoxConstraints(),
              textStyle: theme.textTheme.titleSmall!.copyWith(height: 2),
            ),
            Gap.h10,
            CustomFloatingTextField(
              controller: toController,
              focusNode: FocusNode(),
              labelStyle: CustomTextStyles.bodyMediumGray700,
              hintText: "Your destination",
              labelText: "To",
              prefixIcon: CustomImageView(
                svgPath: Assets.images.locationOrangeWithDot,
                margin: const EdgeInsets.only(left: 10, right: 25),
              ),
              prefixConstraints: const BoxConstraints(),
              textStyle: theme.textTheme.titleSmall!.copyWith(height: 2),
            ),
          ],
        ),
        Positioned(
          width: 60,
          height: 60,
          right: 25,
          top: 45,
          child: SwapButton(onTap: onTap),
        )
      ],
    );
  }
}
