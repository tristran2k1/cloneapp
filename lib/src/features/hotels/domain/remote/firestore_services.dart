import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/logger.dart';

class HotelFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<HotelList> getHotels() async {
    return await _firestore
        .collection('hotel')
        .get()
        .then((value) => HotelList.fromFirestoreAsSimple(value))
        .catchError((e) {
      logger.e(e);
      return HotelList(hotels: []);
    });
  }

  Future<Hotel> getDetailHotel(String id) async {
    return await _firestore
        .collection('hotel')
        .doc(id)
        .get()
        .then((value) => Hotel.fromFirestore(value, id, false))
        .catchError((e) {
      logger.e(e);
      return Hotel(id: '');
    });
  }

  Future<RoomList> getAvailableRooms(String id) async {
    return await _firestore
        .collection('room')
        .where("hotel", isEqualTo: id)
        .get()
        .then((value) => RoomList.fromFirestoreAsSimple(value))
        .catchError((e) {
      logger.e(e);
      return RoomList(rooms: []);
    });
  }
}
