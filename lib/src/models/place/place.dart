import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/constants/constants.dart';

part 'place.freezed.dart';

@unfreezed
class Place with _$Place {
  factory Place({
    required String id,
    @Default("") String name,
    @Default(imgNotFoundUrl) String image, //url
    @Default(false) bool isFavourite,
    @Default(0) double rating,
  }) = _Place;

  factory Place.fromFirestore(DocumentSnapshot<Map<String, dynamic>> document,
      String id, bool? isFavourite) {
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

@unfreezed
class PlaceList with _$PlaceList {
  factory PlaceList({
    @Default([]) List<Place> places,
  }) = _PlaceList;

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
