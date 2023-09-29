// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hotelLoadingEvent,
    required TResult Function(int minPrice, int maxPrice, SortByOption type)
        filterByPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hotelLoadingEvent,
    TResult? Function(int minPrice, int maxPrice, SortByOption type)?
        filterByPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hotelLoadingEvent,
    TResult Function(int minPrice, int maxPrice, SortByOption type)?
        filterByPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelLoadingEvent value) hotelLoadingEvent,
    required TResult Function(FilterByPriceHotelEvent value) filterByPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelLoadingEvent value)? hotelLoadingEvent,
    TResult? Function(FilterByPriceHotelEvent value)? filterByPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelLoadingEvent value)? hotelLoadingEvent,
    TResult Function(FilterByPriceHotelEvent value)? filterByPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelEventCopyWith<$Res> {
  factory $HotelEventCopyWith(
          HotelEvent value, $Res Function(HotelEvent) then) =
      _$HotelEventCopyWithImpl<$Res, HotelEvent>;
}

/// @nodoc
class _$HotelEventCopyWithImpl<$Res, $Val extends HotelEvent>
    implements $HotelEventCopyWith<$Res> {
  _$HotelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HotelLoadingEventCopyWith<$Res> {
  factory _$$HotelLoadingEventCopyWith(
          _$HotelLoadingEvent value, $Res Function(_$HotelLoadingEvent) then) =
      __$$HotelLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HotelLoadingEventCopyWithImpl<$Res>
    extends _$HotelEventCopyWithImpl<$Res, _$HotelLoadingEvent>
    implements _$$HotelLoadingEventCopyWith<$Res> {
  __$$HotelLoadingEventCopyWithImpl(
      _$HotelLoadingEvent _value, $Res Function(_$HotelLoadingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HotelLoadingEvent implements HotelLoadingEvent {
  const _$HotelLoadingEvent();

  @override
  String toString() {
    return 'HotelEvent.hotelLoadingEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HotelLoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hotelLoadingEvent,
    required TResult Function(int minPrice, int maxPrice, SortByOption type)
        filterByPrice,
  }) {
    return hotelLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hotelLoadingEvent,
    TResult? Function(int minPrice, int maxPrice, SortByOption type)?
        filterByPrice,
  }) {
    return hotelLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hotelLoadingEvent,
    TResult Function(int minPrice, int maxPrice, SortByOption type)?
        filterByPrice,
    required TResult orElse(),
  }) {
    if (hotelLoadingEvent != null) {
      return hotelLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelLoadingEvent value) hotelLoadingEvent,
    required TResult Function(FilterByPriceHotelEvent value) filterByPrice,
  }) {
    return hotelLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelLoadingEvent value)? hotelLoadingEvent,
    TResult? Function(FilterByPriceHotelEvent value)? filterByPrice,
  }) {
    return hotelLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelLoadingEvent value)? hotelLoadingEvent,
    TResult Function(FilterByPriceHotelEvent value)? filterByPrice,
    required TResult orElse(),
  }) {
    if (hotelLoadingEvent != null) {
      return hotelLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class HotelLoadingEvent implements HotelEvent {
  const factory HotelLoadingEvent() = _$HotelLoadingEvent;
}

/// @nodoc
abstract class _$$FilterByPriceHotelEventCopyWith<$Res> {
  factory _$$FilterByPriceHotelEventCopyWith(_$FilterByPriceHotelEvent value,
          $Res Function(_$FilterByPriceHotelEvent) then) =
      __$$FilterByPriceHotelEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int minPrice, int maxPrice, SortByOption type});
}

/// @nodoc
class __$$FilterByPriceHotelEventCopyWithImpl<$Res>
    extends _$HotelEventCopyWithImpl<$Res, _$FilterByPriceHotelEvent>
    implements _$$FilterByPriceHotelEventCopyWith<$Res> {
  __$$FilterByPriceHotelEventCopyWithImpl(_$FilterByPriceHotelEvent _value,
      $Res Function(_$FilterByPriceHotelEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? type = null,
  }) {
    return _then(_$FilterByPriceHotelEvent(
      null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SortByOption,
    ));
  }
}

/// @nodoc

class _$FilterByPriceHotelEvent implements FilterByPriceHotelEvent {
  const _$FilterByPriceHotelEvent(this.minPrice, this.maxPrice, this.type);

  @override
  final int minPrice;
  @override
  final int maxPrice;
  @override
  final SortByOption type;

