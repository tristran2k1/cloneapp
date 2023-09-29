import 'package:go_router/go_router.dart';
import 'package:travo_app/src/features/checkout/checkout.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/routes/base_coordinator.dart';
import 'package:travo_app/src/routes/routes.dart';

enum CheckoutRoute { addContact, addPromoCode, newpayment, addCard, confirm }

class CheckoutCoordinator extends BaseCoordinator {
  static final router = [
    GoRoute(
      parentNavigatorKey: XAppRouter.navigatorKey,
      name: CheckoutRoute.addContact.name,
      path: 'contact',
      pageBuilder: (context, state) => DefaultTransition(
          child: ContactDetailScreen(
        user: state.extra as UserAccount,
      )),
    ),
    GoRoute(
      parentNavigatorKey: XAppRouter.navigatorKey,
      name: CheckoutRoute.addPromoCode.name,
      path: 'promo',
      pageBuilder: (context, state) => DefaultTransition(
          child: PromoScreen(code: state.queryParams['code'] ?? '')),
    ),
    GoRoute(
        parentNavigatorKey: XAppRouter.navigatorKey,
        name: CheckoutRoute.newpayment.name,
        path: 'newpayment',
        pageBuilder: (context, state) => DefaultTransition(
              child:
                  PaymentScreen(bookingInfo: state.extra as BookingRoomModel),
            ),
        routes: [
          GoRoute(
              parentNavigatorKey: XAppRouter.navigatorKey,
              name: CheckoutRoute.addCard.name,
              path: 'addcard',
              pageBuilder: (context, state) => DefaultTransition(
                      child: AddCardScreen(
                    name: state.queryParams['name'] ?? '',
                    cardNumber: state.queryParams['cardNumber'],
                    expdate: state.queryParams['expdate'],
                    country: state.queryParams['country'] ?? '',
                    cvv: state.queryParams['cvv'],
                  )),
              routes: [
                GoRoute(
                  parentNavigatorKey: XAppRouter.navigatorKey,
                  name: CheckoutRoute.confirm.name,
                  path: 'confirm',
                  pageBuilder: (context, state) => DefaultTransition(
                      child: ConfirmScreen(
                          bookingInfo: state.extra as BookingRoomModel)),
                ),
              ])
        ]),
  ];

  Future<UserAccount?> addContactDetail({required UserAccount user}) async {
    return await context.pushNamed(CheckoutRoute.addContact.name, extra: user);
  }

  Future<String?> addPromoCode({required String code}) async {
    return await context.pushNamed(CheckoutRoute.addPromoCode.name,
        queryParams: {'code': code});
  }

  void goPayment({required BookingRoomModel bookingInfo}) {
    pushNamed(CheckoutRoute.newpayment.name, extra: bookingInfo);
  }

  Future<CreditPayment?> addCard(
      {required String name,
      required String country,
      String? cardNumber,
      String? expdate,
      String? cvv}) async {
    return await context.pushNamed(CheckoutRoute.addCard.name, queryParams: {
      'name': name,
      'country': country,
      'cardNumber': cardNumber,
      'expdate': expdate,
      'cvv': cvv
    });
  }

  void goConfirm({required BookingRoomModel bookingInfo}) {
    pushNamed(CheckoutRoute.confirm.name, extra: bookingInfo);
  }

  void goHome() {
    context.go(AppRoute.home.name);
  }
}
