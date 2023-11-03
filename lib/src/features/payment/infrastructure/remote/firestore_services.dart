import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

class PaymentFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<BookedRoomInfo>> getRoomList(String uid) async {
    List<BookingRoomModel> rooms = await getRoomBookingInfo(uid);
    List<BookedRoomInfo> bookedRooms = [];
    for (var room in rooms) {
      final roomInfo = await getRoomInfo(roomId: room.roomId);
      final hotelName = await getHotelName(hotelId: room.hotelId);
      if (hotelName == '' || roomInfo['name'] == '') continue;
      bookedRooms.add(BookedRoomInfo(
        hotelName: hotelName,
        roomName: roomInfo['name'],
        roomImage: roomInfo['image'],
        bookingInfo: room,
      ));
    }
    return bookedRooms;
  }

  Future<List<BookingRoomModel>> getRoomBookingInfo(String id) async {
    return await _firestore
        .collection('booking')
        .where('uid', isEqualTo: id)
        .get()
        .then((value) => ListBookingRoomModel.fromFirestore(value).rooms)
        .catchError((e) {
      logger.e(e);
      return ListBookingRoomModel().rooms;
    });
  }

  Future<dynamic> getRoomInfo({required String roomId}) async {
    return await _firestore.collection('room').doc(roomId).get().then((value) {
      if (!value.exists) {
        return {
          'name': '',
          'image': imgNotFoundUrl,
        };
      }
      final data = value.data() as Map<String, dynamic>;

      return {
        'name': data['name'] as String? ?? '',
        'image': data['image'] as String? ?? imgNotFoundUrl,
      };
    }).catchError((e) {
      logger.e(e);
      return {
        'name': '',
        'image': imgNotFoundUrl,
      };
    });
  }

  Future<String> getHotelName({required String hotelId}) async {
    return await _firestore
        .collection('hotel')
        .doc(hotelId)
        .get()
        .then((value) {
      if (!value.exists) {
        return '';
      }
      final data = value.data() as Map<String, dynamic>;
      return data['name'] as String? ?? '';
    }).catchError((e) {
      logger.e(e);
      return '';
    });
  }
}
