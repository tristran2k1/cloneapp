part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initialApp() = InitialApp;
  const factory AuthEvent.loginPressed() = LoginPressed;
  const factory AuthEvent.signUpPressed() = SignUpPressed;
  const factory AuthEvent.forgotPasswordPressed() = ForgotPasswordPressed;
}
