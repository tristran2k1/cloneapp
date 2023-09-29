import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';
import 'package:travo_app/src/models/hotel/hotel.dart';

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
      minPrice = getMinPrice(_hotelList);
      maxPrice = getMaxPrice(_hotelList);
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
      case SortByOption.highestPopularity:
        filteredHotels.sort((a, b) => b.totalReviews.compareTo(a.totalReviews));
        emit(HotelState.loadingHotelSuccess(
            HotelList(hotels: filteredHotels), minPrice, maxPrice));
        break;
      case SortByOption.lowestPrice:
        filteredHotels.sort((a, b) => a.price.compareTo(b.price));
        emit(HotelState.loadingHotelSuccess(
            HotelList(hotels: filteredHotels), minPrice, maxPrice));
        break;
      case SortByOption.highestPrice:
        filteredHotels.sort((a, b) => b.price.compareTo(a.price));
        emit(HotelState.loadingHotelSuccess(
            HotelList(hotels: filteredHotels), minPrice, maxPrice));
        break;
      case SortByOption.highestRating:
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

int getMinPrice(HotelList hotels) {
  int minPrice = 0;
  for (Hotel hotel in hotels.hotels) {
    if (hotel.price < minPrice) {
      minPrice = hotel.price;
    }
  }
  return minPrice;
}

int getMaxPrice(HotelList hotels) {
  int maxPrice = 0;
  for (Hotel hotel in hotels.hotels) {
    if (hotel.price > maxPrice) {
      maxPrice = hotel.price;
    }
  }
  return maxPrice;
}
