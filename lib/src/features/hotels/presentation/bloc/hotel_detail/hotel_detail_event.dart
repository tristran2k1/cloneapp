part of 'hotel_detail_bloc.dart';

@freezed
abstract class HotelDetailEvent with _$HotelDetailEvent {
  const factory HotelDetailEvent.hotelDetailLoadingEvent(String id) =
      HotelDetailLoadingEvent;
}
