part of 'hotel_bloc.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState.initial() = HotelInitial;
  const factory HotelState.loadingHotelState() = LoadingHotelState;
  const factory HotelState.errorHotelState(String message) = ErrorHotelState;
  const factory HotelState.loadingHotelSuccess(
      HotelList hotels, int minPrice, int maxPrice) = LoadingHotelSuccess;
}
