// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) {
  return _UserAccount.fromJson(json);
}

/// @nodoc
mixin _$UserAccount {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  set phone(String value) => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  set avatar(String value) => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  set country(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAccountCopyWith<UserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountCopyWith<$Res> {
  factory $UserAccountCopyWith(
          UserAccount value, $Res Function(UserAccount) then) =
      _$UserAccountCopyWithImpl<$Res, UserAccount>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String phone,
      String avatar,
      String country});
}

/// @nodoc
class _$UserAccountCopyWithImpl<$Res, $Val extends UserAccount>
    implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? avatar = null,
    Object? country = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAccountCopyWith<$Res>
    implements $UserAccountCopyWith<$Res> {
  factory _$$_UserAccountCopyWith(
          _$_UserAccount value, $Res Function(_$_UserAccount) then) =
      __$$_UserAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String phone,
      String avatar,
      String country});
}

/// @nodoc
class __$$_UserAccountCopyWithImpl<$Res>
    extends _$UserAccountCopyWithImpl<$Res, _$_UserAccount>
    implements _$$_UserAccountCopyWith<$Res> {
  __$$_UserAccountCopyWithImpl(
      _$_UserAccount _value, $Res Function(_$_UserAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? avatar = null,
    Object? country = null,
  }) {
    return _then(_$_UserAccount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAccount implements _UserAccount {
  _$_UserAccount(
      {required this.id,
      this.name = "",
      this.email = "",
      this.phone = "",
      this.avatar = imgNotFoundUrl,
      this.country = ""});

  factory _$_UserAccount.fromJson(Map<String, dynamic> json) =>
      _$$_UserAccountFromJson(json);

  @override
  String id;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String email;
  @override
  @JsonKey()
  String phone;
  @override
  @JsonKey()
  String avatar;
  @override
  @JsonKey()
  String country;

  @override
  String toString() {
    return 'UserAccount(id: $id, name: $name, email: $email, phone: $phone, avatar: $avatar, country: $country)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAccountCopyWith<_$_UserAccount> get copyWith =>
      __$$_UserAccountCopyWithImpl<_$_UserAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAccountToJson(
      this,
    );
  }
}

abstract class _UserAccount implements UserAccount {
  factory _UserAccount(
      {required String id,
      String name,
      String email,
      String phone,
      String avatar,
      String country}) = _$_UserAccount;

  factory _UserAccount.fromJson(Map<String, dynamic> json) =
      _$_UserAccount.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get phone;
  set phone(String value);
  @override
  String get avatar;
  set avatar(String value);
  @override
  String get country;
  set country(String value);
  @override
  @JsonKey(ignore: true)
  _$$_UserAccountCopyWith<_$_UserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
