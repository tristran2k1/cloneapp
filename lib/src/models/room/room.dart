import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';

class RoomModel {
  final String id;
  final String hotel;
  final String image;
  final int maxGuest;
  final String name;
  final int price;
  final ServiceList? services;
  final int total;
  final String typePrice;

  RoomModel({
    required this.id,
    this.hotel = "",
    this.image = imgNotFoundUrl,
    this.maxGuest = 0,
    this.name = "",
    this.price = 0,
    this.services,
    this.total = 0,
    this.typePrice = "",
  });

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

class RoomList {
  final List<RoomModel> rooms;

  RoomList({this.rooms = const []});

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
