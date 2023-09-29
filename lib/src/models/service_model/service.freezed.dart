// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  set icon(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
  $Res call({String id, String name, String icon});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceModelCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$_ServiceModelCopyWith(
          _$_ServiceModel value, $Res Function(_$_ServiceModel) then) =
      __$$_ServiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String icon});
}

/// @nodoc
class __$$_ServiceModelCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res, _$_ServiceModel>
    implements _$$_ServiceModelCopyWith<$Res> {
  __$$_ServiceModelCopyWithImpl(
      _$_ServiceModel _value, $Res Function(_$_ServiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$_ServiceModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServiceModel implements _ServiceModel {
  _$_ServiceModel({required this.id, this.name = "", this.icon = ""});

  @override
  String id;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String icon;

  @override
  String toString() {
    return 'ServiceModel(id: $id, name: $name, icon: $icon)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      __$$_ServiceModelCopyWithImpl<_$_ServiceModel>(this, _$identity);
}

abstract class _ServiceModel implements ServiceModel {
  factory _ServiceModel({required String id, String name, String icon}) =
      _$_ServiceModel;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get icon;
  set icon(String value);
  @override
  @JsonKey(ignore: true)
  _$$_ServiceModelCopyWith<_$_ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceList {
  List<ServiceModel> get services => throw _privateConstructorUsedError;
  set services(List<ServiceModel> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceListCopyWith<ServiceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListCopyWith<$Res> {
  factory $ServiceListCopyWith(
          ServiceList value, $Res Function(ServiceList) then) =
      _$ServiceListCopyWithImpl<$Res, ServiceList>;
  @useResult
  $Res call({List<ServiceModel> services});
}

/// @nodoc
class _$ServiceListCopyWithImpl<$Res, $Val extends ServiceList>
    implements $ServiceListCopyWith<$Res> {
  _$ServiceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServiceListCopyWith<$Res>
    implements $ServiceListCopyWith<$Res> {
  factory _$$_ServiceListCopyWith(
          _$_ServiceList value, $Res Function(_$_ServiceList) then) =
      __$$_ServiceListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ServiceModel> services});
}

/// @nodoc
class __$$_ServiceListCopyWithImpl<$Res>
    extends _$ServiceListCopyWithImpl<$Res, _$_ServiceList>
    implements _$$_ServiceListCopyWith<$Res> {
  __$$_ServiceListCopyWithImpl(
      _$_ServiceList _value, $Res Function(_$_ServiceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? services = null,
  }) {
    return _then(_$_ServiceList(
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc

class _$_ServiceList implements _ServiceList {
  _$_ServiceList({this.services = const []});

  @override
  @JsonKey()
  List<ServiceModel> services;

  @override
  String toString() {
    return 'ServiceList(services: $services)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceListCopyWith<_$_ServiceList> get copyWith =>
      __$$_ServiceListCopyWithImpl<_$_ServiceList>(this, _$identity);
}

abstract class _ServiceList implements ServiceList {
  factory _ServiceList({List<ServiceModel> services}) = _$_ServiceList;

  @override
  List<ServiceModel> get services;
  set services(List<ServiceModel> value);
  @override
  @JsonKey(ignore: true)
  _$$_ServiceListCopyWith<_$_ServiceList> get copyWith =>
      throw _privateConstructorUsedError;
}
