// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeThemePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? changeThemePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeThemePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeThemePressed value) changeThemePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeThemePressed value)? changeThemePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeThemePressed value)? changeThemePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeThemePressedCopyWith<$Res> {
  factory _$$ChangeThemePressedCopyWith(_$ChangeThemePressed value,
          $Res Function(_$ChangeThemePressed) then) =
      __$$ChangeThemePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeThemePressedCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ChangeThemePressed>
    implements _$$ChangeThemePressedCopyWith<$Res> {
  __$$ChangeThemePressedCopyWithImpl(
      _$ChangeThemePressed _value, $Res Function(_$ChangeThemePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeThemePressed implements ChangeThemePressed {
  const _$ChangeThemePressed();

  @override
  String toString() {
    return 'ThemeEvent.changeThemePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeThemePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeThemePressed,
  }) {
    return changeThemePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? changeThemePressed,
  }) {
    return changeThemePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeThemePressed,
    required TResult orElse(),
  }) {
    if (changeThemePressed != null) {
      return changeThemePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeThemePressed value) changeThemePressed,
  }) {
    return changeThemePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeThemePressed value)? changeThemePressed,
  }) {
    return changeThemePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeThemePressed value)? changeThemePressed,
    required TResult orElse(),
  }) {
    if (changeThemePressed != null) {
      return changeThemePressed(this);
    }
    return orElse();
  }
}

