// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  String get uid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) paymentLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? paymentLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? paymentLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentLoadingEvent value) paymentLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentLoadingEvent value)? paymentLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentLoadingEvent value)? paymentLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentEventCopyWith<PaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentLoadingEventCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory _$$PaymentLoadingEventCopyWith(_$PaymentLoadingEvent value,
          $Res Function(_$PaymentLoadingEvent) then) =
      __$$PaymentLoadingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$PaymentLoadingEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaymentLoadingEvent>
    implements _$$PaymentLoadingEventCopyWith<$Res> {
  __$$PaymentLoadingEventCopyWithImpl(
      _$PaymentLoadingEvent _value, $Res Function(_$PaymentLoadingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$PaymentLoadingEvent(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentLoadingEvent implements PaymentLoadingEvent {
  const _$PaymentLoadingEvent(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'PaymentEvent.paymentLoadingEvent(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLoadingEvent &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentLoadingEventCopyWith<_$PaymentLoadingEvent> get copyWith =>
      __$$PaymentLoadingEventCopyWithImpl<_$PaymentLoadingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) paymentLoadingEvent,
  }) {
    return paymentLoadingEvent(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? paymentLoadingEvent,
  }) {
    return paymentLoadingEvent?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? paymentLoadingEvent,
    required TResult orElse(),
  }) {
    if (paymentLoadingEvent != null) {
      return paymentLoadingEvent(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentLoadingEvent value) paymentLoadingEvent,
  }) {
    return paymentLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentLoadingEvent value)? paymentLoadingEvent,
  }) {
    return paymentLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentLoadingEvent value)? paymentLoadingEvent,
    required TResult orElse(),
  }) {
    if (paymentLoadingEvent != null) {
      return paymentLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class PaymentLoadingEvent implements PaymentEvent {
  const factory PaymentLoadingEvent(final String uid) = _$PaymentLoadingEvent;

  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$PaymentLoadingEventCopyWith<_$PaymentLoadingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<BookedRoomInfo> rooms) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BookedRoomInfo> rooms)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BookedRoomInfo> rooms)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentLoadingSuccess value) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentLoading value)? loading,
    TResult? Function(PaymentError value)? error,
    TResult? Function(PaymentLoadingSuccess value)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentInitialCopyWith<$Res> {
  factory _$$PaymentInitialCopyWith(
          _$PaymentInitial value, $Res Function(_$PaymentInitial) then) =
      __$$PaymentInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentInitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentInitial>
    implements _$$PaymentInitialCopyWith<$Res> {
  __$$PaymentInitialCopyWithImpl(
      _$PaymentInitial _value, $Res Function(_$PaymentInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentInitial implements PaymentInitial {
  const _$PaymentInitial();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<BookedRoomInfo> rooms) loadingSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BookedRoomInfo> rooms)? loadingSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BookedRoomInfo> rooms)? loadingSuccess,
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
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentLoadingSuccess value) loadingSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentLoading value)? loading,
    TResult? Function(PaymentError value)? error,
    TResult? Function(PaymentLoadingSuccess value)? loadingSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PaymentInitial implements PaymentState {
  const factory PaymentInitial() = _$PaymentInitial;
}

