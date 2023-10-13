import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

import '../widgets/from_to_field.dart';

class RoundTripBooking extends StatefulWidget {
  const RoundTripBooking({super.key});
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
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
      child: Column(
        children: [
          _inputTripInfo(),
          Gap.h10,
          _pickDepartureDate(context),
          Gap.h10,
          _pickReturnDate(context),
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
    ));
  }

  FromToField _inputTripInfo() {
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

  BookingFields _pickReturnDate(BuildContext context) {
    return BookingFields(
      icon: Assets.images.calendarOrange,
      title: "Return",
      value: _getBookingDateValue(_returnTime),
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
            _returnTime = picked;
          });
        }
      },
    );
  }

  BookingFields _pickDepartureDate(BuildContext context) {
    return BookingFields(
      icon: Assets.images.calendarOrange,
      title: "Departure",
      value: _getBookingDateValue(_departureTime),
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
            _departureTime = picked;
          });
        }
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

        if (_departureTime == null || _returnTime == null) {
          return XToast.error("Please select your departure dates");
        }

        return FlightCoordinator().selectFlight(
          tripInfo: TripInfo(
            from: _fromPlaceController.text,
            to: _toPlaceController.text,
            date: _departureTime,
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
