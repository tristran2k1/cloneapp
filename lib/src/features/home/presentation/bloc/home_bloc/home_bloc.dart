import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/place/place.dart';

import '../../../domain/remote/firestore_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    _firestoreService = HomeFirestoreService();
    on<Loading>(_onLoading);
  }
  late HomeFirestoreService _firestoreService;

  FutureOr<void> _onLoading(Loading event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    final places = await _firestoreService.get10Places();
    if (places.places.isNotEmpty) {
      final favouriteList = UserPrefs().getFavourite();
      for (final place in places.places) {
        if (favouriteList.contains(place.id)) {
          place.isFavourite = true;
        }
      }
      emit(HomeState.loadingSuccess(places));
    } else {
      emit(const HomeState.error('No hotels found'));
    }
  }
}
