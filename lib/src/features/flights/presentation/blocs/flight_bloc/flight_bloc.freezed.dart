// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlightEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() flightLoadingEvent,
    required TResult Function(List<double> priceRange,
            List<double> transitRange, FlightSortByOption? type)
        filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? flightLoadingEvent,
    TResult? Function(List<double> priceRange, List<double> transitRange,
            FlightSortByOption? type)?
        filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? flightLoadingEvent,
    TResult Function(List<double> priceRange, List<double> transitRange,
            FlightSortByOption? type)?
        filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlightLoadingEvent value) flightLoadingEvent,
    required TResult Function(FlightFilterEvent value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlightLoadingEvent value)? flightLoadingEvent,
    TResult? Function(FlightFilterEvent value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlightLoadingEvent value)? flightLoadingEvent,
    TResult Function(FlightFilterEvent value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightEventCopyWith<$Res> {
  factory $FlightEventCopyWith(
          FlightEvent value, $Res Function(FlightEvent) then) =
      _$FlightEventCopyWithImpl<$Res, FlightEvent>;
}

/// @nodoc
class _$FlightEventCopyWithImpl<$Res, $Val extends FlightEvent>
    implements $FlightEventCopyWith<$Res> {
  _$FlightEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FlightLoadingEventCopyWith<$Res> {
  factory _$$FlightLoadingEventCopyWith(_$FlightLoadingEvent value,
          $Res Function(_$FlightLoadingEvent) then) =
      __$$FlightLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlightLoadingEventCopyWithImpl<$Res>
    extends _$FlightEventCopyWithImpl<$Res, _$FlightLoadingEvent>
    implements _$$FlightLoadingEventCopyWith<$Res> {
  __$$FlightLoadingEventCopyWithImpl(
      _$FlightLoadingEvent _value, $Res Function(_$FlightLoadingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlightLoadingEvent implements FlightLoadingEvent {
  const _$FlightLoadingEvent();

  @override
  String toString() {
    return 'FlightEvent.flightLoadingEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlightLoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() flightLoadingEvent,
    required TResult Function(List<double> priceRange,
            List<double> transitRange, FlightSortByOption? type)
        filter,
  }) {
    return flightLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? flightLoadingEvent,
    TResult? Function(List<double> priceRange, List<double> transitRange,
            FlightSortByOption? type)?
        filter,
  }) {
    return flightLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? flightLoadingEvent,
    TResult Function(List<double> priceRange, List<double> transitRange,
            FlightSortByOption? type)?
        filter,
    required TResult orElse(),
  }) {
    if (flightLoadingEvent != null) {
      return flightLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlightLoadingEvent value) flightLoadingEvent,
    required TResult Function(FlightFilterEvent value) filter,
  }) {
    return flightLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlightLoadingEvent value)? flightLoadingEvent,
    TResult? Function(FlightFilterEvent value)? filter,
  }) {
    return flightLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlightLoadingEvent value)? flightLoadingEvent,
    TResult Function(FlightFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (flightLoadingEvent != null) {
      return flightLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class FlightLoadingEvent implements FlightEvent {
  const factory FlightLoadingEvent() = _$FlightLoadingEvent;
}

/// @nodoc
abstract class _$$FlightFilterEventCopyWith<$Res> {
  factory _$$FlightFilterEventCopyWith(
          _$FlightFilterEvent value, $Res Function(_$FlightFilterEvent) then) =
      __$$FlightFilterEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<double> priceRange,
      List<double> transitRange,
      FlightSortByOption? type});
}

/// @nodoc
class __$$FlightFilterEventCopyWithImpl<$Res>
    extends _$FlightEventCopyWithImpl<$Res, _$FlightFilterEvent>
    implements _$$FlightFilterEventCopyWith<$Res> {
  __$$FlightFilterEventCopyWithImpl(
      _$FlightFilterEvent _value, $Res Function(_$FlightFilterEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceRange = null,
    Object? transitRange = null,
    Object? type = freezed,
  }) {
    return _then(_$FlightFilterEvent(
      priceRange: null == priceRange
          ? _value._priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as List<double>,
      transitRange: null == transitRange
          ? _value._transitRange
          : transitRange // ignore: cast_nullable_to_non_nullable
              as List<double>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FlightSortByOption?,
    ));
  }
}

/// @nodoc

class _$FlightFilterEvent implements FlightFilterEvent {
  const _$FlightFilterEvent(
      {required final List<double> priceRange,
      required final List<double> transitRange,
      this.type})
      : _priceRange = priceRange,
        _transitRange = transitRange;

  final List<double> _priceRange;
  @override
  List<double> get priceRange {
    if (_priceRange is EqualUnmodifiableListView) return _priceRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priceRange);
  }

  final List<double> _transitRange;
  @override
  List<double> get transitRange {
    if (_transitRange is EqualUnmodifiableListView) return _transitRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transitRange);
  }

  @override
  final FlightSortByOption? type;

  @override
  String toString() {
    return 'FlightEvent.filter(priceRange: $priceRange, transitRange: $transitRange, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlightFilterEvent &&
            const DeepCollectionEquality()
                .equals(other._priceRange, _priceRange) &&
            const DeepCollectionEquality()
                .equals(other._transitRange, _transitRange) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_priceRange),
      const DeepCollectionEquality().hash(_transitRange),
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlightFilterEventCopyWith<_$FlightFilterEvent> get copyWith =>
      __$$FlightFilterEventCopyWithImpl<_$FlightFilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() flightLoadingEvent,
    required TResult Function(List<double> priceRange,
            List<double> transitRange, FlightSortByOption? type)
        filter,
  }) {
    return filter(priceRange, transitRange, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? flightLoadingEvent,
    TResult? Function(List<double> priceRange, List<double> transitRange,
            FlightSortByOption? type)?
        filter,
  }) {
    return filter?.call(priceRange, transitRange, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? flightLoadingEvent,
    TResult Function(List<double> priceRange, List<double> transitRange,
            FlightSortByOption? type)?
        filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(priceRange, transitRange, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlightLoadingEvent value) flightLoadingEvent,
    required TResult Function(FlightFilterEvent value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlightLoadingEvent value)? flightLoadingEvent,
    TResult? Function(FlightFilterEvent value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlightLoadingEvent value)? flightLoadingEvent,
    TResult Function(FlightFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class FlightFilterEvent implements FlightEvent {
  const factory FlightFilterEvent(
      {required final List<double> priceRange,
      required final List<double> transitRange,
      final FlightSortByOption? type}) = _$FlightFilterEvent;

  List<double> get priceRange;
  List<double> get transitRange;
  FlightSortByOption? get type;
  @JsonKey(ignore: true)
  _$$FlightFilterEventCopyWith<_$FlightFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlightState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFlightState,
    required TResult Function(String message) errorFlightState,
    required TResult Function(
            List<FlightTicket> flights, int minPrice, int maxPrice)
        loadingFlightSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFlightState,
    TResult? Function(String message)? errorFlightState,
    TResult? Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFlightState,
    TResult Function(String message)? errorFlightState,
    TResult Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlightInitial value) initial,
    required TResult Function(LoadingFlightState value) loadingFlightState,
    required TResult Function(ErrorFlightState value) errorFlightState,
    required TResult Function(LoadingFlightSuccess value) loadingFlightSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlightInitial value)? initial,
    TResult? Function(LoadingFlightState value)? loadingFlightState,
    TResult? Function(ErrorFlightState value)? errorFlightState,
    TResult? Function(LoadingFlightSuccess value)? loadingFlightSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlightInitial value)? initial,
    TResult Function(LoadingFlightState value)? loadingFlightState,
    TResult Function(ErrorFlightState value)? errorFlightState,
    TResult Function(LoadingFlightSuccess value)? loadingFlightSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightStateCopyWith<$Res> {
  factory $FlightStateCopyWith(
          FlightState value, $Res Function(FlightState) then) =
      _$FlightStateCopyWithImpl<$Res, FlightState>;
}

/// @nodoc
class _$FlightStateCopyWithImpl<$Res, $Val extends FlightState>
    implements $FlightStateCopyWith<$Res> {
  _$FlightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FlightInitialCopyWith<$Res> {
  factory _$$FlightInitialCopyWith(
          _$FlightInitial value, $Res Function(_$FlightInitial) then) =
      __$$FlightInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlightInitialCopyWithImpl<$Res>
    extends _$FlightStateCopyWithImpl<$Res, _$FlightInitial>
    implements _$$FlightInitialCopyWith<$Res> {
  __$$FlightInitialCopyWithImpl(
      _$FlightInitial _value, $Res Function(_$FlightInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlightInitial implements FlightInitial {
  const _$FlightInitial();

  @override
  String toString() {
    return 'FlightState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlightInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFlightState,
    required TResult Function(String message) errorFlightState,
    required TResult Function(
            List<FlightTicket> flights, int minPrice, int maxPrice)
        loadingFlightSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFlightState,
    TResult? Function(String message)? errorFlightState,
    TResult? Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFlightState,
    TResult Function(String message)? errorFlightState,
    TResult Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
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
    required TResult Function(FlightInitial value) initial,
    required TResult Function(LoadingFlightState value) loadingFlightState,
    required TResult Function(ErrorFlightState value) errorFlightState,
    required TResult Function(LoadingFlightSuccess value) loadingFlightSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlightInitial value)? initial,
    TResult? Function(LoadingFlightState value)? loadingFlightState,
    TResult? Function(ErrorFlightState value)? errorFlightState,
    TResult? Function(LoadingFlightSuccess value)? loadingFlightSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlightInitial value)? initial,
    TResult Function(LoadingFlightState value)? loadingFlightState,
    TResult Function(ErrorFlightState value)? errorFlightState,
    TResult Function(LoadingFlightSuccess value)? loadingFlightSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FlightInitial implements FlightState {
  const factory FlightInitial() = _$FlightInitial;
}

/// @nodoc
abstract class _$$LoadingFlightStateCopyWith<$Res> {
  factory _$$LoadingFlightStateCopyWith(_$LoadingFlightState value,
          $Res Function(_$LoadingFlightState) then) =
      __$$LoadingFlightStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFlightStateCopyWithImpl<$Res>
    extends _$FlightStateCopyWithImpl<$Res, _$LoadingFlightState>
    implements _$$LoadingFlightStateCopyWith<$Res> {
  __$$LoadingFlightStateCopyWithImpl(
      _$LoadingFlightState _value, $Res Function(_$LoadingFlightState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingFlightState implements LoadingFlightState {
  const _$LoadingFlightState();

  @override
  String toString() {
    return 'FlightState.loadingFlightState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingFlightState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFlightState,
    required TResult Function(String message) errorFlightState,
    required TResult Function(
            List<FlightTicket> flights, int minPrice, int maxPrice)
        loadingFlightSuccess,
  }) {
    return loadingFlightState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFlightState,
    TResult? Function(String message)? errorFlightState,
    TResult? Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
  }) {
    return loadingFlightState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFlightState,
    TResult Function(String message)? errorFlightState,
    TResult Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
    required TResult orElse(),
  }) {
    if (loadingFlightState != null) {
      return loadingFlightState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlightInitial value) initial,
    required TResult Function(LoadingFlightState value) loadingFlightState,
    required TResult Function(ErrorFlightState value) errorFlightState,
    required TResult Function(LoadingFlightSuccess value) loadingFlightSuccess,
  }) {
    return loadingFlightState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlightInitial value)? initial,
    TResult? Function(LoadingFlightState value)? loadingFlightState,
    TResult? Function(ErrorFlightState value)? errorFlightState,
    TResult? Function(LoadingFlightSuccess value)? loadingFlightSuccess,
  }) {
    return loadingFlightState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlightInitial value)? initial,
    TResult Function(LoadingFlightState value)? loadingFlightState,
    TResult Function(ErrorFlightState value)? errorFlightState,
    TResult Function(LoadingFlightSuccess value)? loadingFlightSuccess,
    required TResult orElse(),
  }) {
    if (loadingFlightState != null) {
      return loadingFlightState(this);
    }
    return orElse();
  }
}

abstract class LoadingFlightState implements FlightState {
  const factory LoadingFlightState() = _$LoadingFlightState;
}

/// @nodoc
abstract class _$$ErrorFlightStateCopyWith<$Res> {
  factory _$$ErrorFlightStateCopyWith(
          _$ErrorFlightState value, $Res Function(_$ErrorFlightState) then) =
      __$$ErrorFlightStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorFlightStateCopyWithImpl<$Res>
    extends _$FlightStateCopyWithImpl<$Res, _$ErrorFlightState>
    implements _$$ErrorFlightStateCopyWith<$Res> {
  __$$ErrorFlightStateCopyWithImpl(
      _$ErrorFlightState _value, $Res Function(_$ErrorFlightState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorFlightState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorFlightState implements ErrorFlightState {
  const _$ErrorFlightState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FlightState.errorFlightState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorFlightState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorFlightStateCopyWith<_$ErrorFlightState> get copyWith =>
      __$$ErrorFlightStateCopyWithImpl<_$ErrorFlightState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFlightState,
    required TResult Function(String message) errorFlightState,
    required TResult Function(
            List<FlightTicket> flights, int minPrice, int maxPrice)
        loadingFlightSuccess,
  }) {
    return errorFlightState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFlightState,
    TResult? Function(String message)? errorFlightState,
    TResult? Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
  }) {
    return errorFlightState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFlightState,
    TResult Function(String message)? errorFlightState,
    TResult Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
    required TResult orElse(),
  }) {
    if (errorFlightState != null) {
      return errorFlightState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlightInitial value) initial,
    required TResult Function(LoadingFlightState value) loadingFlightState,
    required TResult Function(ErrorFlightState value) errorFlightState,
    required TResult Function(LoadingFlightSuccess value) loadingFlightSuccess,
  }) {
    return errorFlightState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlightInitial value)? initial,
    TResult? Function(LoadingFlightState value)? loadingFlightState,
    TResult? Function(ErrorFlightState value)? errorFlightState,
    TResult? Function(LoadingFlightSuccess value)? loadingFlightSuccess,
  }) {
    return errorFlightState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlightInitial value)? initial,
    TResult Function(LoadingFlightState value)? loadingFlightState,
    TResult Function(ErrorFlightState value)? errorFlightState,
    TResult Function(LoadingFlightSuccess value)? loadingFlightSuccess,
    required TResult orElse(),
  }) {
    if (errorFlightState != null) {
      return errorFlightState(this);
    }
    return orElse();
  }
}

