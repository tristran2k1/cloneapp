// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelDetailEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) hotelDetailLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? hotelDetailLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? hotelDetailLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelDetailLoadingEvent value)
        hotelDetailLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelDetailLoadingEvent value)? hotelDetailLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelDetailLoadingEvent value)? hotelDetailLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelDetailEventCopyWith<HotelDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelDetailEventCopyWith<$Res> {
  factory $HotelDetailEventCopyWith(
          HotelDetailEvent value, $Res Function(HotelDetailEvent) then) =
      _$HotelDetailEventCopyWithImpl<$Res, HotelDetailEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$HotelDetailEventCopyWithImpl<$Res, $Val extends HotelDetailEvent>
    implements $HotelDetailEventCopyWith<$Res> {
  _$HotelDetailEventCopyWithImpl(this._value, this._then);

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
abstract class _$$HotelDetailLoadingEventCopyWith<$Res>
    implements $HotelDetailEventCopyWith<$Res> {
  factory _$$HotelDetailLoadingEventCopyWith(_$HotelDetailLoadingEvent value,
          $Res Function(_$HotelDetailLoadingEvent) then) =
      __$$HotelDetailLoadingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$HotelDetailLoadingEventCopyWithImpl<$Res>
    extends _$HotelDetailEventCopyWithImpl<$Res, _$HotelDetailLoadingEvent>
    implements _$$HotelDetailLoadingEventCopyWith<$Res> {
  __$$HotelDetailLoadingEventCopyWithImpl(_$HotelDetailLoadingEvent _value,
      $Res Function(_$HotelDetailLoadingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HotelDetailLoadingEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HotelDetailLoadingEvent implements HotelDetailLoadingEvent {
  const _$HotelDetailLoadingEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HotelDetailEvent.hotelDetailLoadingEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDetailLoadingEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDetailLoadingEventCopyWith<_$HotelDetailLoadingEvent> get copyWith =>
      __$$HotelDetailLoadingEventCopyWithImpl<_$HotelDetailLoadingEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) hotelDetailLoadingEvent,
  }) {
    return hotelDetailLoadingEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? hotelDetailLoadingEvent,
  }) {
    return hotelDetailLoadingEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? hotelDetailLoadingEvent,
    required TResult orElse(),
  }) {
    if (hotelDetailLoadingEvent != null) {
      return hotelDetailLoadingEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelDetailLoadingEvent value)
        hotelDetailLoadingEvent,
  }) {
    return hotelDetailLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelDetailLoadingEvent value)? hotelDetailLoadingEvent,
  }) {
    return hotelDetailLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelDetailLoadingEvent value)? hotelDetailLoadingEvent,
    required TResult orElse(),
  }) {
    if (hotelDetailLoadingEvent != null) {
      return hotelDetailLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class HotelDetailLoadingEvent implements HotelDetailEvent {
  const factory HotelDetailLoadingEvent(final String id) =
      _$HotelDetailLoadingEvent;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$HotelDetailLoadingEventCopyWith<_$HotelDetailLoadingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HotelDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hotelDetailLoadingState,
    required TResult Function(String message) error,
    required TResult Function(Hotel hotel) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? hotelDetailLoadingState,
    TResult? Function(String message)? error,
    TResult? Function(Hotel hotel)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hotelDetailLoadingState,
    TResult Function(String message)? error,
    TResult Function(Hotel hotel)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelDetailInitial value) initial,
    required TResult Function(HotelDetailLoadingState value)
        hotelDetailLoadingState,
    required TResult Function(HotelDetailError value) error,
    required TResult Function(HotelDetailLoadingSuccess value) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelDetailInitial value)? initial,
    TResult? Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult? Function(HotelDetailError value)? error,
    TResult? Function(HotelDetailLoadingSuccess value)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelDetailInitial value)? initial,
    TResult Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult Function(HotelDetailError value)? error,
    TResult Function(HotelDetailLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelDetailStateCopyWith<$Res> {
  factory $HotelDetailStateCopyWith(
          HotelDetailState value, $Res Function(HotelDetailState) then) =
      _$HotelDetailStateCopyWithImpl<$Res, HotelDetailState>;
}

/// @nodoc
class _$HotelDetailStateCopyWithImpl<$Res, $Val extends HotelDetailState>
    implements $HotelDetailStateCopyWith<$Res> {
  _$HotelDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HotelDetailInitialCopyWith<$Res> {
  factory _$$HotelDetailInitialCopyWith(_$HotelDetailInitial value,
          $Res Function(_$HotelDetailInitial) then) =
      __$$HotelDetailInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HotelDetailInitialCopyWithImpl<$Res>
    extends _$HotelDetailStateCopyWithImpl<$Res, _$HotelDetailInitial>
    implements _$$HotelDetailInitialCopyWith<$Res> {
  __$$HotelDetailInitialCopyWithImpl(
      _$HotelDetailInitial _value, $Res Function(_$HotelDetailInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HotelDetailInitial implements HotelDetailInitial {
  const _$HotelDetailInitial();

  @override
  String toString() {
    return 'HotelDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HotelDetailInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hotelDetailLoadingState,
    required TResult Function(String message) error,
    required TResult Function(Hotel hotel) loadingSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? hotelDetailLoadingState,
    TResult? Function(String message)? error,
    TResult? Function(Hotel hotel)? loadingSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hotelDetailLoadingState,
    TResult Function(String message)? error,
    TResult Function(Hotel hotel)? loadingSuccess,
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
    required TResult Function(HotelDetailInitial value) initial,
    required TResult Function(HotelDetailLoadingState value)
        hotelDetailLoadingState,
    required TResult Function(HotelDetailError value) error,
    required TResult Function(HotelDetailLoadingSuccess value) loadingSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelDetailInitial value)? initial,
    TResult? Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult? Function(HotelDetailError value)? error,
    TResult? Function(HotelDetailLoadingSuccess value)? loadingSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelDetailInitial value)? initial,
    TResult Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult Function(HotelDetailError value)? error,
    TResult Function(HotelDetailLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HotelDetailInitial implements HotelDetailState {
  const factory HotelDetailInitial() = _$HotelDetailInitial;
}

/// @nodoc
abstract class _$$HotelDetailLoadingStateCopyWith<$Res> {
  factory _$$HotelDetailLoadingStateCopyWith(_$HotelDetailLoadingState value,
          $Res Function(_$HotelDetailLoadingState) then) =
      __$$HotelDetailLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HotelDetailLoadingStateCopyWithImpl<$Res>
    extends _$HotelDetailStateCopyWithImpl<$Res, _$HotelDetailLoadingState>
    implements _$$HotelDetailLoadingStateCopyWith<$Res> {
  __$$HotelDetailLoadingStateCopyWithImpl(_$HotelDetailLoadingState _value,
      $Res Function(_$HotelDetailLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HotelDetailLoadingState implements HotelDetailLoadingState {
  const _$HotelDetailLoadingState();

  @override
  String toString() {
    return 'HotelDetailState.hotelDetailLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDetailLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hotelDetailLoadingState,
    required TResult Function(String message) error,
    required TResult Function(Hotel hotel) loadingSuccess,
  }) {
    return hotelDetailLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? hotelDetailLoadingState,
    TResult? Function(String message)? error,
    TResult? Function(Hotel hotel)? loadingSuccess,
  }) {
    return hotelDetailLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hotelDetailLoadingState,
    TResult Function(String message)? error,
    TResult Function(Hotel hotel)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (hotelDetailLoadingState != null) {
      return hotelDetailLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelDetailInitial value) initial,
    required TResult Function(HotelDetailLoadingState value)
        hotelDetailLoadingState,
    required TResult Function(HotelDetailError value) error,
    required TResult Function(HotelDetailLoadingSuccess value) loadingSuccess,
  }) {
    return hotelDetailLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelDetailInitial value)? initial,
    TResult? Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult? Function(HotelDetailError value)? error,
    TResult? Function(HotelDetailLoadingSuccess value)? loadingSuccess,
  }) {
    return hotelDetailLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelDetailInitial value)? initial,
    TResult Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult Function(HotelDetailError value)? error,
    TResult Function(HotelDetailLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (hotelDetailLoadingState != null) {
      return hotelDetailLoadingState(this);
    }
    return orElse();
  }
}

abstract class HotelDetailLoadingState implements HotelDetailState {
  const factory HotelDetailLoadingState() = _$HotelDetailLoadingState;
}

/// @nodoc
abstract class _$$HotelDetailErrorCopyWith<$Res> {
  factory _$$HotelDetailErrorCopyWith(
          _$HotelDetailError value, $Res Function(_$HotelDetailError) then) =
      __$$HotelDetailErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HotelDetailErrorCopyWithImpl<$Res>
    extends _$HotelDetailStateCopyWithImpl<$Res, _$HotelDetailError>
    implements _$$HotelDetailErrorCopyWith<$Res> {
  __$$HotelDetailErrorCopyWithImpl(
      _$HotelDetailError _value, $Res Function(_$HotelDetailError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HotelDetailError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HotelDetailError implements HotelDetailError {
  const _$HotelDetailError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HotelDetailState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDetailError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDetailErrorCopyWith<_$HotelDetailError> get copyWith =>
      __$$HotelDetailErrorCopyWithImpl<_$HotelDetailError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hotelDetailLoadingState,
    required TResult Function(String message) error,
    required TResult Function(Hotel hotel) loadingSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? hotelDetailLoadingState,
    TResult? Function(String message)? error,
    TResult? Function(Hotel hotel)? loadingSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hotelDetailLoadingState,
    TResult Function(String message)? error,
    TResult Function(Hotel hotel)? loadingSuccess,
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
    required TResult Function(HotelDetailInitial value) initial,
    required TResult Function(HotelDetailLoadingState value)
        hotelDetailLoadingState,
    required TResult Function(HotelDetailError value) error,
    required TResult Function(HotelDetailLoadingSuccess value) loadingSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelDetailInitial value)? initial,
    TResult? Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult? Function(HotelDetailError value)? error,
    TResult? Function(HotelDetailLoadingSuccess value)? loadingSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelDetailInitial value)? initial,
    TResult Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult Function(HotelDetailError value)? error,
    TResult Function(HotelDetailLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HotelDetailError implements HotelDetailState {
  const factory HotelDetailError(final String message) = _$HotelDetailError;

  String get message;
  @JsonKey(ignore: true)
  _$$HotelDetailErrorCopyWith<_$HotelDetailError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HotelDetailLoadingSuccessCopyWith<$Res> {
  factory _$$HotelDetailLoadingSuccessCopyWith(
          _$HotelDetailLoadingSuccess value,
          $Res Function(_$HotelDetailLoadingSuccess) then) =
      __$$HotelDetailLoadingSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Hotel hotel});

  $HotelCopyWith<$Res> get hotel;
}

/// @nodoc
class __$$HotelDetailLoadingSuccessCopyWithImpl<$Res>
    extends _$HotelDetailStateCopyWithImpl<$Res, _$HotelDetailLoadingSuccess>
    implements _$$HotelDetailLoadingSuccessCopyWith<$Res> {
  __$$HotelDetailLoadingSuccessCopyWithImpl(_$HotelDetailLoadingSuccess _value,
      $Res Function(_$HotelDetailLoadingSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
  }) {
    return _then(_$HotelDetailLoadingSuccess(
      null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as Hotel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res> get hotel {
    return $HotelCopyWith<$Res>(_value.hotel, (value) {
      return _then(_value.copyWith(hotel: value));
    });
  }
}

/// @nodoc

class _$HotelDetailLoadingSuccess implements HotelDetailLoadingSuccess {
  const _$HotelDetailLoadingSuccess(this.hotel);

  @override
  final Hotel hotel;

  @override
  String toString() {
    return 'HotelDetailState.loadingSuccess(hotel: $hotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDetailLoadingSuccess &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDetailLoadingSuccessCopyWith<_$HotelDetailLoadingSuccess>
      get copyWith => __$$HotelDetailLoadingSuccessCopyWithImpl<
          _$HotelDetailLoadingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hotelDetailLoadingState,
    required TResult Function(String message) error,
    required TResult Function(Hotel hotel) loadingSuccess,
  }) {
    return loadingSuccess(hotel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? hotelDetailLoadingState,
    TResult? Function(String message)? error,
    TResult? Function(Hotel hotel)? loadingSuccess,
  }) {
    return loadingSuccess?.call(hotel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hotelDetailLoadingState,
    TResult Function(String message)? error,
    TResult Function(Hotel hotel)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(hotel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelDetailInitial value) initial,
    required TResult Function(HotelDetailLoadingState value)
        hotelDetailLoadingState,
    required TResult Function(HotelDetailError value) error,
    required TResult Function(HotelDetailLoadingSuccess value) loadingSuccess,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelDetailInitial value)? initial,
    TResult? Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult? Function(HotelDetailError value)? error,
    TResult? Function(HotelDetailLoadingSuccess value)? loadingSuccess,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelDetailInitial value)? initial,
    TResult Function(HotelDetailLoadingState value)? hotelDetailLoadingState,
    TResult Function(HotelDetailError value)? error,
    TResult Function(HotelDetailLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class HotelDetailLoadingSuccess implements HotelDetailState {
  const factory HotelDetailLoadingSuccess(final Hotel hotel) =
      _$HotelDetailLoadingSuccess;

  Hotel get hotel;
  @JsonKey(ignore: true)
  _$$HotelDetailLoadingSuccessCopyWith<_$HotelDetailLoadingSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
