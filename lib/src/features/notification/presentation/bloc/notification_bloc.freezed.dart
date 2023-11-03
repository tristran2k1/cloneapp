// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshData,
    required TResult Function(NotificationModel data) updateData,
    required TResult Function(NotificationModel data) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
    TResult? Function(NotificationModel data)? updateData,
    TResult? Function(NotificationModel data)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    TResult Function(NotificationModel data)? updateData,
    TResult Function(NotificationModel data)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationEventRefreshData value) refreshData,
    required TResult Function(NotificationEventAddData value) updateData,
    required TResult Function(NotificationEventRemove value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationEventRefreshData value)? refreshData,
    TResult? Function(NotificationEventAddData value)? updateData,
    TResult? Function(NotificationEventRemove value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationEventRefreshData value)? refreshData,
    TResult Function(NotificationEventAddData value)? updateData,
    TResult Function(NotificationEventRemove value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotificationEventRefreshDataCopyWith<$Res> {
  factory _$$NotificationEventRefreshDataCopyWith(
          _$NotificationEventRefreshData value,
          $Res Function(_$NotificationEventRefreshData) then) =
      __$$NotificationEventRefreshDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationEventRefreshDataCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$NotificationEventRefreshData>
    implements _$$NotificationEventRefreshDataCopyWith<$Res> {
  __$$NotificationEventRefreshDataCopyWithImpl(
      _$NotificationEventRefreshData _value,
      $Res Function(_$NotificationEventRefreshData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotificationEventRefreshData implements NotificationEventRefreshData {
  const _$NotificationEventRefreshData();

  @override
  String toString() {
    return 'NotificationEvent.refreshData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEventRefreshData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshData,
    required TResult Function(NotificationModel data) updateData,
    required TResult Function(NotificationModel data) remove,
  }) {
    return refreshData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
    TResult? Function(NotificationModel data)? updateData,
    TResult? Function(NotificationModel data)? remove,
  }) {
    return refreshData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    TResult Function(NotificationModel data)? updateData,
    TResult Function(NotificationModel data)? remove,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationEventRefreshData value) refreshData,
    required TResult Function(NotificationEventAddData value) updateData,
    required TResult Function(NotificationEventRemove value) remove,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationEventRefreshData value)? refreshData,
    TResult? Function(NotificationEventAddData value)? updateData,
    TResult? Function(NotificationEventRemove value)? remove,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationEventRefreshData value)? refreshData,
    TResult Function(NotificationEventAddData value)? updateData,
    TResult Function(NotificationEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class NotificationEventRefreshData implements NotificationEvent {
  const factory NotificationEventRefreshData() = _$NotificationEventRefreshData;
}

/// @nodoc
abstract class _$$NotificationEventAddDataCopyWith<$Res> {
  factory _$$NotificationEventAddDataCopyWith(_$NotificationEventAddData value,
          $Res Function(_$NotificationEventAddData) then) =
      __$$NotificationEventAddDataCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationModel data});

  $NotificationModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$NotificationEventAddDataCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$NotificationEventAddData>
    implements _$$NotificationEventAddDataCopyWith<$Res> {
  __$$NotificationEventAddDataCopyWithImpl(_$NotificationEventAddData _value,
      $Res Function(_$NotificationEventAddData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NotificationEventAddData(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<$Res> get data {
    return $NotificationModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$NotificationEventAddData implements NotificationEventAddData {
  const _$NotificationEventAddData(this.data);

  @override
  final NotificationModel data;

  @override
  String toString() {
    return 'NotificationEvent.updateData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEventAddData &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationEventAddDataCopyWith<_$NotificationEventAddData>
      get copyWith =>
          __$$NotificationEventAddDataCopyWithImpl<_$NotificationEventAddData>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshData,
    required TResult Function(NotificationModel data) updateData,
    required TResult Function(NotificationModel data) remove,
  }) {
    return updateData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
    TResult? Function(NotificationModel data)? updateData,
    TResult? Function(NotificationModel data)? remove,
  }) {
    return updateData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    TResult Function(NotificationModel data)? updateData,
    TResult Function(NotificationModel data)? remove,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationEventRefreshData value) refreshData,
    required TResult Function(NotificationEventAddData value) updateData,
    required TResult Function(NotificationEventRemove value) remove,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationEventRefreshData value)? refreshData,
    TResult? Function(NotificationEventAddData value)? updateData,
    TResult? Function(NotificationEventRemove value)? remove,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationEventRefreshData value)? refreshData,
    TResult Function(NotificationEventAddData value)? updateData,
    TResult Function(NotificationEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class NotificationEventAddData implements NotificationEvent {
  const factory NotificationEventAddData(final NotificationModel data) =
      _$NotificationEventAddData;

  NotificationModel get data;
  @JsonKey(ignore: true)
  _$$NotificationEventAddDataCopyWith<_$NotificationEventAddData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationEventRemoveCopyWith<$Res> {
  factory _$$NotificationEventRemoveCopyWith(_$NotificationEventRemove value,
          $Res Function(_$NotificationEventRemove) then) =
      __$$NotificationEventRemoveCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationModel data});

  $NotificationModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$NotificationEventRemoveCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$NotificationEventRemove>
    implements _$$NotificationEventRemoveCopyWith<$Res> {
  __$$NotificationEventRemoveCopyWithImpl(_$NotificationEventRemove _value,
      $Res Function(_$NotificationEventRemove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NotificationEventRemove(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<$Res> get data {
    return $NotificationModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$NotificationEventRemove implements NotificationEventRemove {
  const _$NotificationEventRemove(this.data);

  @override
  final NotificationModel data;

  @override
  String toString() {
    return 'NotificationEvent.remove(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEventRemove &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationEventRemoveCopyWith<_$NotificationEventRemove> get copyWith =>
      __$$NotificationEventRemoveCopyWithImpl<_$NotificationEventRemove>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshData,
    required TResult Function(NotificationModel data) updateData,
    required TResult Function(NotificationModel data) remove,
  }) {
    return remove(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshData,
    TResult? Function(NotificationModel data)? updateData,
    TResult? Function(NotificationModel data)? remove,
  }) {
    return remove?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshData,
    TResult Function(NotificationModel data)? updateData,
    TResult Function(NotificationModel data)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotificationEventRefreshData value) refreshData,
    required TResult Function(NotificationEventAddData value) updateData,
    required TResult Function(NotificationEventRemove value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotificationEventRefreshData value)? refreshData,
    TResult? Function(NotificationEventAddData value)? updateData,
    TResult? Function(NotificationEventRemove value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotificationEventRefreshData value)? refreshData,
    TResult Function(NotificationEventAddData value)? updateData,
    TResult Function(NotificationEventRemove value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class NotificationEventRemove implements NotificationEvent {
  const factory NotificationEventRemove(final NotificationModel data) =
      _$NotificationEventRemove;

  NotificationModel get data;
  @JsonKey(ignore: true)
  _$$NotificationEventRemoveCopyWith<_$NotificationEventRemove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$_NotificationStateCopyWith(_$_NotificationState value,
          $Res Function(_$_NotificationState) then) =
      __$$_NotificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class __$$_NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_NotificationState>
    implements _$$_NotificationStateCopyWith<$Res> {
  __$$_NotificationStateCopyWithImpl(
      _$_NotificationState _value, $Res Function(_$_NotificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$_NotificationState(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  const _$_NotificationState(
      {required final List<NotificationModel> notifications})
      : _notifications = notifications;

  final List<NotificationModel> _notifications;
  @override
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationState(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      __$$_NotificationStateCopyWithImpl<_$_NotificationState>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
          {required final List<NotificationModel> notifications}) =
      _$_NotificationState;

  @override
  List<NotificationModel> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
