import 'package:go_router/go_router.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/routes/base_coordinator.dart';
import 'package:travo_app/src/routes/routes.dart';

enum AuthRoute {
  logIn,
  signUp,
  forgotPassword,
}

class AuthCoordinator extends BaseCoordinator {
  static final router = [
    GoRoute(
      name: AuthRoute.signUp.name,
      path: 'signup',
      pageBuilder: (context, state) =>
          DefaultTransition(child: const SignUpScreen()),
    ),
    GoRoute(
      name: AuthRoute.forgotPassword.name,
      path: 'forgotPassword',
      pageBuilder: (context, state) =>
          DefaultTransition(child: const ForgotPasswordScreen()),
    ),
  ];

  void showSignUpPage() {
    goNamed(AuthRoute.signUp.name);
  }

  void showForgotPasswordPage() {
    goNamed(AuthRoute.forgotPassword.name);
  }
}
