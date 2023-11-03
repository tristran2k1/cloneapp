import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/checkout/presentation/bloc/checkout_bloc/checkout_bloc.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
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
  final ValueNotifier<UserAccount> _contactDetail =
      ValueNotifier(UserAccount(id: ""));
  final StringValueModel _promoCode = StringValueModel();
  final DateTimeValueModel _startDate = DateTimeValueModel();
  final DateTimeValueModel _endDate = DateTimeValueModel();
  List<GuestContact> _contactList = [];

  @override
  void initState() {
    final initDate = DateTime.now().add(const Duration(days: 1));
    _startDate.setValue(DateTime(initDate.year, initDate.month, initDate.day));
    _endDate.setValue(_startDate.value!.add(const Duration(days: 1)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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

  Widget _paymentBtn() {
    return ValueListenableBuilder(
      valueListenable: _contactDetail,
      builder: (_, value, __) => CustomElevatedButton(
        text: "Payment",
        buttonStyle: CustomButtonStyles.none,
        decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        onTap: () {
          if (_contactDetail.value.name.isNotEmpty) {
            _contactList = [
              GuestContact(
                name: _contactDetail.value.name,
                phone: _contactDetail.value.phone,
                email: _contactDetail.value.email,
              )
            ];
            widget.bookingItem.contacts = _contactList;
            widget.bookingItem.promocode = _promoCode.value;
            widget.bookingItem.checkinDate =
                DateTimeCvt().getCheckDate(_startDate.value!);
            widget.bookingItem.checkoutDate =
                DateTimeCvt().getCheckDate(_endDate.value!);
            return CheckoutCoordinator()
                .goPayment(bookingInfo: widget.bookingItem);
          } else {
            XToast.error("Please enter your contact");
          }
        },
      ),
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
        return ValueListenableBuilder(
          valueListenable: _contactDetail,
          builder: (_, value, __) => BookingInfoWidget(
            title: "Contact Details",
            icon: Assets.images.contactIcon,
            textButton: "Add Contact",
            needValidation: true,
            validateText: "Please enter your contact",
            needAvatar: true,
            information: _contactDetail.value.name.isNotEmpty
                ? "${_contactDetail.value.name} ${_contactDetail.value.phone}"
                : null,
            onTap: () async {
              final contact = await goContactDetail(user, _contactDetail.value);

              _contactDetail.value = contact ?? _contactDetail.value;
            },
          ),
        );
      },
    );
  }

  BookingInfoWidget _addPromoCode() {
    return BookingInfoWidget(
      title: "Promo Code",
      icon: Assets.images.promoIcon,
      textButton: "Add Promo Code",
      information: _promoCode.value != '' ? _promoCode.value : null,
      onTap: () async {
        final promo = await CheckoutCoordinator()
            .addPromoCode(code: _promoCode.value ?? "");
        if (promo != null) {
          _promoCode.setValue(promo);
        }
      },
    );
  }

  BookingDateWidget _bookingDate() {
    return BookingDateWidget(
      initialDate: DateTime.now().add(const Duration(days: 1)),
      startDate: _startDate.value!,
      endDate: _endDate.value!,
      startDateSelected: (startValue) {
        _startDate.setValue(startValue);
        if (!_endDate.value!.isAfter(_startDate.value!)) {
          _endDate.setValue(_startDate.value!.add(const Duration(days: 1)));
        }
      },
      endDateSelected: (endValue) {
        _endDate.setValue(endValue);
      },
    );
  }

  Future<UserAccount?> goContactDetail(
      UserAccount user, UserAccount contact) async {
    return await CheckoutCoordinator().addContactDetail(
      user: contact.id == "" ? user : contact,
    );
  }
}
