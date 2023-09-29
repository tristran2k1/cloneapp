import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';

part 'room.freezed.dart';

@unfreezed
class RoomModel with _$RoomModel {
  factory RoomModel({
    required String id,
    @Default("") String hotel,
    @Default(imgNotFoundUrl) String image,
    @Default(0) int maxGuest,
    @Default("") String name,
    @Default(0) int price,
    ServiceList? services,
    @Default(0) int total,
    @Default("") String typePrice,
  }) = _RoomModel;
  factory RoomModel.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> document, String id) {
    final data = document.data() as Map<String, dynamic>;
    final hotel = data['hotel'] as String?;
    final image = data['image'] != null && data['image'] != ""
        ? data['image'] as String
        : imgNotFoundUrl;
    final maxGuest = data['max_guest'] as int?;
    final name = data['name'] as String?;
    final price = data['price'] as int?;
    final services = data['services'] as List<dynamic>?;
    final total = data['total'] as int?;
    final typePrice = data['type_price'] as String?;
    return RoomModel(
      id: id,
      hotel: hotel ?? "",
      image: image,
      maxGuest: maxGuest ?? 0,
      name: name ?? "",
      price: price ?? 0,
      services: ServiceList.fromStringList(services),
      total: total ?? 0,
      typePrice: typePrice ?? "",
    );
  }
}

@unfreezed
class RoomList with _$RoomList {
  factory RoomList({
    @Default([]) List<RoomModel> rooms,
  }) = _Room;

  factory RoomList.fromFirestoreAsSimple(QuerySnapshot snapshot) {
    if (snapshot.docs.isNotEmpty) {
      RoomList hotelList = RoomList(rooms: []);

      for (final QueryDocumentSnapshot document in snapshot.docs) {
        final data = document.data() as Map<String, dynamic>;

        final id = document.id;
        final hotel = data['hotel'] as String?;
        final image = data['image'] != null && data['image'] != ""
            ? data['image'] as String
            : imgNotFoundUrl;
        final name = data['name'] as String?;
        final price = data['price'] as int?;
        final services = data['services'] as List<dynamic>?;
        final typePrice = data['type_price'] as String?;
        hotelList.rooms.add(RoomModel(
          id: id,
          hotel: hotel ?? "",
          image: image,
          name: name ?? "",
          price: price ?? 0,
          services: ServiceList.fromStringList(services),
          typePrice: typePrice ?? "",
        ));
      }
      return hotelList;
    }
    return RoomList(rooms: []);
  }
}
