import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/place/place.dart';

import '../../domain/remote/firestore_services.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';
part 'favourite_bloc.freezed.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(const FavouriteState.initial()) {
    _firestoreService = FavouriteFirestoreService();
    on<LoadingFavouriteEvent>(_onLoading);
  }
  late FavouriteFirestoreService _firestoreService;

  FutureOr<void> _onLoading(
      LoadingFavouriteEvent event, Emitter<FavouriteState> emit) async {
    emit(const FavouriteState.loading());
    final places = await _firestoreService.getFavouritePlaces();
    final favouriteList = UserPrefs().getFavourite();
    for (final place in places.places) {
      if (favouriteList.contains(place.id)) {
        place.isFavourite = true;
      }
    }
    emit(FavouriteState.loadingSuccess(places));
  }
}
