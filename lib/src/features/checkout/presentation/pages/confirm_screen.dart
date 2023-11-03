import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
import 'package:travo_app/src/routes/coordinator.dart';
import 'package:travo_app/src/utils/time_converter.dart';

import '../../checkout.dart';
import '../bloc/confirm_bloc/confirm_bloc.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({super.key, required this.bookingInfo});

  final BookingRoomModel bookingInfo;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (_) =>
          ConfirmBloc()..add(ConfirmLoadingEvent(bookingInfo.roomId)),
      child: BlocListener<ConfirmBloc, ConfirmState>(
        listener: (_, cstate) {
          if (cstate is ConfirmError) {
            XToast.error(cstate.message);
          }
          if (cstate is ConfirmBookingSuccess) {
            XToast.success("Booking success");
          }
        },
        child: Scaffold(
          backgroundColor: theme.colorScheme.background,
          body: SafeArea(
            child: Stack(children: [
              AppBarWithTitle(
                title: "Checkout",
                leading: CustomBackButton(ctx: context),
              ),
              Positioned(
                top: tBarHeight,
                child: SizedBox(
                  width: screenSize.width,
                  height: screenSize.height - tBarHeight - tBarTitleHeight,
                  child: ListView(
                    padding: EdgeInsetsConst.hor25.copyWith(bottom: 25),
                    shrinkWrap: true,
                    children: [
                      _progressCheckout(),
                      Gap.h20,
                      _roomInfo(),
                      Gap.h20,
                      _bill(),
                      Gap.h20,
                      const ConfirmPaymentMethod(),
                      Gap.h20,
                      _doneBtn(context),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  BlocBuilder<ConfirmBloc, ConfirmState> _doneBtn(BuildContext context) {
    return BlocBuilder<ConfirmBloc, ConfirmState>(
      builder: (context, state) {
        return CustomElevatedButton(
          text: "Done",
          buttonStyle: CustomButtonStyles.none,
          decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder28,
          ),
          onTap: () {
            context.read<ConfirmBloc>().add(
                  ConfirmBookingEvent(bookingInfo: bookingInfo),
                );
            LCoordinator().showHomeScreen();
          },
          isLoading: state is ConfirmLoading,
        );
      },
    );
  }

  BlocBuilder<ConfirmBloc, ConfirmState> _bill() {
    return BlocBuilder<ConfirmBloc, ConfirmState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const LoadingWidget(),
          loadingSuccess: (room) => BillWidget(
            price: room.price,
            duration: DateTimeCvt().getDurationDays(
              bookingInfo.getCheckinDate,
              bookingInfo.getCheckoutDate,
            ),
          ),
        );
      },
    );
  }

  BlocBuilder<ConfirmBloc, ConfirmState> _roomInfo() {
    return BlocBuilder<ConfirmBloc, ConfirmState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const LoadingWidget(),
          loadingSuccess: (room) => ConfirmRoomInfo(
            room: room,
            checkin: bookingInfo.checkinDate,
            checkout: bookingInfo.checkoutDate,
          ),
        );
      },
    );
  }

  Row _progressCheckout() {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: const [
      StepItem(numStep: 1, title: "Book and Review", isDone: false),
      StepDivider(),
      StepItem(numStep: 2, title: "Payment", isDone: false),
      StepDivider(),
      StepItem(numStep: 3, title: "Confirm", isDone: true),
    ]);
  }
}
