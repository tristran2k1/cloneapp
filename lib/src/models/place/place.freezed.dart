// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Place {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  set image(String value) => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;
  set isFavourite(bool value) => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  set rating(double value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {String id, String name, String image, bool isFavourite, double rating});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? isFavourite = null,
    Object? rating = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String image, bool isFavourite, double rating});
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res, _$_Place>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? isFavourite = null,
    Object? rating = null,
  }) {
    return _then(_$_Place(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Place implements _Place {
  _$_Place(
      {required this.id,
      this.name = "",
      this.image = imgNotFoundUrl,
      this.isFavourite = false,
      this.rating = 0});

  @override
  String id;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String image;
  @override
  @JsonKey()
  bool isFavourite;
  @override
  @JsonKey()
  double rating;

  @override
  String toString() {
    return 'Place(id: $id, name: $name, image: $image, isFavourite: $isFavourite, rating: $rating)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      __$$_PlaceCopyWithImpl<_$_Place>(this, _$identity);
}

abstract class _Place implements Place {
  factory _Place(
      {required String id,
      String name,
      String image,
      bool isFavourite,
      double rating}) = _$_Place;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get image;
  set image(String value);
  @override
  bool get isFavourite;
  set isFavourite(bool value);
  @override
  double get rating;
  set rating(double value);
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceList {
  List<Place> get places => throw _privateConstructorUsedError;
  set places(List<Place> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceListCopyWith<PlaceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceListCopyWith<$Res> {
  factory $PlaceListCopyWith(PlaceList value, $Res Function(PlaceList) then) =
      _$PlaceListCopyWithImpl<$Res, PlaceList>;
  @useResult
  $Res call({List<Place> places});
}

/// @nodoc
class _$PlaceListCopyWithImpl<$Res, $Val extends PlaceList>
    implements $PlaceListCopyWith<$Res> {
  _$PlaceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceListCopyWith<$Res> implements $PlaceListCopyWith<$Res> {
  factory _$$_PlaceListCopyWith(
          _$_PlaceList value, $Res Function(_$_PlaceList) then) =
      __$$_PlaceListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Place> places});
}

/// @nodoc
class __$$_PlaceListCopyWithImpl<$Res>
    extends _$PlaceListCopyWithImpl<$Res, _$_PlaceList>
    implements _$$_PlaceListCopyWith<$Res> {
  __$$_PlaceListCopyWithImpl(
      _$_PlaceList _value, $Res Function(_$_PlaceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$_PlaceList(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$_PlaceList implements _PlaceList {
  _$_PlaceList({this.places = const []});

  @override
  @JsonKey()
  List<Place> places;

  @override
  String toString() {
    return 'PlaceList(places: $places)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceListCopyWith<_$_PlaceList> get copyWith =>
      __$$_PlaceListCopyWithImpl<_$_PlaceList>(this, _$identity);
}

abstract class _PlaceList implements PlaceList {
  factory _PlaceList({List<Place> places}) = _$_PlaceList;

  @override
  List<Place> get places;
  set places(List<Place> value);
  @override
  @JsonKey(ignore: true)
  _$$_PlaceListCopyWith<_$_PlaceList> get copyWith =>
      throw _privateConstructorUsedError;
}