  @override
  String toString() {
    return 'HotelEvent.filterByPrice(minPrice: $minPrice, maxPrice: $maxPrice, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByPriceHotelEvent &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minPrice, maxPrice, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByPriceHotelEventCopyWith<_$FilterByPriceHotelEvent> get copyWith =>
      __$$FilterByPriceHotelEventCopyWithImpl<_$FilterByPriceHotelEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hotelLoadingEvent,
    required TResult Function(int minPrice, int maxPrice, SortByOption type)
        filterByPrice,
  }) {
    return filterByPrice(minPrice, maxPrice, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hotelLoadingEvent,
    TResult? Function(int minPrice, int maxPrice, SortByOption type)?
        filterByPrice,
  }) {
    return filterByPrice?.call(minPrice, maxPrice, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hotelLoadingEvent,
    TResult Function(int minPrice, int maxPrice, SortByOption type)?
        filterByPrice,
    required TResult orElse(),
  }) {
    if (filterByPrice != null) {
      return filterByPrice(minPrice, maxPrice, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelLoadingEvent value) hotelLoadingEvent,
    required TResult Function(FilterByPriceHotelEvent value) filterByPrice,
  }) {
    return filterByPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelLoadingEvent value)? hotelLoadingEvent,
    TResult? Function(FilterByPriceHotelEvent value)? filterByPrice,
  }) {
    return filterByPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelLoadingEvent value)? hotelLoadingEvent,
    TResult Function(FilterByPriceHotelEvent value)? filterByPrice,
    required TResult orElse(),
  }) {
    if (filterByPrice != null) {
      return filterByPrice(this);
    }
    return orElse();
  }
}

abstract class FilterByPriceHotelEvent implements HotelEvent {
  const factory FilterByPriceHotelEvent(
          final int minPrice, final int maxPrice, final SortByOption type) =
      _$FilterByPriceHotelEvent;

  int get minPrice;
  int get maxPrice;
  SortByOption get type;
  @JsonKey(ignore: true)
  _$$FilterByPriceHotelEventCopyWith<_$FilterByPriceHotelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HotelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHotelState,
    required TResult Function(String message) errorHotelState,
    required TResult Function(HotelList hotels, int minPrice, int maxPrice)
        loadingHotelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHotelState,
    TResult? Function(String message)? errorHotelState,
    TResult? Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHotelState,
    TResult Function(String message)? errorHotelState,
    TResult Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelInitial value) initial,
    required TResult Function(LoadingHotelState value) loadingHotelState,
    required TResult Function(ErrorHotelState value) errorHotelState,
    required TResult Function(LoadingHotelSuccess value) loadingHotelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelInitial value)? initial,
    TResult? Function(LoadingHotelState value)? loadingHotelState,
    TResult? Function(ErrorHotelState value)? errorHotelState,
    TResult? Function(LoadingHotelSuccess value)? loadingHotelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelInitial value)? initial,
    TResult Function(LoadingHotelState value)? loadingHotelState,
    TResult Function(ErrorHotelState value)? errorHotelState,
    TResult Function(LoadingHotelSuccess value)? loadingHotelSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelStateCopyWith<$Res> {
  factory $HotelStateCopyWith(
          HotelState value, $Res Function(HotelState) then) =
      _$HotelStateCopyWithImpl<$Res, HotelState>;
}

