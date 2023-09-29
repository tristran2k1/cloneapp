import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

import 'check_in_out_nochange_widget.dart';

class BookingDateInfoNochange extends StatelessWidget {
  const BookingDateInfoNochange(
      {super.key, required this.checkin, required this.checkout});
  final String checkin;
  final String checkout;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CheckIONotChange(
                icon: Assets.images.checkinIcon,
                title: "Check-in",
                date: checkin,
              ),
              CheckIONotChange(
                icon: Assets.images.checkoutIcon,
                title: "Check-out",
                date: checkout,
              )
            ],
          )
        ],
      ),
    );
  }
}
