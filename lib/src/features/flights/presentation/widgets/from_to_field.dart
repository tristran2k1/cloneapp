import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

import 'swap_btn.dart';

class FromToField extends StatelessWidget {
  const FromToField({
    super.key,
    required this.focusFrom,
    required this.focusTo,
    required this.fromController,
    required this.toController,
    this.onTap,
  });

  final TextEditingController fromController;
  final TextEditingController toController;
  final FocusNode focusFrom;
  final FocusNode focusTo;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CustomFloatingTextField(
              controller: fromController,
              focusNode: focusFrom,
              labelStyle: CustomTextStyles.bodyMediumGray700,
              hintText: "Your departure",
              labelText: "From",
              prefixIcon: CustomImageView(
                svgPath: Assets.images.flightDarkblueWithDot,
              ),
              prefixConstraints: const BoxConstraints(),
              textStyle: theme.textTheme.titleSmall!.copyWith(height: 2),
            ),
            Gap.h10,
            CustomFloatingTextField(
              controller: toController,
              focusNode: focusTo,
              labelStyle: CustomTextStyles.bodyMediumGray700,
              hintText: "Your destination",
              labelText: "To",
              prefixIcon: CustomImageView(
                svgPath: Assets.images.locationOrangeWithDot,
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
