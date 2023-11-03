import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/place/place.dart';

class FavouriteFirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<PlaceList> getFavouritePlaces() async {
    final favouriteList = UserPrefs().getFavourite();
    PlaceList places = PlaceList(places: []);
    for (String id in favouriteList) {
      final snapshot = await _firestore.collection('place').doc(id).get();
      places.places.add(Place.fromFirestore(snapshot, id, true));
    }
    return places;
  }
}