/// @nodoc
class _$HotelStateCopyWithImpl<$Res, $Val extends HotelState>
    implements $HotelStateCopyWith<$Res> {
  _$HotelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HotelInitialCopyWith<$Res> {
  factory _$$HotelInitialCopyWith(
          _$HotelInitial value, $Res Function(_$HotelInitial) then) =
      __$$HotelInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HotelInitialCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$HotelInitial>
    implements _$$HotelInitialCopyWith<$Res> {
  __$$HotelInitialCopyWithImpl(
      _$HotelInitial _value, $Res Function(_$HotelInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HotelInitial implements HotelInitial {
  const _$HotelInitial();

  @override
  String toString() {
    return 'HotelState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HotelInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHotelState,
    required TResult Function(String message) errorHotelState,
    required TResult Function(HotelList hotels, int minPrice, int maxPrice)
        loadingHotelSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHotelState,
    TResult? Function(String message)? errorHotelState,
    TResult? Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHotelState,
    TResult Function(String message)? errorHotelState,
    TResult Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
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
    required TResult Function(HotelInitial value) initial,
    required TResult Function(LoadingHotelState value) loadingHotelState,
    required TResult Function(ErrorHotelState value) errorHotelState,
    required TResult Function(LoadingHotelSuccess value) loadingHotelSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelInitial value)? initial,
    TResult? Function(LoadingHotelState value)? loadingHotelState,
    TResult? Function(ErrorHotelState value)? errorHotelState,
    TResult? Function(LoadingHotelSuccess value)? loadingHotelSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelInitial value)? initial,
    TResult Function(LoadingHotelState value)? loadingHotelState,
    TResult Function(ErrorHotelState value)? errorHotelState,
    TResult Function(LoadingHotelSuccess value)? loadingHotelSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HotelInitial implements HotelState {
  const factory HotelInitial() = _$HotelInitial;
}

/// @nodoc
abstract class _$$LoadingHotelStateCopyWith<$Res> {
  factory _$$LoadingHotelStateCopyWith(
          _$LoadingHotelState value, $Res Function(_$LoadingHotelState) then) =
      __$$LoadingHotelStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHotelStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$LoadingHotelState>
    implements _$$LoadingHotelStateCopyWith<$Res> {
  __$$LoadingHotelStateCopyWithImpl(
      _$LoadingHotelState _value, $Res Function(_$LoadingHotelState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingHotelState implements LoadingHotelState {
  const _$LoadingHotelState();

  @override
  String toString() {
    return 'HotelState.loadingHotelState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHotelState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHotelState,
    required TResult Function(String message) errorHotelState,
    required TResult Function(HotelList hotels, int minPrice, int maxPrice)
        loadingHotelSuccess,
  }) {
    return loadingHotelState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHotelState,
    TResult? Function(String message)? errorHotelState,
    TResult? Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
  }) {
    return loadingHotelState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHotelState,
    TResult Function(String message)? errorHotelState,
    TResult Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
    required TResult orElse(),
  }) {
    if (loadingHotelState != null) {
      return loadingHotelState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelInitial value) initial,
    required TResult Function(LoadingHotelState value) loadingHotelState,
    required TResult Function(ErrorHotelState value) errorHotelState,
    required TResult Function(LoadingHotelSuccess value) loadingHotelSuccess,
  }) {
    return loadingHotelState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelInitial value)? initial,
    TResult? Function(LoadingHotelState value)? loadingHotelState,
    TResult? Function(ErrorHotelState value)? errorHotelState,
    TResult? Function(LoadingHotelSuccess value)? loadingHotelSuccess,
  }) {
    return loadingHotelState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelInitial value)? initial,
    TResult Function(LoadingHotelState value)? loadingHotelState,
    TResult Function(ErrorHotelState value)? errorHotelState,
    TResult Function(LoadingHotelSuccess value)? loadingHotelSuccess,
    required TResult orElse(),
  }) {
    if (loadingHotelState != null) {
      return loadingHotelState(this);
    }
    return orElse();
  }
}

abstract class LoadingHotelState implements HotelState {
  const factory LoadingHotelState() = _$LoadingHotelState;
}

/// @nodoc
abstract class _$$ErrorHotelStateCopyWith<$Res> {
  factory _$$ErrorHotelStateCopyWith(
          _$ErrorHotelState value, $Res Function(_$ErrorHotelState) then) =
      __$$ErrorHotelStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorHotelStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$ErrorHotelState>
    implements _$$ErrorHotelStateCopyWith<$Res> {
  __$$ErrorHotelStateCopyWithImpl(
      _$ErrorHotelState _value, $Res Function(_$ErrorHotelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorHotelState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorHotelState implements ErrorHotelState {
  const _$ErrorHotelState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HotelState.errorHotelState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHotelState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHotelStateCopyWith<_$ErrorHotelState> get copyWith =>
      __$$ErrorHotelStateCopyWithImpl<_$ErrorHotelState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHotelState,
    required TResult Function(String message) errorHotelState,
    required TResult Function(HotelList hotels, int minPrice, int maxPrice)
        loadingHotelSuccess,
  }) {
    return errorHotelState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHotelState,
    TResult? Function(String message)? errorHotelState,
    TResult? Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
  }) {
    return errorHotelState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHotelState,
    TResult Function(String message)? errorHotelState,
    TResult Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
    required TResult orElse(),
  }) {
    if (errorHotelState != null) {
      return errorHotelState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelInitial value) initial,
    required TResult Function(LoadingHotelState value) loadingHotelState,
    required TResult Function(ErrorHotelState value) errorHotelState,
    required TResult Function(LoadingHotelSuccess value) loadingHotelSuccess,
  }) {
    return errorHotelState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelInitial value)? initial,
    TResult? Function(LoadingHotelState value)? loadingHotelState,
    TResult? Function(ErrorHotelState value)? errorHotelState,
    TResult? Function(LoadingHotelSuccess value)? loadingHotelSuccess,
  }) {
    return errorHotelState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelInitial value)? initial,
    TResult Function(LoadingHotelState value)? loadingHotelState,
    TResult Function(ErrorHotelState value)? errorHotelState,
    TResult Function(LoadingHotelSuccess value)? loadingHotelSuccess,
    required TResult orElse(),
  }) {
    if (errorHotelState != null) {
      return errorHotelState(this);
    }
    return orElse();
  }
}

