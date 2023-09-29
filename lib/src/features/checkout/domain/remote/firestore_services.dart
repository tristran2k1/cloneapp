import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
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
    final card = {
      "name": bookingInfo.credit?.name,
      "number": bookingInfo.credit?.cardNumber,
      "expDate": bookingInfo.credit?.expiration,
      "cvv": bookingInfo.credit?.cvv,
      "country": bookingInfo.credit?.country,
    };
    final guest = List.generate(
        bookingInfo.contacts.length,
        (index) => {
              "name": bookingInfo.contacts[index].name,
              "phone": bookingInfo.contacts[index].phone,
              "email": bookingInfo.contacts[index].email,
            });
    return _firestore.collection('booking').doc().set({
      'uid': bookingInfo.uid,
      'room': bookingInfo.roomId,
      'hotel': bookingInfo.hotelId,
      'email': bookingInfo.contacts[0].email,
      'date_start': TimestampCvt().string2Timestamp(bookingInfo.checkinDate),
      'date_end': TimestampCvt().string2Timestamp(bookingInfo.checkoutDate),
      'guest': guest,
      'card': card,
      'promo_code': bookingInfo.promocode == '' ? null : bookingInfo.promocode,
      'type_payment': bookingInfo.credit != null ? 'credit' : 'banking',
    }).catchError((e) {
      throw Exception(e);
    });
  }
}
