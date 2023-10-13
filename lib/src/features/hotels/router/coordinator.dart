import 'package:go_router/go_router.dart';
import 'package:travo_app/src/features/checkout/checkout.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';
import 'package:travo_app/src/routes/base_coordinator.dart';
import 'package:travo_app/src/routes/routes.dart';

enum HotelRoute {
  detail,
  room,
  checkout,
  filter,
  searchDestination,
  selectDate,
  addRoomInfo,
  bookingHotel,
  facilities,
  propertyType,
  sortby
}

class HotelCoordinator extends BaseCoordinator {
  static final router = [
    GoRoute(
        parentNavigatorKey: XAppRouter.navigatorKey,
        name: HotelRoute.detail.name,
        path: 'detail',
        pageBuilder: (context, state) => DefaultTransition(
            child: DetailHotelScreen(id: state.queryParams['id'] ?? '')),
        routes: [
          GoRoute(
            parentNavigatorKey: XAppRouter.navigatorKey,
            name: HotelRoute.room.name,
            path: 'room',
            pageBuilder: (context, state) => DefaultTransition(
                child:
                    SelectRoomScreen(hotelId: state.queryParams['id'] ?? "")),
            routes: [
              GoRoute(
                  parentNavigatorKey: XAppRouter.navigatorKey,
                  name: HotelRoute.checkout.name,
                  path: 'checkout',
                  pageBuilder: (context, state) => DefaultTransition(
                          child: BookAndReviewScreen(
                        bookingItem: state.extra as BookingRoomModel,
                      )),
                  routes: CheckoutCoordinator.router)
            ],
          )
        ]),
    GoRoute(
        parentNavigatorKey: XAppRouter.navigatorKey,
        name: HotelRoute.bookingHotel.name,
        path: 'bookingHotel',
        pageBuilder: (context, state) =>
            DefaultTransition(child: const HotelBookingScreen()),
        routes: [
          GoRoute(
            parentNavigatorKey: XAppRouter.navigatorKey,
            name: HotelRoute.searchDestination.name,
            path: 'searchDestination',
            pageBuilder: (context, state) => DefaultTransition(
                child:
                    SearchDestinationScreen(text: state.queryParams['text'])),
          ),
          GoRoute(
            parentNavigatorKey: XAppRouter.navigatorKey,
            name: HotelRoute.selectDate.name,
            path: 'selectDate',
            pageBuilder: (context, state) => DefaultTransition(
                child: BookingSelectDateScreen(
              checkinTime: state.queryParams['checkinTime'],
              checkoutTime: state.queryParams['checkoutTime'],
            )),
          ),
          GoRoute(
            parentNavigatorKey: XAppRouter.navigatorKey,
            name: HotelRoute.addRoomInfo.name,
            path: 'addRoomInfo',
            pageBuilder: (context, state) => DefaultTransition(
                child: AddGuestRoomScreen(
              guest: int.parse(state.queryParams['guest'] ?? '1'),
              room: int.parse(state.queryParams['room'] ?? '1'),
            )),
          ),
        ]),
    GoRoute(
      parentNavigatorKey: XAppRouter.navigatorKey,
      name: HotelRoute.facilities.name,
      path: 'facilities',
      pageBuilder: (context, state) =>
          DefaultTransition(child: const FacilitiesScreen()),
    ),
    GoRoute(
      parentNavigatorKey: XAppRouter.navigatorKey,
      name: HotelRoute.propertyType.name,
      path: 'propertyType',
      pageBuilder: (context, state) =>
          DefaultTransition(child: const PropertyTypeScreen()),
    ),
    GoRoute(
      parentNavigatorKey: XAppRouter.navigatorKey,
      name: HotelRoute.sortby.name,
      path: 'sortby',
      pageBuilder: (context, state) =>
          DefaultTransition(child: const SortbyScreen()),
    )
  ];

  void showDetailHotelsScreen({required String id}) {
    pushNamed(HotelRoute.detail.name, queryParams: {'id': id});
  }

  void showSelectRoomScreen({required String id}) {
    pushNamed(HotelRoute.room.name, queryParams: {'id': id});
  }

  void showCheckoutScreen({required BookingRoomModel bookingRoom}) {
    pushNamed(HotelRoute.checkout.name, extra: bookingRoom);
  }

  void showSearchScreen() {
    pushNamed(HotelRoute.bookingHotel.name);
  }

  Future<String?> showSearchDestinationScreen({String? text}) async {
    return await context.pushNamed(HotelRoute.searchDestination.name,
        queryParams: {'text': text});
  }

  Future<List<DateTime?>?> showCalendarScreen(
      {String? checkinTime, String? checkoutTime}) async {
    return await context.pushNamed(HotelRoute.selectDate.name, queryParams: {
      'checkinTime': checkinTime,
      'checkoutTime': checkoutTime
    });
  }

  Future<Map<String, int>?> addGuestAndRoomInfo(
      {required int guest, required int room}) async {
    return await context.pushNamed(HotelRoute.addRoomInfo.name,
        queryParams: {'guest': guest.toString(), 'room': room.toString()});
  }

  void selectFacilities() {
    pushNamed(HotelRoute.facilities.name);
  }

  void selectPropertyType() {
    pushNamed(HotelRoute.propertyType.name);
  }

  Future<HotelSortByOption?> showSortbyScreen() async {
    return await context.pushNamed(HotelRoute.sortby.name);
  }
}
