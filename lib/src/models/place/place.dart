import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/constants/constants.dart';

class Place {
  final String id;
  final String name;
  final String image; //url
  final double rating;
  bool isFavourite;

  Place({
    required this.id,
    this.name = "",
    this.image = imgNotFoundUrl,
    this.isFavourite = false,
    this.rating = 0,
  });

  factory Place.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> document,
    String id,
    bool? isFavourite,
  ) {
    final data = document.data() as Map<String, dynamic>;

    final name = data['name'] as String?;
    final image = data['image'] != null && data['image'] != ""
        ? data['image'] as String
        : imgNotFoundUrl;
    final rating = data['rating'] as double?;

    return Place(
        id: id,
        name: name ?? "",
        image: image,
        rating: rating ?? 0,
        isFavourite: isFavourite ?? false);
  }
}

class PlaceList {
  final List<Place> places;
  PlaceList({this.places = const []});

  factory PlaceList.fromFirestore(QuerySnapshot snapshot) {
    if (snapshot.docs.isNotEmpty) {
      PlaceList placeList = PlaceList(places: []);

      for (final QueryDocumentSnapshot document in snapshot.docs) {
        final data = document.data() as Map<String, dynamic>;

        final name = data['name'] as String?;
        final image = data['image'] != null && data['image'] != ""
            ? data['image'] as String
            : imgNotFoundUrl;
        final rating = data['rating'] as double?;
        final id = document.id;

        placeList.places.add(Place(
          id: id,
          name: name ?? "",
          image: image,
          rating: rating ?? 0,
        ));
      }
      return placeList;
    }
    return PlaceList(places: []);
  }
}
