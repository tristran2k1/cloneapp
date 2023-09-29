import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/checkout/presentation/bloc/checkout_bloc/checkout_bloc.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

import '../../checkout.dart';

class BookAndReviewScreen extends StatefulWidget {
  const BookAndReviewScreen({super.key, required this.bookingItem});

  final BookingRoomModel bookingItem;

  @override
  State<BookAndReviewScreen> createState() => _BookAndReviewScreenState();
}

class _BookAndReviewScreenState extends State<BookAndReviewScreen> {
  UserAccount _contactDetail = UserAccount(id: "");
  String? _promoCode;

  late DateTime _startDate;
  late DateTime _endDate;
  List<GuestContact> _contactList = [];

  @override
  void initState() {
    final initdate = DateTime.now().add(const Duration(days: 1));
    _startDate = DateTime(initdate.year, initdate.month, initdate.day);
    _endDate = _startDate.add(const Duration(days: 1));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CheckoutBloc()..add(CheckoutLoadingEvent(widget.bookingItem.roomId)),
      child: Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: SafeArea(
          child: Stack(children: [
            AppBarWithTitle(
              title: "Checkout",
              leading: CustomBackButton(ctx: context),
            ),
            BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const LoadingWidget(),
                  loadingSuccess: (room) => Positioned(
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
                          RoomInfo(room: room),
                          Gap.h20,
                          _addContact(),
                          Gap.h20,
                          _addPromoCode(),
                          Gap.h20,
                          _bookingDate(),
                          Gap.h20,
                          _paymentBtn(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ]),
        ),
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
          widget.bookingItem.contacts = _contactList;
          // if (widget.bookingItem.contacts.isEmpty) {
          //   widget.bookingItem.contacts.add(GuestContact(
          //       name: _contactDetail.name,
          //       phone: _contactDetail.phone,
          //       email: _contactDetail.email));
          // } else {
          //   widget.bookingItem.contacts[0] = GuestContact(
          //       name: _contactDetail.name,
          //       phone: _contactDetail.phone,
          //       email: _contactDetail.email);
          // }
          widget.bookingItem.promocode = _promoCode;
          widget.bookingItem.checkinDate =
              DateTimeCvt().getCheckDate(_startDate);
          widget.bookingItem.checkoutDate =
              DateTimeCvt().getCheckDate(_endDate);
          return CheckoutCoordinator()
              .goPayment(bookingInfo: widget.bookingItem);
        } else {
          XToast.error("Please enter your contact");
        }
      },
    );
  }

  Row _progressCheckout() {
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
          icon: Assets.images.contactIcon,
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
            await CheckoutCoordinator().addPromoCode(code: _promoCode ?? "");
        setState(() {
          _promoCode = promo ?? _promoCode;
        });
      },
    );
  }

  BookingDateWidget _bookingDate() {
    return BookingDateWidget(
      initialDate: DateTime.now().add(const Duration(days: 1)),
      startDate: _startDate,
      endDate: _endDate,
      startDateSelected: (startvalue) {
        setState(() {
          _startDate = startvalue;
          if (!_endDate.isAfter(_startDate)) {
            _endDate = _startDate.add(const Duration(days: 1));
          }
        });
      },
      endDateSelected: (endvalue) {
        setState(() {
          _endDate = endvalue;
        });
      },
    );
  }

  Future<UserAccount?> goContactDetail(UserAccount user) async {
    return await CheckoutCoordinator().addContactDetail(
      user: _contactDetail.id == "" ? user : _contactDetail,
    );
  }
}
