import 'package:go_router/go_router.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/routes/base_coordinator.dart';
import 'package:travo_app/src/routes/routes.dart';

import '../../checkout/checkout.dart';
import '../flights.dart';

enum FlightRoute {
  selectFlight,
  flightfacilities,
  flightsortby,
  seat,
  flightcheckout,
  flightpayment,
  flightconfirm,
  flightContact,
  flightPromo,
}

class FlightCoordinator extends BaseCoordinator {
  static final router = [
    GoRoute(
        parentNavigatorKey: XAppRouter.navigatorKey,
        name: FlightRoute.selectFlight.name,
        path: 'selectFlight',
        pageBuilder: (context, state) => DefaultTransition(
              child: ResultFlightScreen(
                bookingInfo: state.extra as BookingFlightModel,
              ),
            ),
        routes: [
          GoRoute(
            parentNavigatorKey: XAppRouter.navigatorKey,
            name: FlightRoute.flightfacilities.name,
            path: 'flightfacilities',
            pageBuilder: (context, state) =>
                DefaultTransition(child: const FacilitiesFlight()),
          ),
          GoRoute(
            parentNavigatorKey: XAppRouter.navigatorKey,
            name: FlightRoute.flightsortby.name,
            path: 'flightsortby',
            pageBuilder: (context, state) =>
                DefaultTransition(child: const SortbyFlight()),
          ),
          GoRoute(
              parentNavigatorKey: XAppRouter.navigatorKey,
              name: FlightRoute.seat.name,
              path: 'seat',
              pageBuilder: (context, state) => DefaultTransition(
                      child: SelectSeat(
                    bookingInfo: state.extra as BookingFlightModel,
                  )),
              routes: [
                GoRoute(
                  parentNavigatorKey: XAppRouter.navigatorKey,
                  name: FlightRoute.flightcheckout.name,
                  path: 'flightcheckout',
                  pageBuilder: (context, state) => DefaultTransition(
                      child: CheckoutFlight(
                    bookingInfo: state.extra as BookingFlightModel,
                  )),
                  routes: [
                    GoRoute(
                        parentNavigatorKey: XAppRouter.navigatorKey,
                        name: FlightRoute.flightpayment.name,
                        path: 'flightpayment',
                        pageBuilder: (context, state) => DefaultTransition(
                                child: FlightPaymentScreen(
                              bookingInfo: state.extra as BookingFlightModel,
                            )),
                        routes: [
                          GoRoute(
                            parentNavigatorKey: XAppRouter.navigatorKey,
                            name: FlightRoute.flightconfirm.name,
                            path: 'flightconfirm',
                            pageBuilder: (context, state) => DefaultTransition(
                                child: FlightConfirmScreen(
                              bookingInfo: state.extra as BookingFlightModel,
                            )),
                          ),
                        ]),
                  ],
                ),
              ]),
        ])
  ];

  void selectFlight({required TripInfo tripInfo}) {
    BookingFlightModel bookingFlight = BookingFlightModel(
      uid: UserPrefs().getUser().id,
      trip: tripInfo,
    );
    pushNamed(FlightRoute.selectFlight.name, extra: bookingFlight);
  }

  void selectFacilities() {
    pushNamed(FlightRoute.flightfacilities.name);
  }

  Future<FlightSortByOption?> showSortbyScreen() async {
    return await context.pushNamed(FlightRoute.flightsortby.name);
  }

  void selectSeat({required BookingFlightModel bookingInfo}) {
    pushNamed(FlightRoute.seat.name, extra: bookingInfo);
  }

  void goCheckout({required BookingFlightModel bookingInfo}) {
    pushNamed(FlightRoute.flightcheckout.name, extra: bookingInfo);
  }

  Future<UserAccount?> addContactDetail({required UserAccount user}) async {
    return await context.pushNamed(CheckoutRoute.addContact.name, extra: user);
  }

  Future<String?> addPromoCode({required String code}) async {
    return await context.pushNamed(CheckoutRoute.addPromoCode.name,
        queryParams: {'code': code});
  }

  void goPayment({required BookingFlightModel bookingInfo}) {
    pushNamed(FlightRoute.flightpayment.name, extra: bookingInfo);
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

  void goConfirm({required BookingFlightModel bookingInfo}) {
    pushNamed(FlightRoute.flightconfirm.name, extra: bookingInfo);
  }
}
