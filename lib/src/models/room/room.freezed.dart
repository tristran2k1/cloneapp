// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get hotel => throw _privateConstructorUsedError;
  set hotel(String value) => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  set image(String value) => throw _privateConstructorUsedError;
  int get maxGuest => throw _privateConstructorUsedError;
  set maxGuest(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  set price(int value) => throw _privateConstructorUsedError;
  ServiceList? get services => throw _privateConstructorUsedError;
  set services(ServiceList? value) => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  set total(int value) => throw _privateConstructorUsedError;
  String get typePrice => throw _privateConstructorUsedError;
  set typePrice(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res, RoomModel>;
  @useResult
  $Res call(
      {String id,
      String hotel,
      String image,
      int maxGuest,
      String name,
      int price,
      ServiceList? services,
      int total,
      String typePrice});

  $ServiceListCopyWith<$Res>? get services;
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res, $Val extends RoomModel>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotel = null,
    Object? image = null,
    Object? maxGuest = null,
    Object? name = null,
    Object? price = null,
    Object? services = freezed,
    Object? total = null,
    Object? typePrice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      maxGuest: null == maxGuest
          ? _value.maxGuest
          : maxGuest // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as ServiceList?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      typePrice: null == typePrice
          ? _value.typePrice
          : typePrice // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceListCopyWith<$Res>? get services {
    if (_value.services == null) {
      return null;
    }

    return $ServiceListCopyWith<$Res>(_value.services!, (value) {
      return _then(_value.copyWith(services: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$$_RoomModelCopyWith(
          _$_RoomModel value, $Res Function(_$_RoomModel) then) =
      __$$_RoomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String hotel,
      String image,
      int maxGuest,
      String name,
      int price,
      ServiceList? services,
      int total,
      String typePrice});

  @override
  $ServiceListCopyWith<$Res>? get services;
}

/// @nodoc
class __$$_RoomModelCopyWithImpl<$Res>
    extends _$RoomModelCopyWithImpl<$Res, _$_RoomModel>
    implements _$$_RoomModelCopyWith<$Res> {
  __$$_RoomModelCopyWithImpl(
      _$_RoomModel _value, $Res Function(_$_RoomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotel = null,
    Object? image = null,
    Object? maxGuest = null,
    Object? name = null,
    Object? price = null,
    Object? services = freezed,
    Object? total = null,
    Object? typePrice = null,
  }) {
    return _then(_$_RoomModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      maxGuest: null == maxGuest
          ? _value.maxGuest
          : maxGuest // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as ServiceList?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      typePrice: null == typePrice
          ? _value.typePrice
          : typePrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RoomModel implements _RoomModel {
  _$_RoomModel(
      {required this.id,
      this.hotel = "",
      this.image = imgNotFoundUrl,
      this.maxGuest = 0,
      this.name = "",
      this.price = 0,
      this.services,
      this.total = 0,
      this.typePrice = ""});

  @override
  String id;
  @override
  @JsonKey()
  String hotel;
  @override
  @JsonKey()
  String image;
  @override
  @JsonKey()
  int maxGuest;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  int price;
  @override
  ServiceList? services;
  @override
  @JsonKey()
  int total;
  @override
  @JsonKey()
  String typePrice;

  @override
  String toString() {
    return 'RoomModel(id: $id, hotel: $hotel, image: $image, maxGuest: $maxGuest, name: $name, price: $price, services: $services, total: $total, typePrice: $typePrice)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomModelCopyWith<_$_RoomModel> get copyWith =>
      __$$_RoomModelCopyWithImpl<_$_RoomModel>(this, _$identity);
}

abstract class _RoomModel implements RoomModel {
  factory _RoomModel(
      {required String id,
      String hotel,
      String image,
      int maxGuest,
      String name,
      int price,
      ServiceList? services,
      int total,
      String typePrice}) = _$_RoomModel;

  @override
  String get id;
  set id(String value);
  @override
  String get hotel;
  set hotel(String value);
  @override
  String get image;
  set image(String value);
  @override
  int get maxGuest;
  set maxGuest(int value);
  @override
  String get name;
  set name(String value);
  @override
  int get price;
  set price(int value);
  @override
  ServiceList? get services;
  set services(ServiceList? value);
  @override
  int get total;
  set total(int value);
  @override
  String get typePrice;
  set typePrice(String value);
  @override
  @JsonKey(ignore: true)
  _$$_RoomModelCopyWith<_$_RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoomList {
  List<RoomModel> get rooms => throw _privateConstructorUsedError;
  set rooms(List<RoomModel> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomListCopyWith<RoomList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomListCopyWith<$Res> {
  factory $RoomListCopyWith(RoomList value, $Res Function(RoomList) then) =
      _$RoomListCopyWithImpl<$Res, RoomList>;
  @useResult
  $Res call({List<RoomModel> rooms});
}

/// @nodoc
class _$RoomListCopyWithImpl<$Res, $Val extends RoomList>
    implements $RoomListCopyWith<$Res> {
  _$RoomListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomCopyWith<$Res> implements $RoomListCopyWith<$Res> {
  factory _$$_RoomCopyWith(_$_Room value, $Res Function(_$_Room) then) =
      __$$_RoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RoomModel> rooms});
}

/// @nodoc
class __$$_RoomCopyWithImpl<$Res> extends _$RoomListCopyWithImpl<$Res, _$_Room>
    implements _$$_RoomCopyWith<$Res> {
  __$$_RoomCopyWithImpl(_$_Room _value, $Res Function(_$_Room) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_Room(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
    ));
  }
}

/// @nodoc

class _$_Room implements _Room {
  _$_Room({this.rooms = const []});

  @override
  @JsonKey()
  List<RoomModel> rooms;

  @override
  String toString() {
    return 'RoomList(rooms: $rooms)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomCopyWith<_$_Room> get copyWith =>
      __$$_RoomCopyWithImpl<_$_Room>(this, _$identity);
}

abstract class _Room implements RoomList {
  factory _Room({List<RoomModel> rooms}) = _$_Room;

  @override
  List<RoomModel> get rooms;
  set rooms(List<RoomModel> value);
  @override
  @JsonKey(ignore: true)
  _$$_RoomCopyWith<_$_Room> get copyWith => throw _privateConstructorUsedError;
}
