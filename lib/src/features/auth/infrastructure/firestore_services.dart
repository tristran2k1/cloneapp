import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveUser(UserAccount user) {
    return _firestore.collection('user').doc(user.id).set(user.toJson());
  }

  Future<UserAccount?> currentUser(UserAccount user) async {
    return await _firestore
        .collection('user')
        .doc(user.id)
        .get()
        .then((value) => UserAccount.fromFirestore(value, user.id))
        .catchError((e) {
      logger.e(e);
      return UserAccount(id: '');
    });
  }

  void changeAvatar(String id, String fileUrl) {
    _firestore
        .collection('user')
        .doc(id)
        .update({'avatar': fileUrl}).catchError((e) => logger.e(e));
  }
}
