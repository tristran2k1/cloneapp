// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditPayment {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  set cardNumber(String value) => throw _privateConstructorUsedError;
  String get expiration => throw _privateConstructorUsedError;
  set expiration(String value) => throw _privateConstructorUsedError;
  String get cvv => throw _privateConstructorUsedError;
  set cvv(String value) => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  set country(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditPaymentCopyWith<CreditPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditPaymentCopyWith<$Res> {
  factory $CreditPaymentCopyWith(
          CreditPayment value, $Res Function(CreditPayment) then) =
      _$CreditPaymentCopyWithImpl<$Res, CreditPayment>;
  @useResult
  $Res call(
      {String name,
      String cardNumber,
      String expiration,
      String cvv,
      String country});
}

/// @nodoc
class _$CreditPaymentCopyWithImpl<$Res, $Val extends CreditPayment>
    implements $CreditPaymentCopyWith<$Res> {
  _$CreditPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cardNumber = null,
    Object? expiration = null,
    Object? cvv = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditPaymentCopyWith<$Res>
    implements $CreditPaymentCopyWith<$Res> {
  factory _$$_CreditPaymentCopyWith(
          _$_CreditPayment value, $Res Function(_$_CreditPayment) then) =
      __$$_CreditPaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String cardNumber,
      String expiration,
      String cvv,
      String country});
}

/// @nodoc
class __$$_CreditPaymentCopyWithImpl<$Res>
    extends _$CreditPaymentCopyWithImpl<$Res, _$_CreditPayment>
    implements _$$_CreditPaymentCopyWith<$Res> {
  __$$_CreditPaymentCopyWithImpl(
      _$_CreditPayment _value, $Res Function(_$_CreditPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cardNumber = null,
    Object? expiration = null,
    Object? cvv = null,
    Object? country = null,
  }) {
    return _then(_$_CreditPayment(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreditPayment implements _CreditPayment {
  _$_CreditPayment(
      {this.name = "",
      this.cardNumber = "",
      this.expiration = "",
      this.cvv = "",
      this.country = ""});

  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String cardNumber;
  @override
  @JsonKey()
  String expiration;
  @override
  @JsonKey()
  String cvv;
  @override
  @JsonKey()
  String country;

  @override
  String toString() {
    return 'CreditPayment(name: $name, cardNumber: $cardNumber, expiration: $expiration, cvv: $cvv, country: $country)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditPaymentCopyWith<_$_CreditPayment> get copyWith =>
      __$$_CreditPaymentCopyWithImpl<_$_CreditPayment>(this, _$identity);
}

abstract class _CreditPayment implements CreditPayment {
  factory _CreditPayment(
      {String name,
      String cardNumber,
      String expiration,
      String cvv,
      String country}) = _$_CreditPayment;

  @override
  String get name;
  set name(String value);
  @override
  String get cardNumber;
  set cardNumber(String value);
  @override
  String get expiration;
  set expiration(String value);
  @override
  String get cvv;
  set cvv(String value);
  @override
  String get country;
  set country(String value);
  @override
  @JsonKey(ignore: true)
  _$$_CreditPaymentCopyWith<_$_CreditPayment> get copyWith =>
      throw _privateConstructorUsedError;
}
