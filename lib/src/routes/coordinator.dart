import 'package:travo_app/src/routes/base_coordinator.dart';
import 'package:travo_app/src/routes/routes.dart';

class LCoordinator extends BaseCoordinator {
  void showOnboardScreen() {
    goNamed(AppRoute.landing.name);
  }

  void showLoginScreen() {
    goNamed(AppRoute.login.name);
  }

  void showHomeScreen() {
    goNamed(AppRoute.home.name);
  }

  void showNotification() {
    goNamed(AppRoute.notification.name);
  }
}
