import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key, required this.bookingInfo});
  final BookingFlightModel bookingInfo;

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  final ValueNotifier<SeatData?> _selectedSeat = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: SafeArea(
          child: Stack(
            children: [
              AppBarWithTitle(
                title: "Select Seat",
                leading: CustomBackButton(ctx: context),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _seatInfo(),
                          Gap.h50,
                          _tripInfo(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(svgPath: Assets.images.airplaneBase)),
              Align(
                alignment: const Alignment(1, 1),
                child: Container(
                  padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                  width: screenSize.width - 132,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomImageView(svgPath: Assets.images.airplaneCockpit),
                        Gap.h20,
                        _businessClass(),
                        Gap.h20,
                        _economyClass(),
                        Gap.h64,
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomElevatedButton(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  text: "Processed",
                  buttonStyle: CustomButtonStyles.none,
                  decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder28,
                  ),
                  onTap: () {
                    if (_selectedSeat.value != null) {
                      widget.bookingInfo.flight!.classSeat =
                          _selectedSeat.value!.seat.classseat;
                      widget.bookingInfo.flight!.seat =
                          "${_selectedSeat.value!.seat.row}${_selectedSeat.value!.seat.column}";
                      FlightCoordinator().goCheckout(
                        bookingInfo: widget.bookingInfo,
                      );
                    } else {
                      XToast.error("Please select you seat");
                    }
                  },
                ),
              )
            ],
          ),
        ));
  }

  Widget _economyClass() {
    return Column(
      children: [
        Text(
          "Economy Class",
          style: CustomTextStyles.labelLargeblueGray90001,
        ),
        Gap.h10,
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 22 + 15),
          child: ValueListenableBuilder(
            valueListenable: _selectedSeat,
            builder: (_, __, ___) => FlightSeatGrid(
              nRows: 5,
              nCols: 6,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              bookedList: const ['1A', '5A', '5B', '5C', '3E'],
              selectedSeat: _selectedSeat.value,
              onChanged: (seat) => _selectedSeat.value = seat,
              classseat: 'Economy',
            ),
          ),
        ),
      ],
    );
  }

  Widget _businessClass() {
    return Column(
      children: [
        Text(
          "Bussiness Class",
          style: CustomTextStyles.labelLargeblueGray90001,
        ),
        Gap.h20,
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 22 + 15),
          child: ValueListenableBuilder(
            valueListenable: _selectedSeat,
            builder: (_, __, ___) => FlightSeatGrid(
              nRows: 3,
              nCols: 4,
              mainAxisSpacing: 15,
              crossAxisSpacing: 10,
              bookedList: const ['1A', '3B', '2C', '2D'],
              selectedSeat: _selectedSeat.value,
              onChanged: (seat) => _selectedSeat.value = seat,
              classseat: 'Business',
            ),
          ),
        ),
      ],
    );
  }

  Widget _tripInfo() {
    return Column(
      children: [
        Text("SBY", style: CustomTextStyles.headlineLargeIndigo40001),
        Gap.h20,
        Icon(Icons.flight, size: 24, color: appTheme.indigo40001),
        Gap.h20,
        Text("SBY", style: CustomTextStyles.headlineLargeIndigo40001),
      ],
    );
  }

  Widget _seatInfo() {
    return ValueListenableBuilder(
      valueListenable: _selectedSeat,
      builder: (_, __, ___) => SeatInfo(
        numseat:
            "${_selectedSeat.value?.seat.row ?? "_"}${_selectedSeat.value?.seat.column ?? "_"}",
        classseat: _selectedSeat.value?.seat.classseat ?? "_",
        price: 215,
      ),
    );
  }
}
