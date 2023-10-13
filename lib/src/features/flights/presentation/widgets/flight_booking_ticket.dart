import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/time_converter.dart';

class FlightBookingTicket extends StatelessWidget {
  const FlightBookingTicket({
    super.key,
    required this.ticket,
    required this.bookingInfo,
  });
  final FlightTicket ticket;
  final BookingFlightModel bookingInfo;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        bookingInfo.flight = ticket;
        FlightCoordinator().selectSeat(bookingInfo: bookingInfo);
      },
      style: CustomButtonStyles.none.copyWith(
        minimumSize: const MaterialStatePropertyAll(Size.zero),
        padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      ),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: CouponCard(
          height: 120,
          backgroundColor: appTheme.whiteA700,
          curveAxis: Axis.vertical,
          firstChild: Container(
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ticket.image,
                  fit: BoxFit.contain,
                  margin: EdgeInsets.zero,
                ),
              )),
          secondChild: Container(
            decoration: BoxDecoration(
                border: DashedBorder(
                    left: BorderSide(color: appTheme.gray300, width: 1),
                    dashLength: 5)),
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _flightInfo(
                        "Departure",
                        DateTimeCvt().getHourAndMin(
                            ticket.departureDate ?? DateTime.now())),
                    _flightInfo("Flight No.", ticket.flightNo),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _flightInfo(
                        "Arrive",
                        DateTimeCvt().getHourAndMin(
                            ticket.arrivalDate ?? DateTime.now())),
                    Text("\$${ticket.price}",
                        style: CustomTextStyles.titleLargeBlack900),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _flightInfo(String label, String value) {
    return Column(
      children: [
        Text(label, style: CustomTextStyles.bodySmallGray700),
        Gap.h10,
        Text(value, style: theme.textTheme.titleSmall),
      ],
    );
  }
}
