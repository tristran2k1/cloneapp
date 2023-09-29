import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

import 'booking_services_icon.dart';

class BookingServices extends StatelessWidget {
  const BookingServices({
    super.key,
    this.onTapHotels,
    this.onTapFlights,
    this.onTapAll,
  });
  final VoidCallback? onTapHotels;
  final VoidCallback? onTapFlights;
  final VoidCallback? onTapAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BookingServicesIcon(
          title: "Hotels",
          imagePath: Assets.images.hotelIcon,
          backgroundColor: appTheme.deepOrange300.withOpacity(0.2),
          onTap: onTapHotels,
        ),
        const Expanded(child: SizedBox()),
        BookingServicesIcon(
          title: "Flights",
          imagePath: Assets.images.flightIcon,
          backgroundColor: appTheme.red300.withOpacity(0.2),
          onTap: onTapFlights,
        ),
        const Expanded(child: SizedBox()),
        BookingServicesIcon(
          title: "All",
          imagePath: Assets.images.flightHotelIcon,
          backgroundColor: appTheme.teal300.withOpacity(0.2),
          height: 35,
          width: 33,
          marginIcon: const EdgeInsets.only(left: 10, bottom: 5),
          onTap: onTapAll,
        ),
      ],
    );
  }
}
