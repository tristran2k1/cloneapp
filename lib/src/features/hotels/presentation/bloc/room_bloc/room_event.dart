part of 'room_bloc.dart';

@freezed
abstract class RoomEvent with _$RoomEvent {
  const factory RoomEvent.roomLoadingEvent(String id) = RoomLoadingEvent;
}
