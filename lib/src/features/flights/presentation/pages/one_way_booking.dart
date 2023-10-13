import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/time_converter.dart';

import '../widgets/from_to_field.dart';

class OneWayBooking extends StatefulWidget {
  const OneWayBooking({super.key});
  @override
  State<OneWayBooking> createState() => _OneWayBookingState();
}

class _OneWayBookingState extends State<OneWayBooking> {
  DateTime? _date;

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
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
      child: Column(
        children: [
          _inputPlaces(),
          Gap.h10,
          _pickDate(context),
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
        ],
      ),
    ));
  }

  BookingFields _pickDate(BuildContext context) {
    return BookingFields(
      icon: Assets.images.calendarOrange,
      title: "Departure",
      value: _getBookingDateValue(_date),
      onPressed: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          currentDate: DateTime.now(),
          initialDate: DateTime.now().add(const Duration(days: 1)),
          firstDate: DateTime.now().add(const Duration(days: 1)),
          lastDate: DateTime(2100),
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: theme.colorScheme.primary,
                  onPrimary: appTheme.blueGray900,
                  onSurface: theme.colorScheme.primary,
                ),
              ),
              child: child!,
            );
          },
        );
        if (picked != null) {
          setState(() {
            _date = picked;
          });
        }
      },
    );
  }

  FromToField _inputPlaces() {
    return FromToField(
      fromController: _fromPlaceController,
      toController: _toPlaceController,
      onTap: () {
        final tmp = _toPlaceController.text;
        setState(() {
          _toPlaceController.text = _fromPlaceController.text;
          _fromPlaceController.text = tmp;
        });
      },
    );
  }

  CustomElevatedButton _searchBtn() {
    return CustomElevatedButton(
      text: "Search",
      buttonStyle: CustomButtonStyles.none,
      decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      onTap: () {
        if (_fromPlaceController.text.isEmpty ||
            _toPlaceController.text.isEmpty) {
          return XToast.error("Please fill your departure and destination");
        }

        if (_date == null) {
          return XToast.error("Please select your departure date");
        }

        return FlightCoordinator().selectFlight(
          tripInfo: TripInfo(
            from: _fromPlaceController.text,
            to: _toPlaceController.text,
            date: _date,
            passengers: _passengers,
            classSeat: _classSeat,
          ),
        );
      },
    );
  }

  String _getBookingDateValue(DateTime? date) {
    if (date == null) {
      return 'Select Date';
    }
    return DateTimeCvt().getDayMonYr(date);
  }
}