/// @nodoc
abstract class _$$PaymentLoadingCopyWith<$Res> {
  factory _$$PaymentLoadingCopyWith(
          _$PaymentLoading value, $Res Function(_$PaymentLoading) then) =
      __$$PaymentLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentLoading>
    implements _$$PaymentLoadingCopyWith<$Res> {
  __$$PaymentLoadingCopyWithImpl(
      _$PaymentLoading _value, $Res Function(_$PaymentLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentLoading implements PaymentLoading {
  const _$PaymentLoading();

  @override
  String toString() {
    return 'PaymentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<BookedRoomInfo> rooms) loadingSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BookedRoomInfo> rooms)? loadingSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BookedRoomInfo> rooms)? loadingSuccess,
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
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentLoadingSuccess value) loadingSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentLoading value)? loading,
    TResult? Function(PaymentError value)? error,
    TResult? Function(PaymentLoadingSuccess value)? loadingSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PaymentLoading implements PaymentState {
  const factory PaymentLoading() = _$PaymentLoading;
}

/// @nodoc
abstract class _$$PaymentErrorCopyWith<$Res> {
  factory _$$PaymentErrorCopyWith(
          _$PaymentError value, $Res Function(_$PaymentError) then) =
      __$$PaymentErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PaymentErrorCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentError>
    implements _$$PaymentErrorCopyWith<$Res> {
  __$$PaymentErrorCopyWithImpl(
      _$PaymentError _value, $Res Function(_$PaymentError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PaymentError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentError implements PaymentError {
  const _$PaymentError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PaymentState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentErrorCopyWith<_$PaymentError> get copyWith =>
      __$$PaymentErrorCopyWithImpl<_$PaymentError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<BookedRoomInfo> rooms) loadingSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BookedRoomInfo> rooms)? loadingSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BookedRoomInfo> rooms)? loadingSuccess,
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
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentLoadingSuccess value) loadingSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentLoading value)? loading,
    TResult? Function(PaymentError value)? error,
    TResult? Function(PaymentLoadingSuccess value)? loadingSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PaymentError implements PaymentState {
  const factory PaymentError(final String message) = _$PaymentError;

  String get message;
  @JsonKey(ignore: true)
  _$$PaymentErrorCopyWith<_$PaymentError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentLoadingSuccessCopyWith<$Res> {
  factory _$$PaymentLoadingSuccessCopyWith(_$PaymentLoadingSuccess value,
          $Res Function(_$PaymentLoadingSuccess) then) =
      __$$PaymentLoadingSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookedRoomInfo> rooms});
}

/// @nodoc
class __$$PaymentLoadingSuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentLoadingSuccess>
    implements _$$PaymentLoadingSuccessCopyWith<$Res> {
  __$$PaymentLoadingSuccessCopyWithImpl(_$PaymentLoadingSuccess _value,
      $Res Function(_$PaymentLoadingSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$PaymentLoadingSuccess(
      null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<BookedRoomInfo>,
    ));
  }
}

/// @nodoc

class _$PaymentLoadingSuccess implements PaymentLoadingSuccess {
  const _$PaymentLoadingSuccess(final List<BookedRoomInfo> rooms)
      : _rooms = rooms;

  final List<BookedRoomInfo> _rooms;
  @override
  List<BookedRoomInfo> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'PaymentState.loadingSuccess(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLoadingSuccess &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentLoadingSuccessCopyWith<_$PaymentLoadingSuccess> get copyWith =>
      __$$PaymentLoadingSuccessCopyWithImpl<_$PaymentLoadingSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<BookedRoomInfo> rooms) loadingSuccess,
  }) {
    return loadingSuccess(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<BookedRoomInfo> rooms)? loadingSuccess,
  }) {
    return loadingSuccess?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<BookedRoomInfo> rooms)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentInitial value) initial,
    required TResult Function(PaymentLoading value) loading,
    required TResult Function(PaymentError value) error,
    required TResult Function(PaymentLoadingSuccess value) loadingSuccess,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentInitial value)? initial,
    TResult? Function(PaymentLoading value)? loading,
    TResult? Function(PaymentError value)? error,
    TResult? Function(PaymentLoadingSuccess value)? loadingSuccess,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentInitial value)? initial,
    TResult Function(PaymentLoading value)? loading,
    TResult Function(PaymentError value)? error,
    TResult Function(PaymentLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class PaymentLoadingSuccess implements PaymentState {
  const factory PaymentLoadingSuccess(final List<BookedRoomInfo> rooms) =
      _$PaymentLoadingSuccess;

  List<BookedRoomInfo> get rooms;
  @JsonKey(ignore: true)
  _$$PaymentLoadingSuccessCopyWith<_$PaymentLoadingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
