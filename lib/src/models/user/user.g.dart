// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAccount _$$_UserAccountFromJson(Map<String, dynamic> json) =>
    _$_UserAccount(
      id: json['id'] as String,
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      avatar: json['avatar'] as String? ?? imgNotFoundUrl,
      country: json['country'] as String? ?? "",
    );

Map<String, dynamic> _$$_UserAccountToJson(_$_UserAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'country': instance.country,
    };
