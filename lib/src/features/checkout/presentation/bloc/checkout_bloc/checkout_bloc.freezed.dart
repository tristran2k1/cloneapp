// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckoutEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) checkoutLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? checkoutLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? checkoutLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutLoadingEvent value) checkoutLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutLoadingEvent value)? checkoutLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutLoadingEvent value)? checkoutLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckoutEventCopyWith<CheckoutEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutLoadingEventCopyWith<$Res>
    implements $CheckoutEventCopyWith<$Res> {
  factory _$$CheckoutLoadingEventCopyWith(_$CheckoutLoadingEvent value,
          $Res Function(_$CheckoutLoadingEvent) then) =
      __$$CheckoutLoadingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$CheckoutLoadingEventCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$CheckoutLoadingEvent>
    implements _$$CheckoutLoadingEventCopyWith<$Res> {
  __$$CheckoutLoadingEventCopyWithImpl(_$CheckoutLoadingEvent _value,
      $Res Function(_$CheckoutLoadingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CheckoutLoadingEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutLoadingEvent implements CheckoutLoadingEvent {
  const _$CheckoutLoadingEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CheckoutEvent.checkoutLoadingEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutLoadingEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutLoadingEventCopyWith<_$CheckoutLoadingEvent> get copyWith =>
      __$$CheckoutLoadingEventCopyWithImpl<_$CheckoutLoadingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) checkoutLoadingEvent,
  }) {
    return checkoutLoadingEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? checkoutLoadingEvent,
  }) {
    return checkoutLoadingEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? checkoutLoadingEvent,
    required TResult orElse(),
  }) {
    if (checkoutLoadingEvent != null) {
      return checkoutLoadingEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutLoadingEvent value) checkoutLoadingEvent,
  }) {
    return checkoutLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutLoadingEvent value)? checkoutLoadingEvent,
  }) {
    return checkoutLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutLoadingEvent value)? checkoutLoadingEvent,
    required TResult orElse(),
  }) {
    if (checkoutLoadingEvent != null) {
      return checkoutLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class CheckoutLoadingEvent implements CheckoutEvent {
  const factory CheckoutLoadingEvent(final String id) = _$CheckoutLoadingEvent;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutLoadingEventCopyWith<_$CheckoutLoadingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomModel room) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomModel room)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomModel room)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutError value) error,
    required TResult Function(CheckoutLoadingSuccess value) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutError value)? error,
    TResult? Function(CheckoutLoadingSuccess value)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutError value)? error,
    TResult Function(CheckoutLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckoutInitialCopyWith<$Res> {
  factory _$$CheckoutInitialCopyWith(
          _$CheckoutInitial value, $Res Function(_$CheckoutInitial) then) =
      __$$CheckoutInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutInitialCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutInitial>
    implements _$$CheckoutInitialCopyWith<$Res> {
  __$$CheckoutInitialCopyWithImpl(
      _$CheckoutInitial _value, $Res Function(_$CheckoutInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutInitial implements CheckoutInitial {
  const _$CheckoutInitial();

  @override
  String toString() {
    return 'CheckoutState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomModel room) loadingSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomModel room)? loadingSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomModel room)? loadingSuccess,
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
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutError value) error,
    required TResult Function(CheckoutLoadingSuccess value) loadingSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutError value)? error,
    TResult? Function(CheckoutLoadingSuccess value)? loadingSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutError value)? error,
    TResult Function(CheckoutLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CheckoutInitial implements CheckoutState {
  const factory CheckoutInitial() = _$CheckoutInitial;
}

/// @nodoc
abstract class _$$CheckoutLoadingCopyWith<$Res> {
  factory _$$CheckoutLoadingCopyWith(
          _$CheckoutLoading value, $Res Function(_$CheckoutLoading) then) =
      __$$CheckoutLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutLoadingCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutLoading>
    implements _$$CheckoutLoadingCopyWith<$Res> {
  __$$CheckoutLoadingCopyWithImpl(
      _$CheckoutLoading _value, $Res Function(_$CheckoutLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutLoading implements CheckoutLoading {
  const _$CheckoutLoading();

  @override
  String toString() {
    return 'CheckoutState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomModel room) loadingSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomModel room)? loadingSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomModel room)? loadingSuccess,
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
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutError value) error,
    required TResult Function(CheckoutLoadingSuccess value) loadingSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutError value)? error,
    TResult? Function(CheckoutLoadingSuccess value)? loadingSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutError value)? error,
    TResult Function(CheckoutLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CheckoutLoading implements CheckoutState {
  const factory CheckoutLoading() = _$CheckoutLoading;
}

/// @nodoc
abstract class _$$CheckoutErrorCopyWith<$Res> {
  factory _$$CheckoutErrorCopyWith(
          _$CheckoutError value, $Res Function(_$CheckoutError) then) =
      __$$CheckoutErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CheckoutErrorCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutError>
    implements _$$CheckoutErrorCopyWith<$Res> {
  __$$CheckoutErrorCopyWithImpl(
      _$CheckoutError _value, $Res Function(_$CheckoutError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CheckoutError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutError implements CheckoutError {
  const _$CheckoutError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CheckoutState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutErrorCopyWith<_$CheckoutError> get copyWith =>
      __$$CheckoutErrorCopyWithImpl<_$CheckoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomModel room) loadingSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomModel room)? loadingSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomModel room)? loadingSuccess,
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
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutError value) error,
    required TResult Function(CheckoutLoadingSuccess value) loadingSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutError value)? error,
    TResult? Function(CheckoutLoadingSuccess value)? loadingSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutError value)? error,
    TResult Function(CheckoutLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CheckoutError implements CheckoutState {
  const factory CheckoutError(final String message) = _$CheckoutError;

  String get message;
  @JsonKey(ignore: true)
  _$$CheckoutErrorCopyWith<_$CheckoutError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckoutLoadingSuccessCopyWith<$Res> {
  factory _$$CheckoutLoadingSuccessCopyWith(_$CheckoutLoadingSuccess value,
          $Res Function(_$CheckoutLoadingSuccess) then) =
      __$$CheckoutLoadingSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomModel room});
}

/// @nodoc
class __$$CheckoutLoadingSuccessCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutLoadingSuccess>
    implements _$$CheckoutLoadingSuccessCopyWith<$Res> {
  __$$CheckoutLoadingSuccessCopyWithImpl(_$CheckoutLoadingSuccess _value,
      $Res Function(_$CheckoutLoadingSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$CheckoutLoadingSuccess(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomModel,
    ));
  }
}

/// @nodoc

class _$CheckoutLoadingSuccess implements CheckoutLoadingSuccess {
  const _$CheckoutLoadingSuccess(this.room);

  @override
  final RoomModel room;

  @override
  String toString() {
    return 'CheckoutState.loadingSuccess(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutLoadingSuccess &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutLoadingSuccessCopyWith<_$CheckoutLoadingSuccess> get copyWith =>
      __$$CheckoutLoadingSuccessCopyWithImpl<_$CheckoutLoadingSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomModel room) loadingSuccess,
  }) {
    return loadingSuccess(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomModel room)? loadingSuccess,
  }) {
    return loadingSuccess?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomModel room)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutInitial value) initial,
    required TResult Function(CheckoutLoading value) loading,
    required TResult Function(CheckoutError value) error,
    required TResult Function(CheckoutLoadingSuccess value) loadingSuccess,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutInitial value)? initial,
    TResult? Function(CheckoutLoading value)? loading,
    TResult? Function(CheckoutError value)? error,
    TResult? Function(CheckoutLoadingSuccess value)? loadingSuccess,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutInitial value)? initial,
    TResult Function(CheckoutLoading value)? loading,
    TResult Function(CheckoutError value)? error,
    TResult Function(CheckoutLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class CheckoutLoadingSuccess implements CheckoutState {
  const factory CheckoutLoadingSuccess(final RoomModel room) =
      _$CheckoutLoadingSuccess;

  RoomModel get room;
  @JsonKey(ignore: true)
  _$$CheckoutLoadingSuccessCopyWith<_$CheckoutLoadingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
