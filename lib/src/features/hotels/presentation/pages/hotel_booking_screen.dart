import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/presentation/widgets/app_bar_with_two_text.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/utils/time_converter.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  late String _desValue;
  late List<DateTime?>? _rangeDate = [null, null];
  late int _noGuest = 1;
  late int _noRoom = 1;

  @override
  void initState() {
    _desValue = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: AppBarWith2Text(
          header: "Hotel Booking",
          subscription: "Choose your favorite hotel and enjoy the service",
          leading: CustomBackButton(ctx: context),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BookingFields(
                    icon: Assets.images.locationIcon,
                    title: "Destination",
                    value: _desValue == '' ? 'unknown' : _desValue,
                    onPressed: () async {
                      final des = await HotelCoordinator()
                          .showSearchDestinationScreen(text: _desValue);
                      if (des != null) {
                        setState(() {
                          _desValue = des;
                        });
                      }
                    },
                  ),
                  Gap.h20,
                  BookingFields(
                    icon: Assets.images.calendarRed,
                    title: "Select Date",
                    value: _getBookingDateValue(_rangeDate),
                    onPressed: () async {
                      final showCalendarScreen = await HotelCoordinator()
                          .showCalendarScreen(
                              checkinTime: _rangeDate?[0]?.toString(),
                              checkoutTime: _rangeDate?[1]?.toString());
                      if (showCalendarScreen != null) {
                        setState(() {
                          _rangeDate = showCalendarScreen;
                        });
                      }
                    },
                  ),
                  Gap.h20,
                  BookingFields(
                    icon: Assets.images.bedGreen,
                    title: "Guest amd Room",
                    value: "$_noGuest Guest, $_noRoom Room",
                    onPressed: () async {
                      final addGuestAndRoomInfo = await HotelCoordinator()
                          .addGuestAndRoomInfo(guest: _noGuest, room: _noRoom);
                      if (addGuestAndRoomInfo != null) {
                        setState(() {
                          _noGuest = addGuestAndRoomInfo['guest'] ?? 1;
                          _noRoom = addGuestAndRoomInfo['room'] ?? 1;
                        });
                      }
                    },
                  ),
                  Gap.h20,
                  CustomElevatedButton(
                    text: "Search",
                    buttonStyle: CustomButtonStyles.none,
                    decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder28,
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _getBookingDateValue(List<DateTime?>? date) {
    if (date == null || date.isEmpty || date[0] == null || date[1] == null) {
      return 'unknown';
    }
    final checkin = DateTimeCvt().getWeekDayMonNoDivider(date[0]!);
    final checkout = DateTimeCvt().getWeekDayMonNoDivider(date[1]!);
    return '$checkin - $checkout';
  }
}
