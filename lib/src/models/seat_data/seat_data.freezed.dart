// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatCoordinator {
  int get row => throw _privateConstructorUsedError;
  String get column => throw _privateConstructorUsedError;
  String get classseat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatCoordinatorCopyWith<SeatCoordinator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCoordinatorCopyWith<$Res> {
  factory $SeatCoordinatorCopyWith(
          SeatCoordinator value, $Res Function(SeatCoordinator) then) =
      _$SeatCoordinatorCopyWithImpl<$Res, SeatCoordinator>;
  @useResult
  $Res call({int row, String column, String classseat});
}

/// @nodoc
class _$SeatCoordinatorCopyWithImpl<$Res, $Val extends SeatCoordinator>
    implements $SeatCoordinatorCopyWith<$Res> {
  _$SeatCoordinatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? column = null,
    Object? classseat = null,
  }) {
    return _then(_value.copyWith(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as String,
      classseat: null == classseat
          ? _value.classseat
          : classseat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeatCoordinatorCopyWith<$Res>
    implements $SeatCoordinatorCopyWith<$Res> {
  factory _$$_SeatCoordinatorCopyWith(
          _$_SeatCoordinator value, $Res Function(_$_SeatCoordinator) then) =
      __$$_SeatCoordinatorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int row, String column, String classseat});
}

/// @nodoc
class __$$_SeatCoordinatorCopyWithImpl<$Res>
    extends _$SeatCoordinatorCopyWithImpl<$Res, _$_SeatCoordinator>
    implements _$$_SeatCoordinatorCopyWith<$Res> {
  __$$_SeatCoordinatorCopyWithImpl(
      _$_SeatCoordinator _value, $Res Function(_$_SeatCoordinator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? column = null,
    Object? classseat = null,
  }) {
    return _then(_$_SeatCoordinator(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as String,
      classseat: null == classseat
          ? _value.classseat
          : classseat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SeatCoordinator implements _SeatCoordinator {
  const _$_SeatCoordinator(
      {required this.row, required this.column, this.classseat = 'Economy'});

  @override
  final int row;
  @override
  final String column;
  @override
  @JsonKey()
  final String classseat;

  @override
  String toString() {
    return 'SeatCoordinator(row: $row, column: $column, classseat: $classseat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeatCoordinator &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.classseat, classseat) ||
                other.classseat == classseat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, column, classseat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeatCoordinatorCopyWith<_$_SeatCoordinator> get copyWith =>
      __$$_SeatCoordinatorCopyWithImpl<_$_SeatCoordinator>(this, _$identity);
}

abstract class _SeatCoordinator implements SeatCoordinator {
  const factory _SeatCoordinator(
      {required final int row,
      required final String column,
      final String classseat}) = _$_SeatCoordinator;

  @override
  int get row;
  @override
  String get column;
  @override
  String get classseat;
  @override
  @JsonKey(ignore: true)
  _$$_SeatCoordinatorCopyWith<_$_SeatCoordinator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeatData {
  SeatCoordinator get seat => throw _privateConstructorUsedError;
  set seat(SeatCoordinator value) => throw _privateConstructorUsedError;
  bool get isBooked => throw _privateConstructorUsedError;
  set isBooked(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatDataCopyWith<SeatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatDataCopyWith<$Res> {
  factory $SeatDataCopyWith(SeatData value, $Res Function(SeatData) then) =
      _$SeatDataCopyWithImpl<$Res, SeatData>;
  @useResult
  $Res call({SeatCoordinator seat, bool isBooked});

  $SeatCoordinatorCopyWith<$Res> get seat;
}

/// @nodoc
class _$SeatDataCopyWithImpl<$Res, $Val extends SeatData>
    implements $SeatDataCopyWith<$Res> {
  _$SeatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seat = null,
    Object? isBooked = null,
  }) {
    return _then(_value.copyWith(
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as SeatCoordinator,
      isBooked: null == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeatCoordinatorCopyWith<$Res> get seat {
    return $SeatCoordinatorCopyWith<$Res>(_value.seat, (value) {
      return _then(_value.copyWith(seat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeatDataCopyWith<$Res> implements $SeatDataCopyWith<$Res> {
  factory _$$_SeatDataCopyWith(
          _$_SeatData value, $Res Function(_$_SeatData) then) =
      __$$_SeatDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeatCoordinator seat, bool isBooked});

  @override
  $SeatCoordinatorCopyWith<$Res> get seat;
}

/// @nodoc
class __$$_SeatDataCopyWithImpl<$Res>
    extends _$SeatDataCopyWithImpl<$Res, _$_SeatData>
    implements _$$_SeatDataCopyWith<$Res> {
  __$$_SeatDataCopyWithImpl(
      _$_SeatData _value, $Res Function(_$_SeatData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seat = null,
    Object? isBooked = null,
  }) {
    return _then(_$_SeatData(
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as SeatCoordinator,
      isBooked: null == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SeatData implements _SeatData {
  _$_SeatData({required this.seat, required this.isBooked});

  @override
  SeatCoordinator seat;
  @override
  bool isBooked;

  @override
  String toString() {
    return 'SeatData(seat: $seat, isBooked: $isBooked)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeatDataCopyWith<_$_SeatData> get copyWith =>
      __$$_SeatDataCopyWithImpl<_$_SeatData>(this, _$identity);
}

abstract class _SeatData implements SeatData {
  factory _SeatData({required SeatCoordinator seat, required bool isBooked}) =
      _$_SeatData;

  @override
  SeatCoordinator get seat;
  set seat(SeatCoordinator value);
  @override
  bool get isBooked;
  set isBooked(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_SeatDataCopyWith<_$_SeatData> get copyWith =>
      throw _privateConstructorUsedError;
}
