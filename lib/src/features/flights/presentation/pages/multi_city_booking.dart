import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';

import '../widgets/from_to_field.dart';

class MultiCityBooking extends StatefulWidget {
  const MultiCityBooking(
      {super.key,
      required this.fromPlaceFocus1,
      required this.toPlaceFocus1,
      required this.fromPlaceFocus2,
      required this.toPlaceFocus2});

  final FocusNode fromPlaceFocus1;
  final FocusNode toPlaceFocus1;
  final FocusNode fromPlaceFocus2;
  final FocusNode toPlaceFocus2;
  @override
  State<MultiCityBooking> createState() => _MultiCityBookingState();
}

class _MultiCityBookingState extends State<MultiCityBooking> {
  late TextEditingController _fromPlaceController1;
  late TextEditingController _toPlaceController1;
  DateTime? _departureTime1;
  int _passengers1 = 1;
  String _classSeat1 = "Economy";

  late TextEditingController _fromPlaceController2;
  late TextEditingController _toPlaceController2;
  DateTime? _departureTime2;
  int _passengers2 = 1;
  String _classSeat2 = "Economy";

  @override
  void initState() {
    super.initState();
    _fromPlaceController1 = TextEditingController();
    _toPlaceController1 = TextEditingController();
    _fromPlaceController2 = TextEditingController();
    _toPlaceController2 = TextEditingController();
  }

  @override
  void dispose() {
    _fromPlaceController1.dispose();
    _toPlaceController1.dispose();
    _fromPlaceController2.dispose();
    _toPlaceController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.fromPlaceFocus1.unfocus();
        widget.toPlaceFocus1.unfocus();
        widget.fromPlaceFocus2.unfocus();
        widget.toPlaceFocus2.unfocus();
      },
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Flight 1", style: CustomTextStyles.titleMediumBlack900),
            Gap.h20,
            FromToField(
              focusFrom: widget.fromPlaceFocus1,
              focusTo: widget.toPlaceFocus1,
              fromController: _fromPlaceController1,
              toController: _toPlaceController1,
              onTap: () {
                final tmp = _toPlaceController1.text;
                setState(() {
                  _toPlaceController1.text = _fromPlaceController1.text;
                  _fromPlaceController1.text = tmp;
                });
              },
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.calendarOrange,
              title: "Departure",
              value: _getBookingDateValue(_departureTime1),
              onPressed: () {},
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.userRed,
              title: "Passengers",
              value: "${_passengers1.toString()} Passenger",
              onPressed: () {},
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.seatGreen,
              title: "Class",
              value: _classSeat1,
              onPressed: () {},
            ),
            Gap.h20,

            // Flight 2

            Text("Flight 2", style: CustomTextStyles.titleMediumBlack900),
            Gap.h20,
            FromToField(
              focusFrom: widget.fromPlaceFocus2,
              focusTo: widget.toPlaceFocus2,
              fromController: _fromPlaceController2,
              toController: _toPlaceController2,
              onTap: () {
                final tmp = _toPlaceController2.text;
                setState(() {
                  _toPlaceController2.text = _fromPlaceController2.text;
                  _fromPlaceController2.text = tmp;
                });
              },
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.calendarOrange,
              title: "Departure",
              value: _getBookingDateValue(_departureTime2),
              onPressed: () {},
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.userRed,
              title: "Passengers",
              value: "${_passengers2.toString()} Passenger",
              onPressed: () {},
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.seatGreen,
              title: "Class",
              value: _classSeat2,
              onPressed: () {},
            ),
            Gap.h20,

            _searchBtn(),
            Gap.h64,
          ],
        ),
      )),
    );
  }

  CustomElevatedButton _searchBtn() {
    return CustomElevatedButton(
      text: "Search",
      buttonStyle: CustomButtonStyles.none,
      decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      onTap: () => FlightCoordinator().selectFlight(
        trip1: TripInfo(
          from: _fromPlaceController1.text,
          to: _toPlaceController1.text,
          date: _departureTime1,
          passengers: _passengers1,
          classSeat: _classSeat1,
        ),
        trip2: TripInfo(
          from: _fromPlaceController2.text,
          to: _toPlaceController2.text,
          date: _departureTime2,
          passengers: _passengers2,
          classSeat: _classSeat2,
        ),
      ),
    );
  }

  String _getBookingDateValue(DateTime? date) {
    if (date == null) {
      return 'Select Date';
    }
    return '${date.day}-${date.month}-${date.year}';
  }
}
