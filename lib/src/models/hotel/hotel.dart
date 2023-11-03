import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/constants/constants.dart';

/// [image] is url of image

class Hotel {
  final String id;
  final String image; // url
  final String information;
  final String location;
  final String locationDescription;
  final String name;
  final int price;
  final double rating;
  final int totalReviews;
  bool isFavourite;

  Hotel(
      {required this.id,
      this.image = imgNotFoundUrl,
      this.information = "",
      this.location = "",
      this.locationDescription = "",
      this.name = "",
      this.price = 0,
      this.rating = 0,
      this.totalReviews = 0,
      this.isFavourite = false});

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

class HotelList {
  final List<Hotel> hotels;
  HotelList({this.hotels = const []});

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
