import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/checkout/checkout.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';

class FlightConfirmScreen extends StatelessWidget {
  const FlightConfirmScreen({super.key, required this.bookingInfo});
  final BookingFlightModel bookingInfo;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
                  FlightTicketDetail(
                    bookingInfo: bookingInfo,
                    thirdWidget: _barcode(),
                  ),
                  Gap.h20,
                  FlightBill(
                    price: bookingInfo.flight!.price.toString(),
                  ),
                  Gap.h20,
                  const ConfirmPaymentMethod(),
                  Gap.h20,
                  _paymentBtn(),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget _barcode() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 19),
      child: Column(
        children: [
          CustomImageView(
            imagePath: Assets.images.barcode.path,
          ),
          Text("1234 5678 90AS 6543 21CV",
              style: CustomTextStyles.labelSmallBlueGray90001)
        ],
      ),
    );
  }

  CustomElevatedButton _paymentBtn() {
    return CustomElevatedButton(
      text: "Payment",
      buttonStyle: CustomButtonStyles.none,
      decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      onTap: () {},
    );
  }

  Widget _progressCheckout() {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: const [
      StepItem(numStep: 1, title: "Book and Review", isDone: false),
      StepDivider(),
      StepItem(numStep: 2, title: "Payment", isDone: false),
      StepDivider(),
      StepItem(numStep: 3, title: "Confirm", isDone: true),
    ]);
  }
}
