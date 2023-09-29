// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkitem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckItem {
  String get icon => throw _privateConstructorUsedError;
  set icon(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  set isAvailable(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckItemCopyWith<CheckItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckItemCopyWith<$Res> {
  factory $CheckItemCopyWith(CheckItem value, $Res Function(CheckItem) then) =
      _$CheckItemCopyWithImpl<$Res, CheckItem>;
  @useResult
  $Res call({String icon, String name, bool isAvailable});
}

/// @nodoc
class _$CheckItemCopyWithImpl<$Res, $Val extends CheckItem>
    implements $CheckItemCopyWith<$Res> {
  _$CheckItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckItemCopyWith<$Res> implements $CheckItemCopyWith<$Res> {
  factory _$$_CheckItemCopyWith(
          _$_CheckItem value, $Res Function(_$_CheckItem) then) =
      __$$_CheckItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, String name, bool isAvailable});
}

/// @nodoc
class __$$_CheckItemCopyWithImpl<$Res>
    extends _$CheckItemCopyWithImpl<$Res, _$_CheckItem>
    implements _$$_CheckItemCopyWith<$Res> {
  __$$_CheckItemCopyWithImpl(
      _$_CheckItem _value, $Res Function(_$_CheckItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? name = null,
    Object? isAvailable = null,
  }) {
    return _then(_$_CheckItem(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckItem implements _CheckItem {
  _$_CheckItem({this.icon = '', this.name = '', this.isAvailable = false});

  @override
  @JsonKey()
  String icon;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  bool isAvailable;

  @override
  String toString() {
    return 'CheckItem(icon: $icon, name: $name, isAvailable: $isAvailable)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckItemCopyWith<_$_CheckItem> get copyWith =>
      __$$_CheckItemCopyWithImpl<_$_CheckItem>(this, _$identity);
}

abstract class _CheckItem implements CheckItem {
  factory _CheckItem({String icon, String name, bool isAvailable}) =
      _$_CheckItem;

  @override
  String get icon;
  set icon(String value);
  @override
  String get name;
  set name(String value);
  @override
  bool get isAvailable;
  set isAvailable(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_CheckItemCopyWith<_$_CheckItem> get copyWith =>
      throw _privateConstructorUsedError;
}
