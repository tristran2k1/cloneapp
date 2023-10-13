part of 'hotel_bloc.dart';

@freezed
abstract class HotelEvent with _$HotelEvent {
  const factory HotelEvent.hotelLoadingEvent() = HotelLoadingEvent;
  const factory HotelEvent.filterByPrice(
          int minPrice, int maxPrice, HotelSortByOption type) =
      FilterByPriceHotelEvent;
}
