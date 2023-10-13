import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

import '../widgets/from_to_field.dart';

class MultiCityBooking extends StatefulWidget {
  const MultiCityBooking({super.key});

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
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Flight 1", style: CustomTextStyles.titleMediumBlack900),
          Gap.h20,
          _inputTrip1(),
          Gap.h10,
          _pickDateTrip1(context),
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
          _inputTrip2(),
          Gap.h10,
          _pickDateTrip2(context),
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
    ));
  }

  BookingFields _pickDateTrip2(BuildContext context) {
    return BookingFields(
      icon: Assets.images.calendarOrange,
      title: "Departure",
      value: _getBookingDateValue(_departureTime2),
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
            _departureTime2 = picked;
          });
        }
      },
    );
  }

  FromToField _inputTrip2() {
    return FromToField(
      fromController: _fromPlaceController2,
      toController: _toPlaceController2,
      onTap: () {
        final tmp = _toPlaceController2.text;
        setState(() {
          _toPlaceController2.text = _fromPlaceController2.text;
          _fromPlaceController2.text = tmp;
        });
      },
    );
  }

  BookingFields _pickDateTrip1(BuildContext context) {
    return BookingFields(
      icon: Assets.images.calendarOrange,
      title: "Departure",
      value: _getBookingDateValue(_departureTime1),
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
            _departureTime1 = picked;
          });
        }
      },
    );
  }

  FromToField _inputTrip1() {
    return FromToField(
      fromController: _fromPlaceController1,
      toController: _toPlaceController1,
      onTap: () {
        final tmp = _toPlaceController1.text;
        setState(() {
          _toPlaceController1.text = _fromPlaceController1.text;
          _fromPlaceController1.text = tmp;
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
        if (_fromPlaceController1.text.isEmpty ||
            _toPlaceController1.text.isEmpty ||
            _fromPlaceController2.text.isEmpty ||
            _toPlaceController2.text.isEmpty) {
          return XToast.error("Please fill your departure and destination");
        }

        if (_departureTime1 == null || _departureTime2 == null) {
          return XToast.error("Please select your departure dates");
        }

        return FlightCoordinator().selectFlight(
          tripInfo: TripInfo(
            from: _fromPlaceController1.text,
            to: _toPlaceController1.text,
            date: _departureTime1,
            passengers: _passengers1,
            classSeat: _classSeat1,
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
