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
    required TResult Function(String email) forgotPasswordEvent,
    required TResult Function(String email, String password) loginAccountEvent,
    required TResult Function(String name, String country, String phone,
            String email, String password)
        signUpEvent,
    required TResult Function() logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function(String email)? forgotPasswordEvent,
    TResult? Function(String email, String password)? loginAccountEvent,
    TResult? Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult? Function()? logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function(String email)? forgotPasswordEvent,
    TResult Function(String email, String password)? loginAccountEvent,
    TResult Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(ForgotPasswordEvent value) forgotPasswordEvent,
    required TResult Function(LoginAccountEvent value) loginAccountEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult? Function(LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult Function(LoginAccountEvent value)? loginAccountEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
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
    required TResult Function(String email) forgotPasswordEvent,
    required TResult Function(String email, String password) loginAccountEvent,
    required TResult Function(String name, String country, String phone,
            String email, String password)
        signUpEvent,
    required TResult Function() logOutEvent,
  }) {
    return initialApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function(String email)? forgotPasswordEvent,
    TResult? Function(String email, String password)? loginAccountEvent,
    TResult? Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult? Function()? logOutEvent,
  }) {
    return initialApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function(String email)? forgotPasswordEvent,
    TResult Function(String email, String password)? loginAccountEvent,
    TResult Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult Function()? logOutEvent,
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
    required TResult Function(ForgotPasswordEvent value) forgotPasswordEvent,
    required TResult Function(LoginAccountEvent value) loginAccountEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) {
    return initialApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult? Function(LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) {
    return initialApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult Function(LoginAccountEvent value)? loginAccountEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
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
abstract class _$$ForgotPasswordEventCopyWith<$Res> {
  factory _$$ForgotPasswordEventCopyWith(_$ForgotPasswordEvent value,
          $Res Function(_$ForgotPasswordEvent) then) =
      __$$ForgotPasswordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordEvent>
    implements _$$ForgotPasswordEventCopyWith<$Res> {
  __$$ForgotPasswordEventCopyWithImpl(
      _$ForgotPasswordEvent _value, $Res Function(_$ForgotPasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordEvent implements ForgotPasswordEvent {
  const _$ForgotPasswordEvent(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPasswordEvent(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordEvent &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordEventCopyWith<_$ForgotPasswordEvent> get copyWith =>
      __$$ForgotPasswordEventCopyWithImpl<_$ForgotPasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function(String email) forgotPasswordEvent,
    required TResult Function(String email, String password) loginAccountEvent,
    required TResult Function(String name, String country, String phone,
            String email, String password)
        signUpEvent,
    required TResult Function() logOutEvent,
  }) {
    return forgotPasswordEvent(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function(String email)? forgotPasswordEvent,
    TResult? Function(String email, String password)? loginAccountEvent,
    TResult? Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult? Function()? logOutEvent,
  }) {
    return forgotPasswordEvent?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function(String email)? forgotPasswordEvent,
    TResult Function(String email, String password)? loginAccountEvent,
    TResult Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (forgotPasswordEvent != null) {
      return forgotPasswordEvent(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(ForgotPasswordEvent value) forgotPasswordEvent,
    required TResult Function(LoginAccountEvent value) loginAccountEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) {
    return forgotPasswordEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult? Function(LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) {
    return forgotPasswordEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult Function(LoginAccountEvent value)? loginAccountEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (forgotPasswordEvent != null) {
      return forgotPasswordEvent(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordEvent implements AuthEvent {
  const factory ForgotPasswordEvent(final String email) = _$ForgotPasswordEvent;

  String get email;
  @JsonKey(ignore: true)
  _$$ForgotPasswordEventCopyWith<_$ForgotPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginAccountEventCopyWith<$Res> {
  factory _$$LoginAccountEventCopyWith(
          _$LoginAccountEvent value, $Res Function(_$LoginAccountEvent) then) =
      __$$LoginAccountEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginAccountEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginAccountEvent>
    implements _$$LoginAccountEventCopyWith<$Res> {
  __$$LoginAccountEventCopyWithImpl(
      _$LoginAccountEvent _value, $Res Function(_$LoginAccountEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginAccountEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginAccountEvent implements LoginAccountEvent {
  const _$LoginAccountEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginAccountEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginAccountEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginAccountEventCopyWith<_$LoginAccountEvent> get copyWith =>
      __$$LoginAccountEventCopyWithImpl<_$LoginAccountEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function(String email) forgotPasswordEvent,
    required TResult Function(String email, String password) loginAccountEvent,
    required TResult Function(String name, String country, String phone,
            String email, String password)
        signUpEvent,
    required TResult Function() logOutEvent,
  }) {
    return loginAccountEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function(String email)? forgotPasswordEvent,
    TResult? Function(String email, String password)? loginAccountEvent,
    TResult? Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult? Function()? logOutEvent,
  }) {
    return loginAccountEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function(String email)? forgotPasswordEvent,
    TResult Function(String email, String password)? loginAccountEvent,
    TResult Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (loginAccountEvent != null) {
      return loginAccountEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(ForgotPasswordEvent value) forgotPasswordEvent,
    required TResult Function(LoginAccountEvent value) loginAccountEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) {
    return loginAccountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult? Function(LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) {
    return loginAccountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult Function(LoginAccountEvent value)? loginAccountEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (loginAccountEvent != null) {
      return loginAccountEvent(this);
    }
    return orElse();
  }
}

abstract class LoginAccountEvent implements AuthEvent {
  const factory LoginAccountEvent(final String email, final String password) =
      _$LoginAccountEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginAccountEventCopyWith<_$LoginAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEventCopyWith<$Res> {
  factory _$$SignUpEventCopyWith(
          _$SignUpEvent value, $Res Function(_$SignUpEvent) then) =
      __$$SignUpEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String country,
      String phone,
      String email,
      String password});
}

/// @nodoc
class __$$SignUpEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpEvent>
    implements _$$SignUpEventCopyWith<$Res> {
  __$$SignUpEventCopyWithImpl(
      _$SignUpEvent _value, $Res Function(_$SignUpEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? phone = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpEvent(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEvent implements SignUpEvent {
  const _$SignUpEvent(
      this.name, this.country, this.phone, this.email, this.password);

  @override
  final String name;
  @override
  final String country;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpEvent(name: $name, country: $country, phone: $phone, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, country, phone, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventCopyWith<_$SignUpEvent> get copyWith =>
      __$$SignUpEventCopyWithImpl<_$SignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function(String email) forgotPasswordEvent,
    required TResult Function(String email, String password) loginAccountEvent,
    required TResult Function(String name, String country, String phone,
            String email, String password)
        signUpEvent,
    required TResult Function() logOutEvent,
  }) {
    return signUpEvent(name, country, phone, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function(String email)? forgotPasswordEvent,
    TResult? Function(String email, String password)? loginAccountEvent,
    TResult? Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult? Function()? logOutEvent,
  }) {
    return signUpEvent?.call(name, country, phone, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function(String email)? forgotPasswordEvent,
    TResult Function(String email, String password)? loginAccountEvent,
    TResult Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (signUpEvent != null) {
      return signUpEvent(name, country, phone, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(ForgotPasswordEvent value) forgotPasswordEvent,
    required TResult Function(LoginAccountEvent value) loginAccountEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) {
    return signUpEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult? Function(LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) {
    return signUpEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult Function(LoginAccountEvent value)? loginAccountEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (signUpEvent != null) {
      return signUpEvent(this);
    }
    return orElse();
  }
}

abstract class SignUpEvent implements AuthEvent {
  const factory SignUpEvent(
      final String name,
      final String country,
      final String phone,
      final String email,
      final String password) = _$SignUpEvent;

  String get name;
  String get country;
  String get phone;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpEventCopyWith<_$SignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutEventCopyWith<$Res> {
  factory _$$LogOutEventCopyWith(
          _$LogOutEvent value, $Res Function(_$LogOutEvent) then) =
      __$$LogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutEvent>
    implements _$$LogOutEventCopyWith<$Res> {
  __$$LogOutEventCopyWithImpl(
      _$LogOutEvent _value, $Res Function(_$LogOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutEvent implements LogOutEvent {
  const _$LogOutEvent();

  @override
  String toString() {
    return 'AuthEvent.logOutEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialApp,
    required TResult Function(String email) forgotPasswordEvent,
    required TResult Function(String email, String password) loginAccountEvent,
    required TResult Function(String name, String country, String phone,
            String email, String password)
        signUpEvent,
    required TResult Function() logOutEvent,
  }) {
    return logOutEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialApp,
    TResult? Function(String email)? forgotPasswordEvent,
    TResult? Function(String email, String password)? loginAccountEvent,
    TResult? Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult? Function()? logOutEvent,
  }) {
    return logOutEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialApp,
    TResult Function(String email)? forgotPasswordEvent,
    TResult Function(String email, String password)? loginAccountEvent,
    TResult Function(String name, String country, String phone, String email,
            String password)?
        signUpEvent,
    TResult Function()? logOutEvent,
    required TResult orElse(),
  }) {
    if (logOutEvent != null) {
      return logOutEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialApp value) initialApp,
    required TResult Function(ForgotPasswordEvent value) forgotPasswordEvent,
    required TResult Function(LoginAccountEvent value) loginAccountEvent,
    required TResult Function(SignUpEvent value) signUpEvent,
    required TResult Function(LogOutEvent value) logOutEvent,
  }) {
    return logOutEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialApp value)? initialApp,
    TResult? Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult? Function(LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(SignUpEvent value)? signUpEvent,
    TResult? Function(LogOutEvent value)? logOutEvent,
  }) {
    return logOutEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialApp value)? initialApp,
    TResult Function(ForgotPasswordEvent value)? forgotPasswordEvent,
    TResult Function(LoginAccountEvent value)? loginAccountEvent,
    TResult Function(SignUpEvent value)? signUpEvent,
    TResult Function(LogOutEvent value)? logOutEvent,
    required TResult orElse(),
  }) {
    if (logOutEvent != null) {
      return logOutEvent(this);
    }
    return orElse();
  }
}

abstract class LogOutEvent implements AuthEvent {
  const factory LogOutEvent() = _$LogOutEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
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
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
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
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
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
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements AuthState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$AuthenticatedStateCopyWith<$Res> {
  factory _$$AuthenticatedStateCopyWith(_$AuthenticatedState value,
          $Res Function(_$AuthenticatedState) then) =
      __$$AuthenticatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAccount? user});

  $UserAccountCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedState>
    implements _$$AuthenticatedStateCopyWith<$Res> {
  __$$AuthenticatedStateCopyWithImpl(
      _$AuthenticatedState _value, $Res Function(_$AuthenticatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthenticatedState(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAccount?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAccountCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserAccountCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedState implements AuthenticatedState {
  const _$AuthenticatedState(this.user);

  @override
  final UserAccount? user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      __$$AuthenticatedStateCopyWithImpl<_$AuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedState implements AuthState {
  const factory AuthenticatedState(final UserAccount? user) =
      _$AuthenticatedState;

  UserAccount? get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
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
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return wrongPassOrEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return wrongPassOrEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) {
    return wrongPassOrEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) {
    return wrongPassOrEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
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
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return signUpSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return signUpSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
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
abstract class _$$ResetPasswordSuccessStateCopyWith<$Res> {
  factory _$$ResetPasswordSuccessStateCopyWith(
          _$ResetPasswordSuccessState value,
          $Res Function(_$ResetPasswordSuccessState) then) =
      __$$ResetPasswordSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordSuccessStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ResetPasswordSuccessState>
    implements _$$ResetPasswordSuccessStateCopyWith<$Res> {
  __$$ResetPasswordSuccessStateCopyWithImpl(_$ResetPasswordSuccessState _value,
      $Res Function(_$ResetPasswordSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetPasswordSuccessState implements ResetPasswordSuccessState {
  const _$ResetPasswordSuccessState();

  @override
  String toString() {
    return 'AuthState.resetPasswordSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(UserAccount? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() wrongPassOrEmail,
    required TResult Function() signUpSuccess,
    required TResult Function() resetPasswordSuccess,
  }) {
    return resetPasswordSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(UserAccount? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? wrongPassOrEmail,
    TResult? Function()? signUpSuccess,
    TResult? Function()? resetPasswordSuccess,
  }) {
    return resetPasswordSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(UserAccount? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? wrongPassOrEmail,
    TResult Function()? signUpSuccess,
    TResult Function()? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadingState value) loading,
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(UnauthenticatedState value) unauthenticated,
    required TResult Function(WrongPassOrEmailState value) wrongPassOrEmail,
    required TResult Function(SignUpSuccessState value) signUpSuccess,
    required TResult Function(ResetPasswordSuccessState value)
        resetPasswordSuccess,
  }) {
    return resetPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(ErrorState value)? error,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(AuthenticatedState value)? authenticated,
    TResult? Function(UnauthenticatedState value)? unauthenticated,
    TResult? Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult? Function(SignUpSuccessState value)? signUpSuccess,
    TResult? Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
  }) {
    return resetPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(UnauthenticatedState value)? unauthenticated,
    TResult Function(WrongPassOrEmailState value)? wrongPassOrEmail,
    TResult Function(SignUpSuccessState value)? signUpSuccess,
    TResult Function(ResetPasswordSuccessState value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccessState implements AuthState {
  const factory ResetPasswordSuccessState() = _$ResetPasswordSuccessState;
}
