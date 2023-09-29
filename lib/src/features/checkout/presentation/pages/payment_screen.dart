import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
import 'package:travo_app/src/models/models.dart';

import '../../checkout.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key, required this.bookingInfo});

  final BookingRoomModel bookingInfo;
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  CreditPayment _creditPayment = CreditPayment();
  late String creditName;
  late String country;

  @override
  void initState() {
    creditName = UserPrefs.I.getUser().name;
    country = UserPrefs.I.getUser().country;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: Stack(children: [
          AppBarWithTitle(
            title: "Checkout",
            leading: CustomBackButton(ctx: context),
          ),
          Positioned(
            top: 144,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 144 - 25,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 25.0)
                    .copyWith(bottom: 25),
                shrinkWrap: true,
                children: [
                  _progressCheckout(),
                  Gap.h20,
                  RadioWidget(
                      icon: Assets.images.miniMarketIcon, title: "Mini Market"),
                  Gap.h20,
                  _cardWidget(),
                  Gap.h20,
                  RadioWidget(
                      icon: Assets.images.bankingTransferIcon,
                      title: "Bank Transfer"),
                  Gap.h20,
                  _doneBtn(),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  BookingInfoWidget _cardWidget() {
    return BookingInfoWidget(
      title: "Credit / Debit Card",
      icon: Assets.images.bankingCardIcon,
      textButton: "Add Card",
      information: _creditPayment.name != '' ? _creditPayment.name : null,
      needAvatar: false,
      needValidation: false,
      onTap: () async {
        final creditInfo = await _addCreditCard();
        setState(() {
          _creditPayment = creditInfo ?? _creditPayment;
        });
      },
    );
  }

  CustomElevatedButton _doneBtn() {
    return CustomElevatedButton(
      text: "Done",
      buttonStyle: CustomButtonStyles.none,
      decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      onTap: () {
        if (_creditPayment.cardNumber != "") {
          widget.bookingInfo.credit = _creditPayment;
          CheckoutCoordinator().goConfirm(bookingInfo: widget.bookingInfo);
        } else {
          XToast.error("Please enter card data");
        }
      },
    );
  }

  Future<CreditPayment?> _addCreditCard() async {
    return await CheckoutCoordinator().addCard(
      name: creditName,
      country: country,
      cardNumber: _creditPayment.cardNumber,
      expdate: _creditPayment.expiration,
      cvv: _creditPayment.cvv,
    );
  }

  Row _progressCheckout() {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: const [
      StepItem(numStep: 1, title: "Book and Review", isDone: false),
      StepDivider(),
      StepItem(numStep: 2, title: "Payment", isDone: true),
      StepDivider(),
      StepItem(numStep: 3, title: "Confirm", isDone: false),
    ]);
  }
}
