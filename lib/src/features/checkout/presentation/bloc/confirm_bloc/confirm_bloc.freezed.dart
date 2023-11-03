// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) checkoutLoadingEvent,
    required TResult Function(BookingRoomModel bookingInfo) bookingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? checkoutLoadingEvent,
    TResult? Function(BookingRoomModel bookingInfo)? bookingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? checkoutLoadingEvent,
    TResult Function(BookingRoomModel bookingInfo)? bookingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmLoadingEvent value) checkoutLoadingEvent,
    required TResult Function(ConfirmBookingEvent value) bookingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmLoadingEvent value)? checkoutLoadingEvent,
    TResult? Function(ConfirmBookingEvent value)? bookingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmLoadingEvent value)? checkoutLoadingEvent,
    TResult Function(ConfirmBookingEvent value)? bookingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmEventCopyWith<$Res> {
  factory $ConfirmEventCopyWith(
          ConfirmEvent value, $Res Function(ConfirmEvent) then) =
      _$ConfirmEventCopyWithImpl<$Res, ConfirmEvent>;
}

/// @nodoc
class _$ConfirmEventCopyWithImpl<$Res, $Val extends ConfirmEvent>
    implements $ConfirmEventCopyWith<$Res> {
  _$ConfirmEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConfirmLoadingEventCopyWith<$Res> {
  factory _$$ConfirmLoadingEventCopyWith(_$ConfirmLoadingEvent value,
          $Res Function(_$ConfirmLoadingEvent) then) =
      __$$ConfirmLoadingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ConfirmLoadingEventCopyWithImpl<$Res>
    extends _$ConfirmEventCopyWithImpl<$Res, _$ConfirmLoadingEvent>
    implements _$$ConfirmLoadingEventCopyWith<$Res> {
  __$$ConfirmLoadingEventCopyWithImpl(
      _$ConfirmLoadingEvent _value, $Res Function(_$ConfirmLoadingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ConfirmLoadingEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmLoadingEvent implements ConfirmLoadingEvent {
  const _$ConfirmLoadingEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ConfirmEvent.checkoutLoadingEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmLoadingEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmLoadingEventCopyWith<_$ConfirmLoadingEvent> get copyWith =>
      __$$ConfirmLoadingEventCopyWithImpl<_$ConfirmLoadingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) checkoutLoadingEvent,
    required TResult Function(BookingRoomModel bookingInfo) bookingEvent,
  }) {
    return checkoutLoadingEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? checkoutLoadingEvent,
    TResult? Function(BookingRoomModel bookingInfo)? bookingEvent,
  }) {
    return checkoutLoadingEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? checkoutLoadingEvent,
    TResult Function(BookingRoomModel bookingInfo)? bookingEvent,
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
    required TResult Function(ConfirmLoadingEvent value) checkoutLoadingEvent,
    required TResult Function(ConfirmBookingEvent value) bookingEvent,
  }) {
    return checkoutLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmLoadingEvent value)? checkoutLoadingEvent,
    TResult? Function(ConfirmBookingEvent value)? bookingEvent,
  }) {
    return checkoutLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmLoadingEvent value)? checkoutLoadingEvent,
    TResult Function(ConfirmBookingEvent value)? bookingEvent,
    required TResult orElse(),
  }) {
    if (checkoutLoadingEvent != null) {
      return checkoutLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class ConfirmLoadingEvent implements ConfirmEvent {
  const factory ConfirmLoadingEvent(final String id) = _$ConfirmLoadingEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$ConfirmLoadingEventCopyWith<_$ConfirmLoadingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmBookingEventCopyWith<$Res> {
  factory _$$ConfirmBookingEventCopyWith(_$ConfirmBookingEvent value,
          $Res Function(_$ConfirmBookingEvent) then) =
      __$$ConfirmBookingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingRoomModel bookingInfo});
}

/// @nodoc
class __$$ConfirmBookingEventCopyWithImpl<$Res>
    extends _$ConfirmEventCopyWithImpl<$Res, _$ConfirmBookingEvent>
    implements _$$ConfirmBookingEventCopyWith<$Res> {
  __$$ConfirmBookingEventCopyWithImpl(
      _$ConfirmBookingEvent _value, $Res Function(_$ConfirmBookingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingInfo = null,
  }) {
    return _then(_$ConfirmBookingEvent(
      bookingInfo: null == bookingInfo
          ? _value.bookingInfo
          : bookingInfo // ignore: cast_nullable_to_non_nullable
              as BookingRoomModel,
    ));
  }
}

/// @nodoc

class _$ConfirmBookingEvent implements ConfirmBookingEvent {
  const _$ConfirmBookingEvent({required this.bookingInfo});

  @override
  final BookingRoomModel bookingInfo;

  @override
  String toString() {
    return 'ConfirmEvent.bookingEvent(bookingInfo: $bookingInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmBookingEvent &&
            (identical(other.bookingInfo, bookingInfo) ||
                other.bookingInfo == bookingInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmBookingEventCopyWith<_$ConfirmBookingEvent> get copyWith =>
      __$$ConfirmBookingEventCopyWithImpl<_$ConfirmBookingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) checkoutLoadingEvent,
    required TResult Function(BookingRoomModel bookingInfo) bookingEvent,
  }) {
    return bookingEvent(bookingInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? checkoutLoadingEvent,
    TResult? Function(BookingRoomModel bookingInfo)? bookingEvent,
  }) {
    return bookingEvent?.call(bookingInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? checkoutLoadingEvent,
    TResult Function(BookingRoomModel bookingInfo)? bookingEvent,
    required TResult orElse(),
  }) {
    if (bookingEvent != null) {
      return bookingEvent(bookingInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmLoadingEvent value) checkoutLoadingEvent,
    required TResult Function(ConfirmBookingEvent value) bookingEvent,
  }) {
    return bookingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmLoadingEvent value)? checkoutLoadingEvent,
    TResult? Function(ConfirmBookingEvent value)? bookingEvent,
  }) {
    return bookingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmLoadingEvent value)? checkoutLoadingEvent,
    TResult Function(ConfirmBookingEvent value)? bookingEvent,
    required TResult orElse(),
  }) {
    if (bookingEvent != null) {
      return bookingEvent(this);
    }
    return orElse();
  }
}

