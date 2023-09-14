// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'user.freezed.dart';
// part 'user.g.dart';

// @freezed
// class User with _$User {
//   const User._();

//   factory User({
//     @JsonKey(name: 'userId') required String id,
//     @Default("") String avatar,
//     @Default("") String country,
//     @Default("") String name,
//     @Default("") String email,
//     @Default("") String phone,
//   }) = _User;

//   factory User.empty() {
//     return User(email: '', id: '');
//   }

//   String? getAvatar() {
//     return avatar.isNotEmpty == true ? avatar : null;
//   }

//   factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
// }
