part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = InitialState;
  const factory AuthState.error(String message) = ErrorState;
  const factory AuthState.authenticated() = AuthenticatedState;
  const factory AuthState.unauthenticated() = UnauthenticatedState;
  const factory AuthState.wrongPassOrEmail() = WrongPassOrEmailState;
  const factory AuthState.signUpSuccess() = SignUpSuccessState;
  const factory AuthState.forgotPasswordSuccess() = ForgotPasswordSuccessState;
}