abstract class ConfirmBookingEvent implements ConfirmEvent {
  const factory ConfirmBookingEvent(
      {required final BookingRoomModel bookingInfo}) = _$ConfirmBookingEvent;

  BookingRoomModel get bookingInfo;
  @JsonKey(ignore: true)
  _$$ConfirmBookingEventCopyWith<_$ConfirmBookingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConfirmState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomModel room) loadingSuccess,
    required TResult Function() bookingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomModel room)? loadingSuccess,
    TResult? Function()? bookingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomModel room)? loadingSuccess,
    TResult Function()? bookingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmInitial value) initial,
    required TResult Function(ConfirmLoading value) loading,
    required TResult Function(ConfirmError value) error,
    required TResult Function(ConfirmLoadingSuccess value) loadingSuccess,
    required TResult Function(ConfirmBookingSuccess value) bookingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmInitial value)? initial,
    TResult? Function(ConfirmLoading value)? loading,
    TResult? Function(ConfirmError value)? error,
    TResult? Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult? Function(ConfirmBookingSuccess value)? bookingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmInitial value)? initial,
    TResult Function(ConfirmLoading value)? loading,
    TResult Function(ConfirmError value)? error,
    TResult Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult Function(ConfirmBookingSuccess value)? bookingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmStateCopyWith<$Res> {
  factory $ConfirmStateCopyWith(
          ConfirmState value, $Res Function(ConfirmState) then) =
      _$ConfirmStateCopyWithImpl<$Res, ConfirmState>;
}