abstract class ErrorFlightState implements FlightState {
  const factory ErrorFlightState(final String message) = _$ErrorFlightState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorFlightStateCopyWith<_$ErrorFlightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingFlightSuccessCopyWith<$Res> {
  factory _$$LoadingFlightSuccessCopyWith(_$LoadingFlightSuccess value,
          $Res Function(_$LoadingFlightSuccess) then) =
      __$$LoadingFlightSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FlightTicket> flights, int minPrice, int maxPrice});
}

/// @nodoc
class __$$LoadingFlightSuccessCopyWithImpl<$Res>
    extends _$FlightStateCopyWithImpl<$Res, _$LoadingFlightSuccess>
    implements _$$LoadingFlightSuccessCopyWith<$Res> {
  __$$LoadingFlightSuccessCopyWithImpl(_$LoadingFlightSuccess _value,
      $Res Function(_$LoadingFlightSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flights = null,
    Object? minPrice = null,
    Object? maxPrice = null,
  }) {
    return _then(_$LoadingFlightSuccess(
      null == flights
          ? _value._flights
          : flights // ignore: cast_nullable_to_non_nullable
              as List<FlightTicket>,
      null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadingFlightSuccess implements LoadingFlightSuccess {
  const _$LoadingFlightSuccess(
      final List<FlightTicket> flights, this.minPrice, this.maxPrice)
      : _flights = flights;

  final List<FlightTicket> _flights;
  @override
  List<FlightTicket> get flights {
    if (_flights is EqualUnmodifiableListView) return _flights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flights);
  }

  @override
  final int minPrice;
  @override
  final int maxPrice;

  @override
  String toString() {
    return 'FlightState.loadingFlightSuccess(flights: $flights, minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingFlightSuccess &&
            const DeepCollectionEquality().equals(other._flights, _flights) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_flights), minPrice, maxPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingFlightSuccessCopyWith<_$LoadingFlightSuccess> get copyWith =>
      __$$LoadingFlightSuccessCopyWithImpl<_$LoadingFlightSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingFlightState,
    required TResult Function(String message) errorFlightState,
    required TResult Function(
            List<FlightTicket> flights, int minPrice, int maxPrice)
        loadingFlightSuccess,
  }) {
    return loadingFlightSuccess(flights, minPrice, maxPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingFlightState,
    TResult? Function(String message)? errorFlightState,
    TResult? Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
  }) {
    return loadingFlightSuccess?.call(flights, minPrice, maxPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingFlightState,
    TResult Function(String message)? errorFlightState,
    TResult Function(List<FlightTicket> flights, int minPrice, int maxPrice)?
        loadingFlightSuccess,
    required TResult orElse(),
  }) {
    if (loadingFlightSuccess != null) {
      return loadingFlightSuccess(flights, minPrice, maxPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FlightInitial value) initial,
    required TResult Function(LoadingFlightState value) loadingFlightState,
    required TResult Function(ErrorFlightState value) errorFlightState,
    required TResult Function(LoadingFlightSuccess value) loadingFlightSuccess,
  }) {
    return loadingFlightSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FlightInitial value)? initial,
    TResult? Function(LoadingFlightState value)? loadingFlightState,
    TResult? Function(ErrorFlightState value)? errorFlightState,
    TResult? Function(LoadingFlightSuccess value)? loadingFlightSuccess,
  }) {
    return loadingFlightSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FlightInitial value)? initial,
    TResult Function(LoadingFlightState value)? loadingFlightState,
    TResult Function(ErrorFlightState value)? errorFlightState,
    TResult Function(LoadingFlightSuccess value)? loadingFlightSuccess,
    required TResult orElse(),
  }) {
    if (loadingFlightSuccess != null) {
      return loadingFlightSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadingFlightSuccess implements FlightState {
  const factory LoadingFlightSuccess(final List<FlightTicket> flights,
      final int minPrice, final int maxPrice) = _$LoadingFlightSuccess;

  List<FlightTicket> get flights;
  int get minPrice;
  int get maxPrice;
  @JsonKey(ignore: true)
  _$$LoadingFlightSuccessCopyWith<_$LoadingFlightSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
