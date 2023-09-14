// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function() loginPressed,
    required TResult Function() signUpPressed,
    required TResult Function() forgotPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function()? loginPressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? forgotPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function()? loginPressed,
    TResult Function()? signUpPressed,
    TResult Function()? forgotPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(ForgotPasswordPressed value)
        forgotPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(LoginPressed value)? loginPressed,
    TResult? Function(SignUpPressed value)? signUpPressed,
    TResult? Function(ForgotPasswordPressed value)? forgotPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(ForgotPasswordPressed value)? forgotPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialAppCopyWith<$Res> {
  factory _$$InitialAppCopyWith(
          _$InitialApp value, $Res Function(_$InitialApp) then) =
      __$$InitialAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAppCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitialApp>
    implements _$$InitialAppCopyWith<$Res> {
  __$$InitialAppCopyWithImpl(
      _$InitialApp _value, $Res Function(_$InitialApp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialApp implements InitialApp {
  const _$InitialApp();

  @override
  String toString() {
    return 'AuthEvent.initialApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function() loginPressed,
    required TResult Function() signUpPressed,
    required TResult Function() forgotPasswordPressed,
  }) {
    return initialApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function()? loginPressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? forgotPasswordPressed,
  }) {
    return initialApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function()? loginPressed,
    TResult Function()? signUpPressed,
    TResult Function()? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    if (initialApp != null) {
      return initialApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(ForgotPasswordPressed value)
        forgotPasswordPressed,
  }) {
    return initialApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(LoginPressed value)? loginPressed,
    TResult? Function(SignUpPressed value)? signUpPressed,
    TResult? Function(ForgotPasswordPressed value)? forgotPasswordPressed,
  }) {
    return initialApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(ForgotPasswordPressed value)? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    if (initialApp != null) {
      return initialApp(this);
    }
    return orElse();
  }
}

abstract class InitialApp implements AuthEvent {
  const factory InitialApp() = _$InitialApp;
}

/// @nodoc
abstract class _$$LoginPressedCopyWith<$Res> {
  factory _$$LoginPressedCopyWith(
          _$LoginPressed value, $Res Function(_$LoginPressed) then) =
      __$$LoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginPressed>
    implements _$$LoginPressedCopyWith<$Res> {
  __$$LoginPressedCopyWithImpl(
      _$LoginPressed _value, $Res Function(_$LoginPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginPressed implements LoginPressed {
  const _$LoginPressed();

  @override
  String toString() {
    return 'AuthEvent.loginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function() loginPressed,
    required TResult Function() signUpPressed,
    required TResult Function() forgotPasswordPressed,
  }) {
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function()? loginPressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? forgotPasswordPressed,
  }) {
    return loginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function()? loginPressed,
    TResult Function()? signUpPressed,
    TResult Function()? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(ForgotPasswordPressed value)
        forgotPasswordPressed,
  }) {
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(LoginPressed value)? loginPressed,
    TResult? Function(SignUpPressed value)? signUpPressed,
    TResult? Function(ForgotPasswordPressed value)? forgotPasswordPressed,
  }) {
    return loginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(ForgotPasswordPressed value)? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class LoginPressed implements AuthEvent {
  const factory LoginPressed() = _$LoginPressed;
}

/// @nodoc
abstract class _$$SignUpPressedCopyWith<$Res> {
  factory _$$SignUpPressedCopyWith(
          _$SignUpPressed value, $Res Function(_$SignUpPressed) then) =
      __$$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpPressed>
    implements _$$SignUpPressedCopyWith<$Res> {
  __$$SignUpPressedCopyWithImpl(
      _$SignUpPressed _value, $Res Function(_$SignUpPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpPressed implements SignUpPressed {
  const _$SignUpPressed();

  @override
  String toString() {
    return 'AuthEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function() loginPressed,
    required TResult Function() signUpPressed,
    required TResult Function() forgotPasswordPressed,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function()? loginPressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? forgotPasswordPressed,
  }) {
    return signUpPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function()? loginPressed,
    TResult Function()? signUpPressed,
    TResult Function()? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(ForgotPasswordPressed value)
        forgotPasswordPressed,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(LoginPressed value)? loginPressed,
    TResult? Function(SignUpPressed value)? signUpPressed,
    TResult? Function(ForgotPasswordPressed value)? forgotPasswordPressed,
  }) {
    return signUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(ForgotPasswordPressed value)? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpPressed implements AuthEvent {
  const factory SignUpPressed() = _$SignUpPressed;
}

/// @nodoc
abstract class _$$ForgotPasswordPressedCopyWith<$Res> {
  factory _$$ForgotPasswordPressedCopyWith(_$ForgotPasswordPressed value,
          $Res Function(_$ForgotPasswordPressed) then) =
      __$$ForgotPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordPressed>
    implements _$$ForgotPasswordPressedCopyWith<$Res> {
  __$$ForgotPasswordPressedCopyWithImpl(_$ForgotPasswordPressed _value,
      $Res Function(_$ForgotPasswordPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordPressed implements ForgotPasswordPressed {
  const _$ForgotPasswordPressed();

  @override
  String toString() {
    return 'AuthEvent.forgotPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForgotPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function() loginPressed,
    required TResult Function() signUpPressed,
    required TResult Function() forgotPasswordPressed,
  }) {
    return forgotPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function()? loginPressed,
    TResult? Function()? signUpPressed,
    TResult? Function()? forgotPasswordPressed,
  }) {
    return forgotPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function()? loginPressed,
    TResult Function()? signUpPressed,
    TResult Function()? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    if (forgotPasswordPressed != null) {
      return forgotPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(SignUpPressed value) signUpPressed,
    required TResult Function(ForgotPasswordPressed value)
        forgotPasswordPressed,
  }) {
    return forgotPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(LoginPressed value)? loginPressed,
    TResult? Function(SignUpPressed value)? signUpPressed,
    TResult? Function(ForgotPasswordPressed value)? forgotPasswordPressed,
  }) {
    return forgotPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(SignUpPressed value)? signUpPressed,
    TResult Function(ForgotPasswordPressed value)? forgotPasswordPressed,
    required TResult orElse(),
  }) {
    if (forgotPasswordPressed != null) {
      return forgotPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordPressed implements AuthEvent {
  const factory ForgotPasswordPressed() = _$ForgotPasswordPressed;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() forgotPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? forgotPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? forgotPasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialState>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() forgotPasswordSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? forgotPasswordSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AuthState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<$Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState value, $Res Function(_$ErrorState) then) =
      __$$ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorState>
    implements _$$ErrorStateCopyWith<$Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState _value, $Res Function(_$ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      __$$ErrorStateCopyWithImpl<_$ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() forgotPasswordSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? forgotPasswordSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements AuthState {
  const factory ErrorState(final String message) = _$ErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedStateCopyWith<$Res> {
  factory _$$AuthenticatedStateCopyWith(_$AuthenticatedState value,
          $Res Function(_$AuthenticatedState) then) =
      __$$AuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedState>
    implements _$$AuthenticatedStateCopyWith<$Res> {
  __$$AuthenticatedStateCopyWithImpl(
      _$AuthenticatedState _value, $Res Function(_$AuthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedState implements AuthenticatedState {
  const _$AuthenticatedState();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() forgotPasswordSuccess,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? forgotPasswordSuccess,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedState implements AuthState {
  const factory AuthenticatedState() = _$AuthenticatedState;
}

/// @nodoc
abstract class _$$UnauthenticatedStateCopyWith<$Res> {
  factory _$$UnauthenticatedStateCopyWith(_$UnauthenticatedState value,
          $Res Function(_$UnauthenticatedState) then) =
      __$$UnauthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedState>
    implements _$$UnauthenticatedStateCopyWith<$Res> {
  __$$UnauthenticatedStateCopyWithImpl(_$UnauthenticatedState _value,
      $Res Function(_$UnauthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedState implements UnauthenticatedState {
  const _$UnauthenticatedState();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() forgotPasswordSuccess,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? forgotPasswordSuccess,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedState implements AuthState {
  const factory UnauthenticatedState() = _$UnauthenticatedState;
}

/// @nodoc
abstract class _$$WrongPassOrEmailStateCopyWith<$Res> {
  factory _$$WrongPassOrEmailStateCopyWith(_$WrongPassOrEmailState value,
          $Res Function(_$WrongPassOrEmailState) then) =
      __$$WrongPassOrEmailStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongPassOrEmailStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$WrongPassOrEmailState>
    implements _$$WrongPassOrEmailStateCopyWith<$Res> {
  __$$WrongPassOrEmailStateCopyWithImpl(_$WrongPassOrEmailState _value,
      $Res Function(_$WrongPassOrEmailState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WrongPassOrEmailState implements WrongPassOrEmailState {
  const _$WrongPassOrEmailState();

  @override
  String toString() {
    return 'AuthState.wrongPassOrEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WrongPassOrEmailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() forgotPasswordSuccess,
  }) {
    return wrongPassOrEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? forgotPasswordSuccess,
  }) {
    return wrongPassOrEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (wrongPassOrEmail != null) {
      return wrongPassOrEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
  }) {
    return wrongPassOrEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
  }) {
    return wrongPassOrEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (wrongPassOrEmail != null) {
      return wrongPassOrEmail(this);
    }
    return orElse();
  }
}

abstract class WrongPassOrEmailState implements AuthState {
  const factory WrongPassOrEmailState() = _$WrongPassOrEmailState;
}

/// @nodoc
abstract class _$$SignUpSuccessStateCopyWith<$Res> {
  factory _$$SignUpSuccessStateCopyWith(_$SignUpSuccessState value,
          $Res Function(_$SignUpSuccessState) then) =
      __$$SignUpSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignUpSuccessState>
    implements _$$SignUpSuccessStateCopyWith<$Res> {
  __$$SignUpSuccessStateCopyWithImpl(
      _$SignUpSuccessState _value, $Res Function(_$SignUpSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpSuccessState implements SignUpSuccessState {
  const _$SignUpSuccessState();

  @override
  String toString() {
    return 'AuthState.signUpSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() forgotPasswordSuccess,
  }) {
    return signUpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? forgotPasswordSuccess,
  }) {
    return signUpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessState implements AuthState {
  const factory SignUpSuccessState() = _$SignUpSuccessState;
}

/// @nodoc
abstract class _$$ForgotPasswordSuccessStateCopyWith<$Res> {
  factory _$$ForgotPasswordSuccessStateCopyWith(
          _$ForgotPasswordSuccessState value,
          $Res Function(_$ForgotPasswordSuccessState) then) =
      __$$ForgotPasswordSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ForgotPasswordSuccessState>
    implements _$$ForgotPasswordSuccessStateCopyWith<$Res> {
  __$$ForgotPasswordSuccessStateCopyWithImpl(
      _$ForgotPasswordSuccessState _value,
      $Res Function(_$ForgotPasswordSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordSuccessState implements ForgotPasswordSuccessState {
  const _$ForgotPasswordSuccessState();

  @override
  String toString() {
    return 'AuthState.forgotPasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() forgotPasswordSuccess,
  }) {
    return forgotPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? forgotPasswordSuccess,
  }) {
    return forgotPasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ForgotPasswordSuccessState value)
        forgotPasswordSuccess,
  }) {
    return forgotPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
  }) {
    return forgotPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ForgotPasswordSuccessState value)? forgotPasswordSuccess,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordSuccessState implements AuthState {
  const factory ForgotPasswordSuccessState() = _$ForgotPasswordSuccessState;
}
