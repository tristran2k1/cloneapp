// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_flight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingFlightModel {
  String get uid => throw _privateConstructorUsedError;
  set uid(String value) => throw _privateConstructorUsedError;
  TripInfo? get trip => throw _privateConstructorUsedError;
  set trip(TripInfo? value) => throw _privateConstructorUsedError;
  FlightTicket? get flight => throw _privateConstructorUsedError;
  set flight(FlightTicket? value) => throw _privateConstructorUsedError;
  List<GuestContact> get contacts => throw _privateConstructorUsedError;
  set contacts(List<GuestContact> value) => throw _privateConstructorUsedError;
  String? get promocode => throw _privateConstructorUsedError;
  set promocode(String? value) => throw _privateConstructorUsedError;
  CreditPayment? get credit => throw _privateConstructorUsedError;
  set credit(CreditPayment? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingFlightModelCopyWith<BookingFlightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingFlightModelCopyWith<$Res> {
  factory $BookingFlightModelCopyWith(
          BookingFlightModel value, $Res Function(BookingFlightModel) then) =
      _$BookingFlightModelCopyWithImpl<$Res, BookingFlightModel>;
  @useResult
  $Res call(
      {String uid,
      TripInfo? trip,
      FlightTicket? flight,
      List<GuestContact> contacts,
      String? promocode,
      CreditPayment? credit});

  $TripInfoCopyWith<$Res>? get trip;
  $FlightTicketCopyWith<$Res>? get flight;
  $CreditPaymentCopyWith<$Res>? get credit;
}

/// @nodoc
class _$BookingFlightModelCopyWithImpl<$Res, $Val extends BookingFlightModel>
    implements $BookingFlightModelCopyWith<$Res> {
  _$BookingFlightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? trip = freezed,
    Object? flight = freezed,
    Object? contacts = null,
    Object? promocode = freezed,
    Object? credit = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      trip: freezed == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as TripInfo?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as FlightTicket?,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<GuestContact>,
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as CreditPayment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripInfoCopyWith<$Res>? get trip {
    if (_value.trip == null) {
      return null;
    }

    return $TripInfoCopyWith<$Res>(_value.trip!, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlightTicketCopyWith<$Res>? get flight {
    if (_value.flight == null) {
      return null;
    }

    return $FlightTicketCopyWith<$Res>(_value.flight!, (value) {
      return _then(_value.copyWith(flight: value) as $Val);
    });
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
abstract class _$$_BookingFlightModelCopyWith<$Res>
    implements $BookingFlightModelCopyWith<$Res> {
  factory _$$_BookingFlightModelCopyWith(_$_BookingFlightModel value,
          $Res Function(_$_BookingFlightModel) then) =
      __$$_BookingFlightModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      TripInfo? trip,
      FlightTicket? flight,
      List<GuestContact> contacts,
      String? promocode,
      CreditPayment? credit});

  @override
  $TripInfoCopyWith<$Res>? get trip;
  @override
  $FlightTicketCopyWith<$Res>? get flight;
  @override
  $CreditPaymentCopyWith<$Res>? get credit;
}

/// @nodoc
class __$$_BookingFlightModelCopyWithImpl<$Res>
    extends _$BookingFlightModelCopyWithImpl<$Res, _$_BookingFlightModel>
    implements _$$_BookingFlightModelCopyWith<$Res> {
  __$$_BookingFlightModelCopyWithImpl(
      _$_BookingFlightModel _value, $Res Function(_$_BookingFlightModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? trip = freezed,
    Object? flight = freezed,
    Object? contacts = null,
    Object? promocode = freezed,
    Object? credit = freezed,
  }) {
    return _then(_$_BookingFlightModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      trip: freezed == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as TripInfo?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as FlightTicket?,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<GuestContact>,
      promocode: freezed == promocode
          ? _value.promocode
          : promocode // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as CreditPayment?,
    ));
  }
}

/// @nodoc

class _$_BookingFlightModel implements _BookingFlightModel {
  _$_BookingFlightModel(
      {this.uid = '',
      this.trip,
      this.flight,
      this.contacts = const [],
      this.promocode,
      this.credit});

  @override
  @JsonKey()
  String uid;
  @override
  TripInfo? trip;
  @override
  FlightTicket? flight;
  @override
  @JsonKey()
  List<GuestContact> contacts;
  @override
  String? promocode;
  @override
  CreditPayment? credit;

  @override
  String toString() {
    return 'BookingFlightModel(uid: $uid, trip: $trip, flight: $flight, contacts: $contacts, promocode: $promocode, credit: $credit)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingFlightModelCopyWith<_$_BookingFlightModel> get copyWith =>
      __$$_BookingFlightModelCopyWithImpl<_$_BookingFlightModel>(
          this, _$identity);
}

abstract class _BookingFlightModel implements BookingFlightModel {
  factory _BookingFlightModel(
      {String uid,
      TripInfo? trip,
      FlightTicket? flight,
      List<GuestContact> contacts,
      String? promocode,
      CreditPayment? credit}) = _$_BookingFlightModel;

  @override
  String get uid;
  set uid(String value);
  @override
  TripInfo? get trip;
  set trip(TripInfo? value);
  @override
  FlightTicket? get flight;
  set flight(FlightTicket? value);
  @override
  List<GuestContact> get contacts;
  set contacts(List<GuestContact> value);
  @override
  String? get promocode;
  set promocode(String? value);
  @override
  CreditPayment? get credit;
  set credit(CreditPayment? value);
  @override
  @JsonKey(ignore: true)
  _$$_BookingFlightModelCopyWith<_$_BookingFlightModel> get copyWith =>
      throw _privateConstructorUsedError;
}
