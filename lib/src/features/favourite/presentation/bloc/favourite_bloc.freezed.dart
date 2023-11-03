// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingFavouriteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingFavouriteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingFavouriteEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFavouriteEvent value)
        loadingFavouriteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingFavouriteEvent value)? loadingFavouriteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFavouriteEvent value)? loadingFavouriteEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteEventCopyWith<$Res> {
  factory $FavouriteEventCopyWith(
          FavouriteEvent value, $Res Function(FavouriteEvent) then) =
      _$FavouriteEventCopyWithImpl<$Res, FavouriteEvent>;
}

/// @nodoc
class _$FavouriteEventCopyWithImpl<$Res, $Val extends FavouriteEvent>
    implements $FavouriteEventCopyWith<$Res> {
  _$FavouriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingFavouriteEventCopyWith<$Res> {
  factory _$$LoadingFavouriteEventCopyWith(_$LoadingFavouriteEvent value,
          $Res Function(_$LoadingFavouriteEvent) then) =
      __$$LoadingFavouriteEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingFavouriteEventCopyWithImpl<$Res>
    extends _$FavouriteEventCopyWithImpl<$Res, _$LoadingFavouriteEvent>
    implements _$$LoadingFavouriteEventCopyWith<$Res> {
  __$$LoadingFavouriteEventCopyWithImpl(_$LoadingFavouriteEvent _value,
      $Res Function(_$LoadingFavouriteEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingFavouriteEvent implements LoadingFavouriteEvent {
  const _$LoadingFavouriteEvent();

  @override
  String toString() {
    return 'FavouriteEvent.loadingFavouriteEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingFavouriteEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingFavouriteEvent,
  }) {
    return loadingFavouriteEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingFavouriteEvent,
  }) {
    return loadingFavouriteEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingFavouriteEvent,
    required TResult orElse(),
  }) {
    if (loadingFavouriteEvent != null) {
      return loadingFavouriteEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingFavouriteEvent value)
        loadingFavouriteEvent,
  }) {
    return loadingFavouriteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingFavouriteEvent value)? loadingFavouriteEvent,
  }) {
    return loadingFavouriteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingFavouriteEvent value)? loadingFavouriteEvent,
    required TResult orElse(),
  }) {
    if (loadingFavouriteEvent != null) {
      return loadingFavouriteEvent(this);
    }
    return orElse();
  }
}

abstract class LoadingFavouriteEvent implements FavouriteEvent {
  const factory LoadingFavouriteEvent() = _$LoadingFavouriteEvent;
}

