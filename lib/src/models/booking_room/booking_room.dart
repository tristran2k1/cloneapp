import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/utils/utils.dart';

import '../models.dart';

class BookingRoomModel {
  final String roomId;
  final String hotelId;
  final String uid;
  final int price;
  String? promocode;
  List<GuestContact> contacts;
  String checkinDate;
  String checkoutDate;
  CreditPayment? credit;

  BookingRoomModel({
    this.roomId = '',
    this.hotelId = '',
    this.uid = '',
    this.contacts = const [],
    this.promocode = '',
    this.checkinDate = '',
    this.checkoutDate = '',
    this.credit,
    this.price = 0,
  });

  factory BookingRoomModel.empty() => BookingRoomModel();

  Map<String, dynamic> toJson() {
    final guest =
        List.generate(contacts.length, (index) => contacts[index].toJson());
    return {
      'uid': uid,
      'room': roomId,
      'hotel': hotelId,
      'email': contacts[0].email,
      'date_start': TimestampCvt().string2Timestamp(checkinDate),
      'date_end': TimestampCvt().string2Timestamp(checkoutDate),
      'guest': guest,
      'card': credit?.toJson(),
      'promo_code': promocode == '' ? null : promocode,
      'type_payment': credit != null ? 'credit' : 'banking',
      'price': price,
    };
  }

  DateTime get getCheckinDate => DateTime.parse(checkinDate);
  DateTime get getCheckoutDate => DateTime.parse(checkoutDate);
}

class ListBookingRoomModel {
  final List<BookingRoomModel> rooms;
  ListBookingRoomModel({this.rooms = const []});

  factory ListBookingRoomModel.fromFirestore(QuerySnapshot snapshot) {
    if (snapshot.docs.isEmpty) return ListBookingRoomModel();
    List<BookingRoomModel> res = [];
    for (var e in snapshot.docs) {
      final data = e.data() as Map<String, dynamic>;
      final room = data['room'] as String?;
      final hotel = data['hotel'] as String?;
      final dateStart = data['date_start'] as Timestamp?;
      final dateEnd = data['date_end'] as Timestamp?;
      final guest = data['guest'] as List<dynamic>?;
      final price = data['price'] as int?;
      final uid = data['uid'] as String?;

      List<GuestContact> contacts = getListContact(guest ?? []);
      res.add(BookingRoomModel(
        roomId: room ?? '',
        hotelId: hotel ?? '',
        uid: uid ?? '',
        contacts: contacts,
        price: price ?? 0,
        checkinDate:
            dateStart != null ? TimestampCvt().timestamp2String(dateStart) : '',
        checkoutDate:
            dateEnd != null ? TimestampCvt().timestamp2String(dateEnd) : '',
      ));
    }
    return ListBookingRoomModel(rooms: res);
  }
}

List<GuestContact> getListContact(List<dynamic> list) {
  return list.map((e) => GuestContact.fromJson(e)).toList();
}
