import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class ConfirmPaymentMethod extends StatelessWidget {
  const ConfirmPaymentMethod({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  svgPath: Assets.images.mastercardIcon,
                  height: 32,
                  width: 32,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("Credit / Debit Card",
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.gray700)),
                  Gap.h8,
                  Text("Mastercard",
                      style: theme.textTheme.titleSmall!
                          .copyWith(color: appTheme.gray700)),
                ])
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Text("Change",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: theme.colorScheme.primary)))
          ],
        ),
      ),
    );
  }
}
