import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:travo_app/src/utils/utils.dart';

class StorageServices {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final _directory = 'images/avatars/data/user/0/com.aci.travoapp.dev/cache';

  Future<String> changeAvatar(String filename, File file) async {
    try {
      final ref = _storage.ref().child('$_directory/$filename.jpg');
      final uploadTask =
          ref.putFile(file, SettableMetadata(contentType: 'image/jpeg'));
      final downloadUrl = await (await uploadTask).ref.getDownloadURL();
      return downloadUrl.toString();
    } catch (e) {
      logger.e(e);
      return '';
    }
  }
}
