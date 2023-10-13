import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/constants/constants.dart';

part 'hotel.freezed.dart';

@unfreezed
class Hotel with _$Hotel {
  factory Hotel({
    required String id,
    @Default(imgNotFoundUrl) String image, // url
    @Default("") String information,
    @Default("") String location,
    @Default("") locationDescription,
    @Default("") String name,
    @Default(0) int price,
    @Default(0) double rating,
    @Default(0) int totalReviews,
    @Default(false) bool isFavourite,
  }) = _Hotel;

  factory Hotel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> document,
      String id, bool? isFavourite) {
    final data = document.data() as Map<String, dynamic>;
    final image = data['image'] != null && data['image'] != ""
        ? data['image'] as String
        : imgNotFoundUrl;
    final information = data['information'] as String?;
    final location = data['location'] as String?;
    final locationDescription = data['location_description'] as String?;
    final name = data['name'] as String?;
    final price = data['price'] as int?;
    final rating = data['rating'] as double?;
    final totalReviews = data['total_review'] as int?;

    return Hotel(
        id: id,
        image: image,
        information: information ?? "",
        location: location ?? "",
        locationDescription: locationDescription ?? "",
        name: name ?? "",
        price: price ?? 0,
        rating: rating ?? 0,
        totalReviews: totalReviews ?? 0,
        isFavourite: isFavourite ?? false);
  }
}

@unfreezed
class HotelList with _$HotelList {
  factory HotelList({
    @Default([]) List<Hotel> hotels,
  }) = _HotelList;

  factory HotelList.fromFirestoreAsSimple(QuerySnapshot snapshot) {
    if (snapshot.docs.isNotEmpty) {
      HotelList hotelList = HotelList(hotels: []);

      for (final QueryDocumentSnapshot document in snapshot.docs) {
        final data = document.data() as Map<String, dynamic>;

        final id = document.id;
        final image = data['image'] != null && data['image'] != ""
            ? data['image'] as String
            : imgNotFoundUrl;
        final location = data['location'] as String?;
        final name = data['name'] as String?;
        final price = data['price'] as int?;
        final rating = data['rating'] as double?;
        final totalReviews = data['total_review'] as int?;

        hotelList.hotels.add(Hotel(
            id: id,
            image: image,
            location: location ?? "",
            name: name ?? "",
            price: price ?? 0,
            rating: rating ?? 0,
            totalReviews: totalReviews ?? 0));
      }
      return hotelList;
    }
    return HotelList(hotels: []);
  }
}
