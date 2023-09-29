part of 'hotel_detail_bloc.dart';

@freezed
class HotelDetailState with _$HotelDetailState {
  const factory HotelDetailState.initial() = HotelDetailInitial;
  const factory HotelDetailState.hotelDetailLoadingState() =
      HotelDetailLoadingState;
  const factory HotelDetailState.error(String message) = HotelDetailError;
  const factory HotelDetailState.loadingSuccess(Hotel hotel) =
      HotelDetailLoadingSuccess;
}
