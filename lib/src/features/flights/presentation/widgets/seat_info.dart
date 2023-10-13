import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class SeatInfo extends StatelessWidget {
  const SeatInfo(
      {super.key,
      required this.numseat,
      this.classseat = "Economy",
      required this.price});
  final String numseat;
  final String? classseat;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  svgPath: Assets.images.seatGreen,
                  margin: EdgeInsets.zero,
                ),
                Gap.w15,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Seat", style: CustomTextStyles.bodySmallGray700),
                    Gap.h10,
                    Text(numseat,
                        style: CustomTextStyles.headlineSmallIndigo40001)
                  ],
                )
              ],
            ),
            Gap.h12,
            Text(
              "$classseat Class",
              style: CustomTextStyles.labelLargeblueGray90001,
            ),
            Gap.h10,
            Container(
              decoration: AppDecoration.fillindigo50.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              height: 40,
              width: 85,
              child: Center(
                  child: Text(
                "\$$price",
                style: CustomTextStyles.titleMediumIndigo40001,
              )),
            )
          ],
        ),
      ),
    );
  }
}
