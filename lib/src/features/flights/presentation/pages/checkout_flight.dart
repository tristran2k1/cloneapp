import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/checkout/checkout.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
import 'package:travo_app/src/models/models.dart';

class CheckoutFlight extends StatefulWidget {
  const CheckoutFlight({super.key, required this.bookingInfo});
  final BookingFlightModel bookingInfo;

  @override
  State<CheckoutFlight> createState() => _CheckoutFlightState();
}

class _CheckoutFlightState extends State<CheckoutFlight> {
  UserAccount _contactDetail = UserAccount(id: "");
  String? _promoCode;
  List<GuestContact> _contactList = [];

  @override
  void initState() {
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
                  FlightTicketDetail(
                    bookingInfo: widget.bookingInfo,
                    thirdWidget: _priceInfo(),
                  ),
                  Gap.h20,
                  _addContact(),
                  Gap.h20,
                  _addPromoCode(),
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

  Padding _priceInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 19),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "\$${widget.bookingInfo.flight!.price}",
                  style: theme.textTheme.headlineSmall,
                ),
                TextSpan(
                  text: "/passenger",
                  style: theme.textTheme.labelSmall!
                      .copyWith(color: appTheme.black900),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            "1 Passenger",
            style: CustomTextStyles.bodySmallBluegray900_1,
          )
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
      onTap: () {
        if (_contactDetail.name.isNotEmpty) {
          _contactList = [
            GuestContact(
              name: _contactDetail.name,
              phone: _contactDetail.phone,
              email: _contactDetail.email,
            )
          ];
          widget.bookingInfo.contacts = _contactList;
          widget.bookingInfo.promocode = _promoCode;

          return FlightCoordinator().goPayment(bookingInfo: widget.bookingInfo);
        } else {
          XToast.error("Please enter your contact");
        }
      },
    );
  }

  Widget _progressCheckout() {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: const [
      StepItem(numStep: 1, title: "Book and Review", isDone: true),
      StepDivider(),
      StepItem(numStep: 2, title: "Payment", isDone: false),
      StepDivider(),
      StepItem(numStep: 3, title: "Confirm", isDone: false),
    ]);
  }

  BlocBuilder<AuthBloc, AuthState> _addContact() {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final user = UserPrefs.I.getUser();
        return BookingInfoWidget(
          title: "Contact Details",
          icon: Assets.images.userOrange,
          textButton: "Add Contact",
          needValidation: true,
          validateText: "Please enter your contact",
          needAvatar: true,
          information: _contactDetail.name.isNotEmpty
              ? "${_contactDetail.name} ${_contactDetail.phone}"
              : null,
          onTap: () async {
            final contact = await goContactDetail(user);
            setState(() {
              _contactDetail = contact ?? _contactDetail;
            });
          },
        );
      },
    );
  }

  BookingInfoWidget _addPromoCode() {
    return BookingInfoWidget(
      title: "Promo Code",
      icon: Assets.images.promoIcon,
      textButton: "Add Promo Code",
      information: _promoCode != '' ? _promoCode : null,
      onTap: () async {
        final promo =
            await FlightCoordinator().addPromoCode(code: _promoCode ?? "");
        setState(() {
          _promoCode = promo ?? _promoCode;
        });
      },
    );
  }

  Future<UserAccount?> goContactDetail(UserAccount user) async {
    return await FlightCoordinator().addContactDetail(
      user: _contactDetail.id == "" ? user : _contactDetail,
    );
  }
}
