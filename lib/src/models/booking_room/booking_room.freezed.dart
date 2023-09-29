// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingRoomModel {
  String get roomId => throw _privateConstructorUsedError;
  set roomId(String value) => throw _privateConstructorUsedError;
  String get hotelId => throw _privateConstructorUsedError;
  set hotelId(String value) => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  set uid(String value) => throw _privateConstructorUsedError;
  List<GuestContact> get contacts => throw _privateConstructorUsedError;
  set contacts(List<GuestContact> value) => throw _privateConstructorUsedError;
  String? get promocode => throw _privateConstructorUsedError;
  set promocode(String? value) => throw _privateConstructorUsedError;
  String get checkinDate => throw _privateConstructorUsedError;
  set checkinDate(String value) => throw _privateConstructorUsedError;
  String get checkoutDate => throw _privateConstructorUsedError;
  set checkoutDate(String value) => throw _privateConstructorUsedError;
  CreditPayment? get credit => throw _privateConstructorUsedError;
  set credit(CreditPayment? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingRoomModelCopyWith<BookingRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRoomModelCopyWith<$Res> {
  factory $BookingRoomModelCopyWith(
          BookingRoomModel value, $Res Function(BookingRoomModel) then) =
      _$BookingRoomModelCopyWithImpl<$Res, BookingRoomModel>;
  @useResult
  $Res call(
      {String roomId,
      String hotelId,
      String uid,
      List<GuestContact> contacts,
      String? promocode,
      String checkinDate,
      String checkoutDate,
      CreditPayment? credit});

  $CreditPaymentCopyWith<$Res>? get credit;
}

/// @nodoc
class _$BookingRoomModelCopyWithImpl<$Res, $Val extends BookingRoomModel>
    implements $BookingRoomModelCopyWith<$Res> {
  _$BookingRoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? hotelId = null,
    Object? uid = null,
    Object? contacts = null,
    Object? promocode = freezed,
    Object? checkinDate = null,
    Object? checkoutDate = null,
    Object? credit = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<GuestContact>,
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinDate: null == checkinDate
          ? _value.checkinDate
          : checkinDate // ignore: cast_nullable_to_non_nullable
              as String,
      checkoutDate: null == checkoutDate
          ? _value.checkoutDate
          : checkoutDate // ignore: cast_nullable_to_non_nullable
              as String,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as CreditPayment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditPaymentCopyWith<$Res>? get credit {
    if (_value.credit == null) {
      return null;
    }

    return $CreditPaymentCopyWith<$Res>(_value.credit!, (value) {
      return _then(_value.copyWith(credit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookingRoomModelCopyWith<$Res>
    implements $BookingRoomModelCopyWith<$Res> {
  factory _$$_BookingRoomModelCopyWith(
          _$_BookingRoomModel value, $Res Function(_$_BookingRoomModel) then) =
      __$$_BookingRoomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomId,
      String hotelId,
      String uid,
      List<GuestContact> contacts,
      String? promocode,
      String checkinDate,
      String checkoutDate,
      CreditPayment? credit});

  @override
  $CreditPaymentCopyWith<$Res>? get credit;
}

/// @nodoc
class __$$_BookingRoomModelCopyWithImpl<$Res>
    extends _$BookingRoomModelCopyWithImpl<$Res, _$_BookingRoomModel>
    implements _$$_BookingRoomModelCopyWith<$Res> {
  __$$_BookingRoomModelCopyWithImpl(
      _$_BookingRoomModel _value, $Res Function(_$_BookingRoomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? hotelId = null,
    Object? uid = null,
    Object? contacts = null,
    Object? promocode = freezed,
    Object? checkinDate = null,
    Object? checkoutDate = null,
    Object? credit = freezed,
  }) {
    return _then(_$_BookingRoomModel(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<GuestContact>,
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      checkinDate: null == checkinDate
          ? _value.checkinDate
          : checkinDate // ignore: cast_nullable_to_non_nullable
              as String,
      checkoutDate: null == checkoutDate
          ? _value.checkoutDate
          : checkoutDate // ignore: cast_nullable_to_non_nullable
              as String,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as CreditPayment?,
    ));
  }
}

/// @nodoc

class _$_BookingRoomModel implements _BookingRoomModel {
  _$_BookingRoomModel(
      {this.roomId = '',
      this.hotelId = '',
      this.uid = '',
      this.contacts = const [],
      this.promocode,
      this.checkinDate = '',
      this.checkoutDate = '',
      this.credit});

  @override
  @JsonKey()
  String roomId;
  @override
  @JsonKey()
  String hotelId;
  @override
  @JsonKey()
  String uid;
  @override
  @JsonKey()
  List<GuestContact> contacts;
  @override
  String? promocode;
  @override
  @JsonKey()
  String checkinDate;
  @override
  @JsonKey()
  String checkoutDate;
  @override
  CreditPayment? credit;

  @override
  String toString() {
    return 'BookingRoomModel(roomId: $roomId, hotelId: $hotelId, uid: $uid, contacts: $contacts, promocode: $promocode, checkinDate: $checkinDate, checkoutDate: $checkoutDate, credit: $credit)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingRoomModelCopyWith<_$_BookingRoomModel> get copyWith =>
      __$$_BookingRoomModelCopyWithImpl<_$_BookingRoomModel>(this, _$identity);
}

abstract class _BookingRoomModel implements BookingRoomModel {
  factory _BookingRoomModel(
      {String roomId,
      String hotelId,
      String uid,
      List<GuestContact> contacts,
      String? promocode,
      String checkinDate,
      String checkoutDate,
      CreditPayment? credit}) = _$_BookingRoomModel;

  @override
  String get roomId;
  set roomId(String value);
  @override
  String get hotelId;
  set hotelId(String value);
  @override
  String get uid;
  set uid(String value);
  @override
  List<GuestContact> get contacts;
  set contacts(List<GuestContact> value);
  @override
  String? get promocode;
  set promocode(String? value);
  @override
  String get checkinDate;
  set checkinDate(String value);
  @override
  String get checkoutDate;
  set checkoutDate(String value);
  @override
  CreditPayment? get credit;
  set credit(CreditPayment? value);
  @override
  @JsonKey(ignore: true)
  _$$_BookingRoomModelCopyWith<_$_BookingRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GuestContact {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  set phone(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuestContactCopyWith<GuestContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestContactCopyWith<$Res> {
  factory $GuestContactCopyWith(
          GuestContact value, $Res Function(GuestContact) then) =
      _$GuestContactCopyWithImpl<$Res, GuestContact>;
  @useResult
  $Res call({String name, String phone, String email});
}

/// @nodoc
class _$GuestContactCopyWithImpl<$Res, $Val extends GuestContact>
    implements $GuestContactCopyWith<$Res> {
  _$GuestContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GuestContactCopyWith<$Res>
    implements $GuestContactCopyWith<$Res> {
  factory _$$_GuestContactCopyWith(
          _$_GuestContact value, $Res Function(_$_GuestContact) then) =
      __$$_GuestContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String phone, String email});
}

/// @nodoc
class __$$_GuestContactCopyWithImpl<$Res>
    extends _$GuestContactCopyWithImpl<$Res, _$_GuestContact>
    implements _$$_GuestContactCopyWith<$Res> {
  __$$_GuestContactCopyWithImpl(
      _$_GuestContact _value, $Res Function(_$_GuestContact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$_GuestContact(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GuestContact implements _GuestContact {
  _$_GuestContact({this.name = '', this.phone = '', this.email = ''});

  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String phone;
  @override
  @JsonKey()
  String email;

  @override
  String toString() {
    return 'GuestContact(name: $name, phone: $phone, email: $email)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GuestContactCopyWith<_$_GuestContact> get copyWith =>
      __$$_GuestContactCopyWithImpl<_$_GuestContact>(this, _$identity);
}

abstract class _GuestContact implements GuestContact {
  factory _GuestContact({String name, String phone, String email}) =
      _$_GuestContact;

  @override
  String get name;
  set name(String value);
  @override
  String get phone;
  set phone(String value);
  @override
  String get email;
  set email(String value);
  @override
  @JsonKey(ignore: true)
  _$$_GuestContactCopyWith<_$_GuestContact> get copyWith =>
      throw _privateConstructorUsedError;
}