abstract class ErrorHotelState implements HotelState {
  const factory ErrorHotelState(final String message) = _$ErrorHotelState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorHotelStateCopyWith<_$ErrorHotelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingHotelSuccessCopyWith<$Res> {
  factory _$$LoadingHotelSuccessCopyWith(_$LoadingHotelSuccess value,
          $Res Function(_$LoadingHotelSuccess) then) =
      __$$LoadingHotelSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({HotelList hotels, int minPrice, int maxPrice});

  $HotelListCopyWith<$Res> get hotels;
}

/// @nodoc
class __$$LoadingHotelSuccessCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$LoadingHotelSuccess>
    implements _$$LoadingHotelSuccessCopyWith<$Res> {
  __$$LoadingHotelSuccessCopyWithImpl(
      _$LoadingHotelSuccess _value, $Res Function(_$LoadingHotelSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotels = null,
    Object? minPrice = null,
    Object? maxPrice = null,
  }) {
    return _then(_$LoadingHotelSuccess(
      null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as HotelList,
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

  @override
  @pragma('vm:prefer-inline')
  $HotelListCopyWith<$Res> get hotels {
    return $HotelListCopyWith<$Res>(_value.hotels, (value) {
      return _then(_value.copyWith(hotels: value));
    });
  }
}

/// @nodoc

class _$LoadingHotelSuccess implements LoadingHotelSuccess {
  const _$LoadingHotelSuccess(this.hotels, this.minPrice, this.maxPrice);

  @override
  final HotelList hotels;
  @override
  final int minPrice;
  @override
  final int maxPrice;

  @override
  String toString() {
    return 'HotelState.loadingHotelSuccess(hotels: $hotels, minPrice: $minPrice, maxPrice: $maxPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingHotelSuccess &&
            (identical(other.hotels, hotels) || other.hotels == hotels) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotels, minPrice, maxPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingHotelSuccessCopyWith<_$LoadingHotelSuccess> get copyWith =>
      __$$LoadingHotelSuccessCopyWithImpl<_$LoadingHotelSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingHotelState,
    required TResult Function(String message) errorHotelState,
    required TResult Function(HotelList hotels, int minPrice, int maxPrice)
        loadingHotelSuccess,
  }) {
    return loadingHotelSuccess(hotels, minPrice, maxPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingHotelState,
    TResult? Function(String message)? errorHotelState,
    TResult? Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
  }) {
    return loadingHotelSuccess?.call(hotels, minPrice, maxPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingHotelState,
    TResult Function(String message)? errorHotelState,
    TResult Function(HotelList hotels, int minPrice, int maxPrice)?
        loadingHotelSuccess,
    required TResult orElse(),
  }) {
    if (loadingHotelSuccess != null) {
      return loadingHotelSuccess(hotels, minPrice, maxPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HotelInitial value) initial,
    required TResult Function(LoadingHotelState value) loadingHotelState,
    required TResult Function(ErrorHotelState value) errorHotelState,
    required TResult Function(LoadingHotelSuccess value) loadingHotelSuccess,
  }) {
    return loadingHotelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HotelInitial value)? initial,
    TResult? Function(LoadingHotelState value)? loadingHotelState,
    TResult? Function(ErrorHotelState value)? errorHotelState,
    TResult? Function(LoadingHotelSuccess value)? loadingHotelSuccess,
  }) {
    return loadingHotelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HotelInitial value)? initial,
    TResult Function(LoadingHotelState value)? loadingHotelState,
    TResult Function(ErrorHotelState value)? errorHotelState,
    TResult Function(LoadingHotelSuccess value)? loadingHotelSuccess,
    required TResult orElse(),
  }) {
    if (loadingHotelSuccess != null) {
      return loadingHotelSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadingHotelSuccess implements HotelState {
  const factory LoadingHotelSuccess(
          final HotelList hotels, final int minPrice, final int maxPrice) =
      _$LoadingHotelSuccess;

  HotelList get hotels;
  int get minPrice;
  int get maxPrice;
  @JsonKey(ignore: true)
  _$$LoadingHotelSuccessCopyWith<_$LoadingHotelSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