abstract class ChangeThemePressed implements ThemeEvent {
  const factory ChangeThemePressed() = _$ChangeThemePressed;
}

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() themeChangedSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? themeChangedSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? themeChangedSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeStateInitial value) initial,
    required TResult Function(ThemeStateWaiting value) waiting,
    required TResult Function(ThemeChangedSuccess value) themeChangedSuccess,
    required TResult Function(ThemeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateInitial value)? initial,
    TResult? Function(ThemeStateWaiting value)? waiting,
    TResult? Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult? Function(ThemeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateInitial value)? initial,
    TResult Function(ThemeStateWaiting value)? waiting,
    TResult Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult Function(ThemeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeStateInitialCopyWith<$Res> {
  factory _$$ThemeStateInitialCopyWith(
          _$ThemeStateInitial value, $Res Function(_$ThemeStateInitial) then) =
      __$$ThemeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeStateInitialCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateInitial>
    implements _$$ThemeStateInitialCopyWith<$Res> {
  __$$ThemeStateInitialCopyWithImpl(
      _$ThemeStateInitial _value, $Res Function(_$ThemeStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeStateInitial implements ThemeStateInitial {
  const _$ThemeStateInitial();

  @override
  String toString() {
    return 'ThemeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() themeChangedSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? themeChangedSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? themeChangedSuccess,
    TResult Function(String message)? error,
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
    required TResult Function(ThemeStateInitial value) initial,
    required TResult Function(ThemeStateWaiting value) waiting,
    required TResult Function(ThemeChangedSuccess value) themeChangedSuccess,
    required TResult Function(ThemeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateInitial value)? initial,
    TResult? Function(ThemeStateWaiting value)? waiting,
    TResult? Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult? Function(ThemeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateInitial value)? initial,
    TResult Function(ThemeStateWaiting value)? waiting,
    TResult Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult Function(ThemeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ThemeStateInitial implements ThemeState {
  const factory ThemeStateInitial() = _$ThemeStateInitial;
}

/// @nodoc
abstract class _$$ThemeStateWaitingCopyWith<$Res> {
  factory _$$ThemeStateWaitingCopyWith(
          _$ThemeStateWaiting value, $Res Function(_$ThemeStateWaiting) then) =
      __$$ThemeStateWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeStateWaitingCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateWaiting>
    implements _$$ThemeStateWaitingCopyWith<$Res> {
  __$$ThemeStateWaitingCopyWithImpl(
      _$ThemeStateWaiting _value, $Res Function(_$ThemeStateWaiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeStateWaiting implements ThemeStateWaiting {
  const _$ThemeStateWaiting();

  @override
  String toString() {
    return 'ThemeState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeStateWaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() themeChangedSuccess,
    required TResult Function(String message) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? themeChangedSuccess,
    TResult? Function(String message)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? themeChangedSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeStateInitial value) initial,
    required TResult Function(ThemeStateWaiting value) waiting,
    required TResult Function(ThemeChangedSuccess value) themeChangedSuccess,
    required TResult Function(ThemeStateError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateInitial value)? initial,
    TResult? Function(ThemeStateWaiting value)? waiting,
    TResult? Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult? Function(ThemeStateError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateInitial value)? initial,
    TResult Function(ThemeStateWaiting value)? waiting,
    TResult Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult Function(ThemeStateError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class ThemeStateWaiting implements ThemeState {
  const factory ThemeStateWaiting() = _$ThemeStateWaiting;
}

/// @nodoc
abstract class _$$ThemeChangedSuccessCopyWith<$Res> {
  factory _$$ThemeChangedSuccessCopyWith(_$ThemeChangedSuccess value,
          $Res Function(_$ThemeChangedSuccess) then) =
      __$$ThemeChangedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeChangedSuccessCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeChangedSuccess>
    implements _$$ThemeChangedSuccessCopyWith<$Res> {
  __$$ThemeChangedSuccessCopyWithImpl(
      _$ThemeChangedSuccess _value, $Res Function(_$ThemeChangedSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeChangedSuccess implements ThemeChangedSuccess {
  const _$ThemeChangedSuccess();

  @override
  String toString() {
    return 'ThemeState.themeChangedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeChangedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() themeChangedSuccess,
    required TResult Function(String message) error,
  }) {
    return themeChangedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? themeChangedSuccess,
    TResult? Function(String message)? error,
  }) {
    return themeChangedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? themeChangedSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (themeChangedSuccess != null) {
      return themeChangedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeStateInitial value) initial,
    required TResult Function(ThemeStateWaiting value) waiting,
    required TResult Function(ThemeChangedSuccess value) themeChangedSuccess,
    required TResult Function(ThemeStateError value) error,
  }) {
    return themeChangedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateInitial value)? initial,
    TResult? Function(ThemeStateWaiting value)? waiting,
    TResult? Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult? Function(ThemeStateError value)? error,
  }) {
    return themeChangedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateInitial value)? initial,
    TResult Function(ThemeStateWaiting value)? waiting,
    TResult Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult Function(ThemeStateError value)? error,
    required TResult orElse(),
  }) {
    if (themeChangedSuccess != null) {
      return themeChangedSuccess(this);
    }
    return orElse();
  }
}

abstract class ThemeChangedSuccess implements ThemeState {
  const factory ThemeChangedSuccess() = _$ThemeChangedSuccess;
}

/// @nodoc
abstract class _$$ThemeStateErrorCopyWith<$Res> {
  factory _$$ThemeStateErrorCopyWith(
          _$ThemeStateError value, $Res Function(_$ThemeStateError) then) =
      __$$ThemeStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ThemeStateErrorCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateError>
    implements _$$ThemeStateErrorCopyWith<$Res> {
  __$$ThemeStateErrorCopyWithImpl(
      _$ThemeStateError _value, $Res Function(_$ThemeStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ThemeStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThemeStateError implements ThemeStateError {
  const _$ThemeStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ThemeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateErrorCopyWith<_$ThemeStateError> get copyWith =>
      __$$ThemeStateErrorCopyWithImpl<_$ThemeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() waiting,
    required TResult Function() themeChangedSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? waiting,
    TResult? Function()? themeChangedSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? waiting,
    TResult Function()? themeChangedSuccess,
    TResult Function(String message)? error,
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
    required TResult Function(ThemeStateInitial value) initial,
    required TResult Function(ThemeStateWaiting value) waiting,
    required TResult Function(ThemeChangedSuccess value) themeChangedSuccess,
    required TResult Function(ThemeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeStateInitial value)? initial,
    TResult? Function(ThemeStateWaiting value)? waiting,
    TResult? Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult? Function(ThemeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeStateInitial value)? initial,
    TResult Function(ThemeStateWaiting value)? waiting,
    TResult Function(ThemeChangedSuccess value)? themeChangedSuccess,
    TResult Function(ThemeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ThemeStateError implements ThemeState {
  const factory ThemeStateError(final String message) = _$ThemeStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$ThemeStateErrorCopyWith<_$ThemeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
