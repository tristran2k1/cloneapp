// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TripInfo {
  String get from => throw _privateConstructorUsedError;
  set from(String value) => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  set to(String value) => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  set date(DateTime? value) => throw _privateConstructorUsedError;
  int get passengers => throw _privateConstructorUsedError;
  set passengers(int value) => throw _privateConstructorUsedError;
  String get classSeat => throw _privateConstructorUsedError;
  set classSeat(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripInfoCopyWith<TripInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripInfoCopyWith<$Res> {
  factory $TripInfoCopyWith(TripInfo value, $Res Function(TripInfo) then) =
      _$TripInfoCopyWithImpl<$Res, TripInfo>;
  @useResult
  $Res call(
      {String from,
      String to,
      DateTime? date,
      int passengers,
      String classSeat});
}

/// @nodoc
class _$TripInfoCopyWithImpl<$Res, $Val extends TripInfo>
    implements $TripInfoCopyWith<$Res> {
  _$TripInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? date = freezed,
    Object? passengers = null,
    Object? classSeat = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      passengers: null == passengers
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as int,
      classSeat: null == classSeat
          ? _value.classSeat
          : classSeat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripInfoCopyWith<$Res> implements $TripInfoCopyWith<$Res> {
  factory _$$_TripInfoCopyWith(
          _$_TripInfo value, $Res Function(_$_TripInfo) then) =
      __$$_TripInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String from,
      String to,
      DateTime? date,
      int passengers,
      String classSeat});
}

/// @nodoc
class __$$_TripInfoCopyWithImpl<$Res>
    extends _$TripInfoCopyWithImpl<$Res, _$_TripInfo>
    implements _$$_TripInfoCopyWith<$Res> {
  __$$_TripInfoCopyWithImpl(
      _$_TripInfo _value, $Res Function(_$_TripInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? date = freezed,
    Object? passengers = null,
    Object? classSeat = null,
  }) {
    return _then(_$_TripInfo(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      passengers: null == passengers
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as int,
      classSeat: null == classSeat
          ? _value.classSeat
          : classSeat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TripInfo implements _TripInfo {
  _$_TripInfo(
      {this.from = "",
      this.to = "",
      this.date,
      this.passengers = 1,
      this.classSeat = "Economy"});

  @override
  @JsonKey()
  String from;
  @override
  @JsonKey()
  String to;
  @override
  DateTime? date;
  @override
  @JsonKey()
  int passengers;
  @override
  @JsonKey()
  String classSeat;

  @override
  String toString() {
    return 'TripInfo(from: $from, to: $to, date: $date, passengers: $passengers, classSeat: $classSeat)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripInfoCopyWith<_$_TripInfo> get copyWith =>
      __$$_TripInfoCopyWithImpl<_$_TripInfo>(this, _$identity);
}

abstract class _TripInfo implements TripInfo {
  factory _TripInfo(
      {String from,
      String to,
      DateTime? date,
      int passengers,
      String classSeat}) = _$_TripInfo;

  @override
  String get from;
  set from(String value);
  @override
  String get to;
  set to(String value);
  @override
  DateTime? get date;
  set date(DateTime? value);
  @override
  int get passengers;
  set passengers(int value);
  @override
  String get classSeat;
  set classSeat(String value);
  @override
  @JsonKey(ignore: true)
  _$$_TripInfoCopyWith<_$_TripInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
