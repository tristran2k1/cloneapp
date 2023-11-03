import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/checkout/checkout.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

import 'ticket_divider.dart';

class FlightTicketDetail extends StatelessWidget {
  const FlightTicketDetail(
      {super.key, required this.bookingInfo, required this.thirdWidget});
  final BookingFlightModel bookingInfo;
  final Widget thirdWidget;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _places(),
              Gap.h4,
              const TicketDivider(),
              _detail(),
              const TicketDivider(),
              thirdWidget,
            ],
          ),
        ),
      ),
    );
  }

  Widget _detail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 28),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    width: 50,
                    imagePath: bookingInfo.flight!.image,
                    fit: BoxFit.contain,
                    margin: EdgeInsets.zero,
                  ),
                  Gap.w15,
                  _flightInfo(
                      label: "Airline", value: bookingInfo.flight!.name),
                ],
              ),
              _flightInfo(label: "Passengers", value: "James Christin"),
            ],
          ),
          Gap.h32,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _flightInfo(
                      label: "Date",
                      value: DateTimeCvt().getFullDateWithMediumMon(
                          bookingInfo.trip?.date ?? DateTime.now())),
                  Gap.h25,
                  _flightInfo(
                      label: "Boarding Time",
                      value: DateTimeCvt().getHourAndMin(
                          bookingInfo.flight!.departureDate ?? DateTime.now())),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _flightInfo(label: "Gate", value: "24A"),
                  Gap.h25,
                  _flightInfo(label: "Seat", value: bookingInfo.flight!.seat),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _flightInfo(
                      label: "Flight No.", value: bookingInfo.flight!.flightNo),
                  Gap.h25,
                  _flightInfo(
                      label: "Class", value: bookingInfo.flight!.classSeat),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Column _flightInfo({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: CustomTextStyles.bodySmallGray700),
        Gap.h10,
        Text(value, style: theme.textTheme.titleSmall),
      ],
    );
  }

  Widget _places() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 49.0, vertical: 16),
      child: Row(
        children: [
          Column(
            children: [
              Text("JKT", style: theme.textTheme.headlineSmall),
              Gap.h4,
              Text("Jakarta", style: theme.textTheme.bodyMedium),
            ],
          ),
          StepDivider(
            color: appTheme.gray500,
            padding: const EdgeInsets.symmetric(horizontal: 15),
          ),
          Transform.rotate(
              angle: pi / 2,
              child: const Icon(
                Icons.flight,
                size: 24,
                color: Colors.black,
              )),
          StepDivider(
            color: appTheme.gray500,
            padding: const EdgeInsets.symmetric(horizontal: 15),
          ),
          Column(
            children: [
              Text("SBY", style: theme.textTheme.headlineSmall),
              Gap.h4,
              Text("Surabaya", style: theme.textTheme.bodyMedium),
            ],
          ),
        ],
      ),
    );
  }
}
