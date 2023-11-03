import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/models.dart';

import '../../checkout.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key, required this.bookingInfo});

  final BookingRoomModel bookingInfo;
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final ValueNotifier<CreditPayment> _creditPayment =
      ValueNotifier<CreditPayment>(CreditPayment());
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

  Widget _cardWidget() {
    return ValueListenableBuilder(
      valueListenable: _creditPayment,
      builder: (_, value, __) => BookingInfoWidget(
        title: "Credit / Debit Card",
        icon: Assets.images.bankingCardIcon,
        textButton: "Add Card",
        information:
            _creditPayment.value.name != '' ? _creditPayment.value.name : null,
        needAvatar: false,
        needValidation: false,
        onTap: () async {
          final creditInfo = await _addCreditCard();
          _creditPayment.value = creditInfo ?? _creditPayment.value;
        },
      ),
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
        if (_creditPayment.value.cardNumber != "") {
          widget.bookingInfo.credit = _creditPayment.value;
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
      cardNumber: _creditPayment.value.cardNumber,
      expdate: _creditPayment.value.expiration,
      cvv: _creditPayment.value.cvv,
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