/// @nodoc
mixin _$FavouriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PlaceList places) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PlaceList places)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PlaceList places)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouriteInitial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
    required TResult Function(FavouriteLoadingSuccess value) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteInitial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
    TResult? Function(FavouriteLoadingSuccess value)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteInitial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    TResult Function(FavouriteLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res, FavouriteState>;
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res, $Val extends FavouriteState>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavouriteInitialCopyWith<$Res> {
  factory _$$FavouriteInitialCopyWith(
          _$FavouriteInitial value, $Res Function(_$FavouriteInitial) then) =
      __$$FavouriteInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavouriteInitialCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavouriteInitial>
    implements _$$FavouriteInitialCopyWith<$Res> {
  __$$FavouriteInitialCopyWithImpl(
      _$FavouriteInitial _value, $Res Function(_$FavouriteInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavouriteInitial implements FavouriteInitial {
  const _$FavouriteInitial();

  @override
  String toString() {
    return 'FavouriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavouriteInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PlaceList places) loadingSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PlaceList places)? loadingSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PlaceList places)? loadingSuccess,
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
    required TResult Function(FavouriteInitial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
    required TResult Function(FavouriteLoadingSuccess value) loadingSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteInitial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
    TResult? Function(FavouriteLoadingSuccess value)? loadingSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteInitial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    TResult Function(FavouriteLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FavouriteInitial implements FavouriteState {
  const factory FavouriteInitial() = _$FavouriteInitial;
}

/// @nodoc
abstract class _$$FavouriteLoadingCopyWith<$Res> {
  factory _$$FavouriteLoadingCopyWith(
          _$FavouriteLoading value, $Res Function(_$FavouriteLoading) then) =
      __$$FavouriteLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavouriteLoadingCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavouriteLoading>
    implements _$$FavouriteLoadingCopyWith<$Res> {
  __$$FavouriteLoadingCopyWithImpl(
      _$FavouriteLoading _value, $Res Function(_$FavouriteLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavouriteLoading implements FavouriteLoading {
  const _$FavouriteLoading();

  @override
  String toString() {
    return 'FavouriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavouriteLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PlaceList places) loadingSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PlaceList places)? loadingSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PlaceList places)? loadingSuccess,
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
    required TResult Function(FavouriteInitial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
    required TResult Function(FavouriteLoadingSuccess value) loadingSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteInitial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
    TResult? Function(FavouriteLoadingSuccess value)? loadingSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteInitial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    TResult Function(FavouriteLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavouriteLoading implements FavouriteState {
  const factory FavouriteLoading() = _$FavouriteLoading;
}

/// @nodoc
abstract class _$$FavouriteErrorCopyWith<$Res> {
  factory _$$FavouriteErrorCopyWith(
          _$FavouriteError value, $Res Function(_$FavouriteError) then) =
      __$$FavouriteErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FavouriteErrorCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavouriteError>
    implements _$$FavouriteErrorCopyWith<$Res> {
  __$$FavouriteErrorCopyWithImpl(
      _$FavouriteError _value, $Res Function(_$FavouriteError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FavouriteError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavouriteError implements FavouriteError {
  const _$FavouriteError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FavouriteState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteErrorCopyWith<_$FavouriteError> get copyWith =>
      __$$FavouriteErrorCopyWithImpl<_$FavouriteError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PlaceList places) loadingSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PlaceList places)? loadingSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PlaceList places)? loadingSuccess,
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
    required TResult Function(FavouriteInitial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
    required TResult Function(FavouriteLoadingSuccess value) loadingSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteInitial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
    TResult? Function(FavouriteLoadingSuccess value)? loadingSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteInitial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    TResult Function(FavouriteLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavouriteError implements FavouriteState {
  const factory FavouriteError(final String message) = _$FavouriteError;

  String get message;
  @JsonKey(ignore: true)
  _$$FavouriteErrorCopyWith<_$FavouriteError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavouriteLoadingSuccessCopyWith<$Res> {
  factory _$$FavouriteLoadingSuccessCopyWith(_$FavouriteLoadingSuccess value,
          $Res Function(_$FavouriteLoadingSuccess) then) =
      __$$FavouriteLoadingSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceList places});
}

/// @nodoc
class __$$FavouriteLoadingSuccessCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$FavouriteLoadingSuccess>
    implements _$$FavouriteLoadingSuccessCopyWith<$Res> {
  __$$FavouriteLoadingSuccessCopyWithImpl(_$FavouriteLoadingSuccess _value,
      $Res Function(_$FavouriteLoadingSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$FavouriteLoadingSuccess(
      null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as PlaceList,
    ));
  }
}

/// @nodoc

class _$FavouriteLoadingSuccess implements FavouriteLoadingSuccess {
  const _$FavouriteLoadingSuccess(this.places);

  @override
  final PlaceList places;

  @override
  String toString() {
    return 'FavouriteState.loadingSuccess(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteLoadingSuccess &&
            (identical(other.places, places) || other.places == places));
  }

  @override
  int get hashCode => Object.hash(runtimeType, places);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteLoadingSuccessCopyWith<_$FavouriteLoadingSuccess> get copyWith =>
      __$$FavouriteLoadingSuccessCopyWithImpl<_$FavouriteLoadingSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(PlaceList places) loadingSuccess,
  }) {
    return loadingSuccess(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(PlaceList places)? loadingSuccess,
  }) {
    return loadingSuccess?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(PlaceList places)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavouriteInitial value) initial,
    required TResult Function(FavouriteLoading value) loading,
    required TResult Function(FavouriteError value) error,
    required TResult Function(FavouriteLoadingSuccess value) loadingSuccess,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavouriteInitial value)? initial,
    TResult? Function(FavouriteLoading value)? loading,
    TResult? Function(FavouriteError value)? error,
    TResult? Function(FavouriteLoadingSuccess value)? loadingSuccess,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavouriteInitial value)? initial,
    TResult Function(FavouriteLoading value)? loading,
    TResult Function(FavouriteError value)? error,
    TResult Function(FavouriteLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class FavouriteLoadingSuccess implements FavouriteState {
  const factory FavouriteLoadingSuccess(final PlaceList places) =
      _$FavouriteLoadingSuccess;

  PlaceList get places;
  @JsonKey(ignore: true)
  _$$FavouriteLoadingSuccessCopyWith<_$FavouriteLoadingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
