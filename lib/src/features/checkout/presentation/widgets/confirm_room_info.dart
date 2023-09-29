import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';

import 'booking_date_info_nochange.dart';

class ConfirmRoomInfo extends StatelessWidget {
  const ConfirmRoomInfo(
      {super.key,
      required this.room,
      required this.checkin,
      required this.checkout});
  final RoomModel room;
  final String checkin;
  final String checkout;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      room.name,
                      style: theme.textTheme.titleLarge,
                    ),
                    Gap.h10,
                    Text(
                      room.typePrice,
                      style: CustomTextStyles.bodySmall12_1.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CustomImageView(
                    margin: EdgeInsets.zero,
                    url: room.image,
                    fit: BoxFit.cover,
                    radius: BorderRadiusStyle.roundedBorder12,
                  ),
                )
              ],
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              runSpacing: 15,
              children: [
                _infrastructure(),
                const DashDivider(),
                BookingDateInfoNochange(checkin: checkin, checkout: checkout)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _infrastructure() {
    return Row(children: [
      CustomImageView(
        svgPath: Assets.images.bedIcon,
        height: 20,
        width: 20,
        margin: EdgeInsets.zero,
      ),
      Gap.w12,
      Text(
        "2 King Bed",
        style: theme.textTheme.bodyMedium!.copyWith(
          color: appTheme.black900,
        ),
      )
    ]);
  }
}
