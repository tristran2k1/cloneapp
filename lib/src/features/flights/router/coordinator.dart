import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/routes/base_coordinator.dart';

enum FlightRoute { selectFlight }

class FlightCoordinator extends BaseCoordinator {
  // static final router = [
  //   GoRoute(
  //     parentNavigatorKey: XAppRouter.navigatorKey,
  //     name: FlightRoute.selectFlight.name,
  //     path: 'selectFlight',
  //     pageBuilder: (context, state) => DefaultTransition(
  //       child: SelectFlightScreen(),
  //     )
  //   )
  // ];

  void selectFlight({required TripInfo trip1, TripInfo? trip2}) {
    // context.goNamed(Routes.selectFlight.name);
  }
}
