// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) roomLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? roomLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? roomLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomLoadingEvent value) roomLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomLoadingEvent value)? roomLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomLoadingEvent value)? roomLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomEventCopyWith<RoomEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEventCopyWith<$Res> {
  factory $RoomEventCopyWith(RoomEvent value, $Res Function(RoomEvent) then) =
      _$RoomEventCopyWithImpl<$Res, RoomEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RoomEventCopyWithImpl<$Res, $Val extends RoomEvent>
    implements $RoomEventCopyWith<$Res> {
  _$RoomEventCopyWithImpl(this._value, this._then);

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
abstract class _$$RoomLoadingEventCopyWith<$Res>
    implements $RoomEventCopyWith<$Res> {
  factory _$$RoomLoadingEventCopyWith(
          _$RoomLoadingEvent value, $Res Function(_$RoomLoadingEvent) then) =
      __$$RoomLoadingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RoomLoadingEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomLoadingEvent>
    implements _$$RoomLoadingEventCopyWith<$Res> {
  __$$RoomLoadingEventCopyWithImpl(
      _$RoomLoadingEvent _value, $Res Function(_$RoomLoadingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RoomLoadingEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomLoadingEvent implements RoomLoadingEvent {
  const _$RoomLoadingEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'RoomEvent.roomLoadingEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomLoadingEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomLoadingEventCopyWith<_$RoomLoadingEvent> get copyWith =>
      __$$RoomLoadingEventCopyWithImpl<_$RoomLoadingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) roomLoadingEvent,
  }) {
    return roomLoadingEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? roomLoadingEvent,
  }) {
    return roomLoadingEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? roomLoadingEvent,
    required TResult orElse(),
  }) {
    if (roomLoadingEvent != null) {
      return roomLoadingEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomLoadingEvent value) roomLoadingEvent,
  }) {
    return roomLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomLoadingEvent value)? roomLoadingEvent,
  }) {
    return roomLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomLoadingEvent value)? roomLoadingEvent,
    required TResult orElse(),
  }) {
    if (roomLoadingEvent != null) {
      return roomLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class RoomLoadingEvent implements RoomEvent {
  const factory RoomLoadingEvent(final String id) = _$RoomLoadingEvent;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$RoomLoadingEventCopyWith<_$RoomLoadingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomList rooms) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomList rooms)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomList rooms)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomError value) error,
    required TResult Function(RoomLoadingSuccess value) loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomError value)? error,
    TResult? Function(RoomLoadingSuccess value)? loadingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomError value)? error,
    TResult Function(RoomLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomInitialCopyWith<$Res> {
  factory _$$RoomInitialCopyWith(
          _$RoomInitial value, $Res Function(_$RoomInitial) then) =
      __$$RoomInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomInitialCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomInitial>
    implements _$$RoomInitialCopyWith<$Res> {
  __$$RoomInitialCopyWithImpl(
      _$RoomInitial _value, $Res Function(_$RoomInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomInitial implements RoomInitial {
  const _$RoomInitial();

  @override
  String toString() {
    return 'RoomState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomList rooms) loadingSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomList rooms)? loadingSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomList rooms)? loadingSuccess,
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
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomError value) error,
    required TResult Function(RoomLoadingSuccess value) loadingSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomError value)? error,
    TResult? Function(RoomLoadingSuccess value)? loadingSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomError value)? error,
    TResult Function(RoomLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RoomInitial implements RoomState {
  const factory RoomInitial() = _$RoomInitial;
}

/// @nodoc
abstract class _$$RoomLoadingCopyWith<$Res> {
  factory _$$RoomLoadingCopyWith(
          _$RoomLoading value, $Res Function(_$RoomLoading) then) =
      __$$RoomLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomLoadingCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomLoading>
    implements _$$RoomLoadingCopyWith<$Res> {
  __$$RoomLoadingCopyWithImpl(
      _$RoomLoading _value, $Res Function(_$RoomLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomLoading implements RoomLoading {
  const _$RoomLoading();

  @override
  String toString() {
    return 'RoomState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomList rooms) loadingSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomList rooms)? loadingSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomList rooms)? loadingSuccess,
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
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomError value) error,
    required TResult Function(RoomLoadingSuccess value) loadingSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomError value)? error,
    TResult? Function(RoomLoadingSuccess value)? loadingSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomError value)? error,
    TResult Function(RoomLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RoomLoading implements RoomState {
  const factory RoomLoading() = _$RoomLoading;
}

/// @nodoc
abstract class _$$RoomErrorCopyWith<$Res> {
  factory _$$RoomErrorCopyWith(
          _$RoomError value, $Res Function(_$RoomError) then) =
      __$$RoomErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RoomErrorCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomError>
    implements _$$RoomErrorCopyWith<$Res> {
  __$$RoomErrorCopyWithImpl(
      _$RoomError _value, $Res Function(_$RoomError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RoomError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomError implements RoomError {
  const _$RoomError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RoomState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomErrorCopyWith<_$RoomError> get copyWith =>
      __$$RoomErrorCopyWithImpl<_$RoomError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomList rooms) loadingSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomList rooms)? loadingSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomList rooms)? loadingSuccess,
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
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomError value) error,
    required TResult Function(RoomLoadingSuccess value) loadingSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomError value)? error,
    TResult? Function(RoomLoadingSuccess value)? loadingSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomError value)? error,
    TResult Function(RoomLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RoomError implements RoomState {
  const factory RoomError(final String message) = _$RoomError;

  String get message;
  @JsonKey(ignore: true)
  _$$RoomErrorCopyWith<_$RoomError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomLoadingSuccessCopyWith<$Res> {
  factory _$$RoomLoadingSuccessCopyWith(_$RoomLoadingSuccess value,
          $Res Function(_$RoomLoadingSuccess) then) =
      __$$RoomLoadingSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({RoomList rooms});

  $RoomListCopyWith<$Res> get rooms;
}

/// @nodoc
class __$$RoomLoadingSuccessCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomLoadingSuccess>
    implements _$$RoomLoadingSuccessCopyWith<$Res> {
  __$$RoomLoadingSuccessCopyWithImpl(
      _$RoomLoadingSuccess _value, $Res Function(_$RoomLoadingSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$RoomLoadingSuccess(
      null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomList,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomListCopyWith<$Res> get rooms {
    return $RoomListCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value));
    });
  }
}

/// @nodoc

class _$RoomLoadingSuccess implements RoomLoadingSuccess {
  const _$RoomLoadingSuccess(this.rooms);

  @override
  final RoomList rooms;

  @override
  String toString() {
    return 'RoomState.loadingSuccess(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomLoadingSuccess &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomLoadingSuccessCopyWith<_$RoomLoadingSuccess> get copyWith =>
      __$$RoomLoadingSuccessCopyWithImpl<_$RoomLoadingSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RoomList rooms) loadingSuccess,
  }) {
    return loadingSuccess(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RoomList rooms)? loadingSuccess,
  }) {
    return loadingSuccess?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RoomList rooms)? loadingSuccess,
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
    required TResult Function(RoomInitial value) initial,
    required TResult Function(RoomLoading value) loading,
    required TResult Function(RoomError value) error,
    required TResult Function(RoomLoadingSuccess value) loadingSuccess,
  }) {
    return loadingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomInitial value)? initial,
    TResult? Function(RoomLoading value)? loading,
    TResult? Function(RoomError value)? error,
    TResult? Function(RoomLoadingSuccess value)? loadingSuccess,
  }) {
    return loadingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomInitial value)? initial,
    TResult Function(RoomLoading value)? loading,
    TResult Function(RoomError value)? error,
    TResult Function(RoomLoadingSuccess value)? loadingSuccess,
    required TResult orElse(),
  }) {
    if (loadingSuccess != null) {
      return loadingSuccess(this);
    }
    return orElse();
  }
}

abstract class RoomLoadingSuccess implements RoomState {
  const factory RoomLoadingSuccess(final RoomList rooms) = _$RoomLoadingSuccess;

  RoomList get rooms;
  @JsonKey(ignore: true)
  _$$RoomLoadingSuccessCopyWith<_$RoomLoadingSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
