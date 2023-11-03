import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

class CheckoutFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<RoomModel> getRoom(String id) async {
    return await _firestore
        .collection('room')
        .doc(id)
        .get()
        .then((value) => RoomModel.fromFirestore(value, id))
        .catchError((e) {
      logger.e(e);
      return RoomModel(id: '');
    });
  }

  Future<void> bookingRoom({required BookingRoomModel bookingInfo}) {
    return _firestore
        .collection('booking')
        .doc()
        .set(bookingInfo.toJson())
        .catchError((e) {
      throw Exception(e);
    });
  }
}
