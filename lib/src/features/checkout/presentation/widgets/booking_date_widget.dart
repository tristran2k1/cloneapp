import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/utils/utils.dart';

import 'check_in_out_item.dart';

class BookingDateWidget extends StatelessWidget {
  const BookingDateWidget(
      {super.key,
      required this.startDateSelected,
      required this.endDateSelected,
      required this.startDate,
      required this.endDate,
      required this.initialDate});
  final Function startDateSelected;
  final Function endDateSelected;
  final DateTime initialDate;
  final DateTime startDate;
  final DateTime endDate;

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
              Text("Booking Date", style: theme.textTheme.titleSmall),
              Gap.h20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckInOutItem(
                    icon: Assets.images.checkinIcon,
                    title: "Check-in",
                    date: DateTimeCvt().getWeekDayMon(startDate),
                    selectedDate: startDateSelected,
                    firstDate: initialDate,
                    initialDate: startDate,
                  ),
                  CheckInOutItem(
                    icon: Assets.images.checkoutIcon,
                    title: "Check-out",
                    date: DateTimeCvt().getWeekDayMon(endDate),
                    selectedDate: endDateSelected,
                    firstDate: endDate,
                    initialDate: endDate,
                  )
                ],
              )
            ],
          )),
    );
  }
}
