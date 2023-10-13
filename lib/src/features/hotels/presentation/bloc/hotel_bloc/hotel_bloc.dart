import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';
import 'package:travo_app/src/models/hotel/hotel.dart';
import 'package:travo_app/src/utils/utils.dart';

import '../../../domain/remote/firestore_services.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';
part 'hotel_bloc.freezed.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc() : super(const HotelState.initial()) {
    _firestoreService = HotelFirestoreService();
    on<HotelLoadingEvent>(_onHotelLoadingEvent);
    on<FilterByPriceHotelEvent>(_onFilterByPriceHotelEvent);
  }
  late HotelFirestoreService _firestoreService;
  late HotelList _hotelList;
  int minPrice = 0;
  int maxPrice = 0;
  FutureOr<void> _onHotelLoadingEvent(
      HotelLoadingEvent event, Emitter<HotelState> emit) async {
    emit(const HotelState.loadingHotelState());
    _hotelList = await _firestoreService.getHotels();
    if (_hotelList.hotels.isEmpty) {
      emit(const HotelState.errorHotelState('No hotels found'));
    } else {
      minPrice = getMinPrice(_hotelList.hotels.map((e) => e.price).toList());
      maxPrice = getMaxPrice(_hotelList.hotels.map((e) => e.price).toList());
      emit(HotelState.loadingHotelSuccess(_hotelList, minPrice, maxPrice));
    }
  }

  FutureOr<void> _onFilterByPriceHotelEvent(
      FilterByPriceHotelEvent event, Emitter<HotelState> emit) {
    List<Hotel> filteredHotels = _hotelList.hotels
        .where((hotel) =>
            hotel.price >= event.minPrice && hotel.price <= event.maxPrice)
        .toList();
    switch (event.type) {
      case HotelSortByOption.highestPopularity:
        filteredHotels.sort((a, b) => b.totalReviews.compareTo(a.totalReviews));
        emit(HotelState.loadingHotelSuccess(
            HotelList(hotels: filteredHotels), minPrice, maxPrice));
        break;
      case HotelSortByOption.lowestPrice:
        filteredHotels.sort((a, b) => a.price.compareTo(b.price));
        emit(HotelState.loadingHotelSuccess(
            HotelList(hotels: filteredHotels), minPrice, maxPrice));
        break;
      case HotelSortByOption.highestPrice:
        filteredHotels.sort((a, b) => b.price.compareTo(a.price));
        emit(HotelState.loadingHotelSuccess(
            HotelList(hotels: filteredHotels), minPrice, maxPrice));
        break;
      case HotelSortByOption.highestRating:
        filteredHotels.sort((a, b) => b.rating.compareTo(a.rating));
        emit(HotelState.loadingHotelSuccess(
            HotelList(hotels: filteredHotels), minPrice, maxPrice));
        break;
      default:
        emit(HotelState.loadingHotelSuccess(
            HotelList(hotels: filteredHotels), minPrice, maxPrice));
    }
    emit(HotelState.loadingHotelSuccess(
        HotelList(hotels: filteredHotels), minPrice, maxPrice));
  }
}
