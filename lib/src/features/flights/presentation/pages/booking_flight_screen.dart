import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/flights/presentation/pages/multi_city_booking.dart';
import 'package:travo_app/src/features/flights/presentation/pages/round_trip_booking.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';

import 'one_way_booking.dart';

class BookingFlightsScreen extends StatefulWidget {
  const BookingFlightsScreen({super.key});

  @override
  State<BookingFlightsScreen> createState() => _BookingFlightsScreenState();
}

class _BookingFlightsScreenState extends State<BookingFlightsScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    tabviewController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: SafeArea(
          child: AppBarWithTitle(
            title: "Book Your\nFlight",
            leading: CustomBackButton(ctx: context),
            child: SingleChildScrollView(
              child: Column(children: [
                Gap.h20,
                _tabButton(),
                SizedBox(
                    height: 552,
                    child: TabBarView(
                      controller: tabviewController,
                      children: const [
                        OneWayBooking(),
                        RoundTripBooking(),
                        MultiCityBooking(),
                      ],
                    ))
              ]),
            ),
          ),
        ));
  }

  SizedBox _tabButton() {
    return SizedBox(
        height: 40,
        width: 326,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            labelStyle: CustomTextStyles.bodyMediumGray700,
            unselectedLabelColor: appTheme.royalty,
            unselectedLabelStyle: CustomTextStyles.bodyMediumGray700,
            indicator: BoxDecoration(
                color: appTheme.deepOrange300,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: appTheme.deepOrange300,
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter)),
            tabs: const [
              Tab(child: Text("One way")),
              Tab(child: Text("Round Trip")),
              Tab(child: Text("Multi-City"))
            ]));
  }
}
