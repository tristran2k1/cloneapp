part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initialApp() = InitialApp;
  const factory AuthEvent.forgotPasswordEvent(String email) =
      ForgotPasswordEvent;
  const factory AuthEvent.loginAccountEvent(String email, String password) =
      LoginAccountEvent;
  const factory AuthEvent.signUpEvent(String name, String country, String phone,
      String email, String password) = SignUpEvent;
  const factory AuthEvent.logOutEvent() = LogOutEvent;
  const factory AuthEvent.saveAvatar(String avatar) = SaveAvatarEvent;
}
