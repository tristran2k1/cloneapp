import 'package:go_router/go_router.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/routes/base_coordinator.dart';
import 'package:travo_app/src/routes/routes.dart';

enum HomeRoute {
  hotels,
}

class HomeCoordinator extends BaseCoordinator {
  static final router = [
    GoRoute(
      parentNavigatorKey: XAppRouter.navigatorKey,
      name: HomeRoute.hotels.name,
      path: 'hotels',
      pageBuilder: (context, state) =>
          DefaultTransition(child: const HotelsScreen()),
      routes: HotelCoordinator.router,
    ),
  ];
  void showHotelsScreen() {
    pushNamed(HomeRoute.hotels.name);
  }
}
