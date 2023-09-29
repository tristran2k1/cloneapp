import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/models/place/place.dart';
import 'package:travo_app/src/utils/utils.dart';

class HomeFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<PlaceList> get10Places() async {
    return await _firestore
        .collection('place')
        .limit(10)
        .get()
        .then((value) => PlaceList.fromFirestore(value))
        .catchError((e) {
      logger.e(e);
      return PlaceList(places: []);
    });
  }
}