/// @nodoc
class _$ConfirmStateCopyWithImpl<$Res, $Val extends ConfirmState>
    implements $ConfirmStateCopyWith<$Res> {
  _$ConfirmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConfirmInitialCopyWith<$Res> {
  factory _$$ConfirmInitialCopyWith(
          _$ConfirmInitial value, $Res Function(_$ConfirmInitial) then) =
      __$$ConfirmInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmInitialCopyWithImpl<$Res>
    extends _$ConfirmStateCopyWithImpl<$Res, _$ConfirmInitial>
    implements _$$ConfirmInitialCopyWith<$Res> {
  __$$ConfirmInitialCopyWithImpl(
      _$ConfirmInitial _value, $Res Function(_$ConfirmInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmInitial implements ConfirmInitial {
  const _$ConfirmInitial();

  @override
  String toString() {
    return 'ConfirmState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmInitial);
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
    required TResult Function() bookingSuccess,
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
    TResult? Function()? bookingSuccess,
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
    TResult Function()? bookingSuccess,
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
    required TResult Function(ConfirmInitial value) initial,
    required TResult Function(ConfirmLoading value) loading,
    required TResult Function(ConfirmError value) error,
    required TResult Function(ConfirmLoadingSuccess value) loadingSuccess,
    required TResult Function(ConfirmBookingSuccess value) bookingSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmInitial value)? initial,
    TResult? Function(ConfirmLoading value)? loading,
    TResult? Function(ConfirmError value)? error,
    TResult? Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult? Function(ConfirmBookingSuccess value)? bookingSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmInitial value)? initial,
    TResult Function(ConfirmLoading value)? loading,
    TResult Function(ConfirmError value)? error,
    TResult Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult Function(ConfirmBookingSuccess value)? bookingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ConfirmInitial implements ConfirmState {
  const factory ConfirmInitial() = _$ConfirmInitial;
}

/// @nodoc
abstract class _$$ConfirmLoadingCopyWith<$Res> {
  factory _$$ConfirmLoadingCopyWith(
          _$ConfirmLoading value, $Res Function(_$ConfirmLoading) then) =
      __$$ConfirmLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmLoadingCopyWithImpl<$Res>
    extends _$ConfirmStateCopyWithImpl<$Res, _$ConfirmLoading>
    implements _$$ConfirmLoadingCopyWith<$Res> {
  __$$ConfirmLoadingCopyWithImpl(
      _$ConfirmLoading _value, $Res Function(_$ConfirmLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmLoading implements ConfirmLoading {
  const _$ConfirmLoading();

  @override
  String toString() {
    return 'ConfirmState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmLoading);
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
    required TResult Function() bookingSuccess,
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
    TResult? Function()? bookingSuccess,
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
    TResult Function()? bookingSuccess,
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
    required TResult Function(ConfirmInitial value) initial,
    required TResult Function(ConfirmLoading value) loading,
    required TResult Function(ConfirmError value) error,
    required TResult Function(ConfirmLoadingSuccess value) loadingSuccess,
    required TResult Function(ConfirmBookingSuccess value) bookingSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmInitial value)? initial,
    TResult? Function(ConfirmLoading value)? loading,
    TResult? Function(ConfirmError value)? error,
    TResult? Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult? Function(ConfirmBookingSuccess value)? bookingSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmInitial value)? initial,
    TResult Function(ConfirmLoading value)? loading,
    TResult Function(ConfirmError value)? error,
    TResult Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult Function(ConfirmBookingSuccess value)? bookingSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ConfirmLoading implements ConfirmState {
  const factory ConfirmLoading() = _$ConfirmLoading;
}

/// @nodoc
abstract class _$$ConfirmErrorCopyWith<$Res> {
  factory _$$ConfirmErrorCopyWith(
          _$ConfirmError value, $Res Function(_$ConfirmError) then) =
      __$$ConfirmErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConfirmErrorCopyWithImpl<$Res>
    extends _$ConfirmStateCopyWithImpl<$Res, _$ConfirmError>
    implements _$$ConfirmErrorCopyWith<$Res> {
  __$$ConfirmErrorCopyWithImpl(
      _$ConfirmError _value, $Res Function(_$ConfirmError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConfirmError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmError implements ConfirmError {
  const _$ConfirmError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ConfirmState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmErrorCopyWith<_$ConfirmError> get copyWith =>
      __$$ConfirmErrorCopyWithImpl<_$ConfirmError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomModel room) loadingSuccess,
    required TResult Function() bookingSuccess,
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
    TResult? Function()? bookingSuccess,
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
    TResult Function()? bookingSuccess,
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
    required TResult Function(ConfirmInitial value) initial,
    required TResult Function(ConfirmLoading value) loading,
    required TResult Function(ConfirmError value) error,
    required TResult Function(ConfirmLoadingSuccess value) loadingSuccess,
    required TResult Function(ConfirmBookingSuccess value) bookingSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmInitial value)? initial,
    TResult? Function(ConfirmLoading value)? loading,
    TResult? Function(ConfirmError value)? error,
    TResult? Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult? Function(ConfirmBookingSuccess value)? bookingSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmInitial value)? initial,
    TResult Function(ConfirmLoading value)? loading,
    TResult Function(ConfirmError value)? error,
    TResult Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult Function(ConfirmBookingSuccess value)? bookingSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ConfirmError implements ConfirmState {
  const factory ConfirmError(final String message) = _$ConfirmError;

  String get message;
  @JsonKey(ignore: true)
  _$$ConfirmErrorCopyWith<_$ConfirmError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmLoadingSuccessCopyWith<$Res> {
  factory _$$ConfirmLoadingSuccessCopyWith(_$ConfirmLoadingSuccess value,
          $Res Function(_$ConfirmLoadingSuccess) then) =
      __$$ConfirmLoadingSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomModel room});
}

/// @nodoc
class __$$ConfirmLoadingSuccessCopyWithImpl<$Res>
    extends _$ConfirmStateCopyWithImpl<$Res, _$ConfirmLoadingSuccess>
    implements _$$ConfirmLoadingSuccessCopyWith<$Res> {
  __$$ConfirmLoadingSuccessCopyWithImpl(_$ConfirmLoadingSuccess _value,
      $Res Function(_$ConfirmLoadingSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$ConfirmLoadingSuccess(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomModel,
    ));
  }
}

/// @nodoc

class _$ConfirmLoadingSuccess implements ConfirmLoadingSuccess {
  const _$ConfirmLoadingSuccess(this.room);

  @override
  final RoomModel room;

  @override
  String toString() {
    return 'ConfirmState.loadingSuccess(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmLoadingSuccess &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmLoadingSuccessCopyWith<_$ConfirmLoadingSuccess> get copyWith =>
      __$$ConfirmLoadingSuccessCopyWithImpl<_$ConfirmLoadingSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomModel room) loadingSuccess,
    required TResult Function() bookingSuccess,
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
    TResult? Function()? bookingSuccess,
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
    TResult Function()? bookingSuccess,
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
    required TResult Function(ConfirmInitial value) initial,
    required TResult Function(ConfirmLoading value) loading,
    required TResult Function(ConfirmError value) error,
    required TResult Function(ConfirmLoadingSuccess value) loadingSuccess,
    required TResult Function(ConfirmBookingSuccess value) bookingSuccess,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmInitial value)? initial,
    TResult? Function(ConfirmLoading value)? loading,
    TResult? Function(ConfirmError value)? error,
    TResult? Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult? Function(ConfirmBookingSuccess value)? bookingSuccess,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmInitial value)? initial,
    TResult Function(ConfirmLoading value)? loading,
    TResult Function(ConfirmError value)? error,
    TResult Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult Function(ConfirmBookingSuccess value)? bookingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class ConfirmLoadingSuccess implements ConfirmState {
  const factory ConfirmLoadingSuccess(final RoomModel room) =
      _$ConfirmLoadingSuccess;

  RoomModel get room;
  @JsonKey(ignore: true)
  _$$ConfirmLoadingSuccessCopyWith<_$ConfirmLoadingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmBookingSuccessCopyWith<$Res> {
  factory _$$ConfirmBookingSuccessCopyWith(_$ConfirmBookingSuccess value,
          $Res Function(_$ConfirmBookingSuccess) then) =
      __$$ConfirmBookingSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmBookingSuccessCopyWithImpl<$Res>
    extends _$ConfirmStateCopyWithImpl<$Res, _$ConfirmBookingSuccess>
    implements _$$ConfirmBookingSuccessCopyWith<$Res> {
  __$$ConfirmBookingSuccessCopyWithImpl(_$ConfirmBookingSuccess _value,
      $Res Function(_$ConfirmBookingSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmBookingSuccess implements ConfirmBookingSuccess {
  const _$ConfirmBookingSuccess();

  @override
  String toString() {
    return 'ConfirmState.bookingSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfirmBookingSuccess);
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
    required TResult Function() bookingSuccess,
  }) {
    return bookingSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomModel room)? loadingSuccess,
    TResult? Function()? bookingSuccess,
  }) {
    return bookingSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomModel room)? loadingSuccess,
    TResult Function()? bookingSuccess,
    required TResult orElse(),
  }) {
    if (bookingSuccess != null) {
      return bookingSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmInitial value) initial,
    required TResult Function(ConfirmLoading value) loading,
    required TResult Function(ConfirmError value) error,
    required TResult Function(ConfirmLoadingSuccess value) loadingSuccess,
    required TResult Function(ConfirmBookingSuccess value) bookingSuccess,
  }) {
    return bookingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmInitial value)? initial,
    TResult? Function(ConfirmLoading value)? loading,
    TResult? Function(ConfirmError value)? error,
    TResult? Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult? Function(ConfirmBookingSuccess value)? bookingSuccess,
  }) {
    return bookingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmInitial value)? initial,
    TResult Function(ConfirmLoading value)? loading,
    TResult Function(ConfirmError value)? error,
    TResult Function(ConfirmLoadingSuccess value)? loadingSuccess,
    TResult Function(ConfirmBookingSuccess value)? bookingSuccess,
    required TResult orElse(),
  }) {
    if (bookingSuccess != null) {
      return bookingSuccess(this);
    }
    return orElse();
  }
}

abstract class ConfirmBookingSuccess implements ConfirmState {
  const factory ConfirmBookingSuccess() = _$ConfirmBookingSuccess;
}
