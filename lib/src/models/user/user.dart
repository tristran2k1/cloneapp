import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/constants/constants.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@unfreezed
class UserAccount with _$UserAccount {
  factory UserAccount({
    required String id,
    @Default("") String name,
    @Default("") String email,
    @Default("") String phone,
    @Default(imgNotFoundUrl) String avatar,
    @Default("") String country,
  }) = _UserAccount;

  factory UserAccount.empty() {
    return UserAccount(email: '', id: '');
  }

  factory UserAccount.fromFirebase(User user) => UserAccount(
        id: user.uid,
        email: user.email ?? "",
      );

  factory UserAccount.fromJson(Map<String, Object?> json) =>
      _$UserAccountFromJson(json);

  factory UserAccount.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> document, String id) {
    if (!document.exists) {
      return UserAccount.empty();
    }
    final data = document.data() as Map<String, dynamic>;
    final name = data['name'] as String?;
    final email = data['email'] as String?;
    final phone = data['phone'] as String?;
    final avatar = data['avatar'] != null && data['avatar'] != ""
        ? data['avatar'] as String
        : imgNotFoundUrl;
    final country = data['country'] as String?;
    return UserAccount(
      id: id,
      name: name ?? "",
      email: email ?? "",
      phone: phone ?? "",
      avatar: avatar,
      country: country ?? "",
    );
  }
}
