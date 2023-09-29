import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';

part 'room_event.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(const RoomState.initial()) {
    _firestoreService = HotelFirestoreService();
    on<RoomLoadingEvent>(_onRoomLoadingEvent);
  }
  late HotelFirestoreService _firestoreService;

  FutureOr<void> _onRoomLoadingEvent(
      RoomLoadingEvent event, Emitter<RoomState> emit) async {
    emit(const RoomState.loading());
    final room = await _firestoreService.getAvailableRooms(event.id);
    if (room.rooms.isEmpty) {
      emit(const RoomState.error('No rooms found'));
    } else {
      emit(RoomState.loadingSuccess(room));
    }
  }
}
