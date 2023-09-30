import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';

import '../widgets/from_to_field.dart';

class RoundTripBooking extends StatefulWidget {
  const RoundTripBooking(
      {super.key, required this.fromPlaceFocus, required this.toPlaceFocus});
  final FocusNode fromPlaceFocus;
  final FocusNode toPlaceFocus;
  @override
  State<RoundTripBooking> createState() => _RoundTripBookingState();
}

class _RoundTripBookingState extends State<RoundTripBooking> {
  DateTime? _departureTime;
  DateTime? _returnTime;

  int _passengers = 1;
  String _classSeat = "Economy";

  late TextEditingController _fromPlaceController;
  late TextEditingController _toPlaceController;

  @override
  void initState() {
    super.initState();
    _fromPlaceController = TextEditingController();
    _toPlaceController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.fromPlaceFocus.unfocus();
        widget.toPlaceFocus.unfocus();
      },
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          children: [
            FromToField(
              focusFrom: widget.fromPlaceFocus,
              focusTo: widget.toPlaceFocus,
              fromController: _fromPlaceController,
              toController: _toPlaceController,
              onTap: () {
                final tmp = _toPlaceController.text;
                setState(() {
                  _toPlaceController.text = _fromPlaceController.text;
                  _fromPlaceController.text = tmp;
                });
              },
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.calendarOrange,
              title: "Departure",
              value: _getBookingDateValue(_departureTime),
              onPressed: () {},
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.calendarOrange,
              title: "Return",
              value: _getBookingDateValue(_returnTime),
              onPressed: () {},
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.userRed,
              title: "Passengers",
              value: "${_passengers.toString()} Passenger",
              onPressed: () {},
            ),
            Gap.h10,
            BookingFields(
              icon: Assets.images.seatGreen,
              title: "Class",
              value: _classSeat,
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
          from: _fromPlaceController.text,
          to: _toPlaceController.text,
          date: _departureTime,
          passengers: _passengers,
          classSeat: _classSeat,
        ),
        trip2: TripInfo(
          from: _toPlaceController.text,
          to: _fromPlaceController.text,
          date: _returnTime,
          passengers: _passengers,
          classSeat: _classSeat,
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
