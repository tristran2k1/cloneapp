import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/checkout/checkout.dart';
import 'package:travo_app/src/models/models.dart';

class BookedRoomOverviewItem extends StatelessWidget {
  const BookedRoomOverviewItem({super.key, required this.info});
  final BookedRoomInfo info;
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
                      info.hotelName,
                      style: theme.textTheme.titleLarge,
                    ),
                    Gap.h10,
                    Row(children: [
                      Text(
                        info.roomName,
                        style: CustomTextStyles.bodySmall12_1.copyWith(
                          color: appTheme.black900,
                        ),
                      ),
                      Gap.w5,
                      isOlder(info.bookingInfo.checkinDate)
                          ? Text('Expired', style: TextStyle(color: Colors.red))
                          : Text('Available',
                              style: TextStyle(color: Colors.green))
                    ]),
                  ],
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CustomImageView(
                    margin: EdgeInsets.zero,
                    url: info.roomImage,
                    fit: BoxFit.cover,
                    radius: BorderRadiusStyle.roundedBorder12,
                  ),
                )
              ],
            ),
            Gap.h10,
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              runSpacing: 15,
              children: [
                const DashDivider(),
                BookingDateInfoNochange(
                  checkin: info.bookingInfo.checkinDate,
                  checkout: info.bookingInfo.checkoutDate,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  bool isOlder(String dateString) {
    final date = DateTime.parse(dateString);
    final now = DateTime.now();
    if (date.isAfter(now)) {
      return true;
    }
    return false;
  }
}
