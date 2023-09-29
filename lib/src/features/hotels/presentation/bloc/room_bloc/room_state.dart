part of 'room_bloc.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.initial() = RoomInitial;
  const factory RoomState.loading() = RoomLoading;
  const factory RoomState.error(String message) = RoomError;
  const factory RoomState.loadingSuccess(RoomList rooms) = RoomLoadingSuccess;
}
