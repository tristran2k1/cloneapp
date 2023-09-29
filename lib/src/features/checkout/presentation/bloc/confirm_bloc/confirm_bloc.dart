import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/booking_room/booking_room.dart';
import 'package:travo_app/src/models/models.dart';

import '../../../checkout.dart';

part 'confirm_event.dart';
part 'confirm_state.dart';
part 'confirm_bloc.freezed.dart';

class ConfirmBloc extends Bloc<ConfirmEvent, ConfirmState> {
  ConfirmBloc() : super(const ConfirmState.initial()) {
    _firestoreService = CheckoutFirestoreService();
    on<ConfirmLoadingEvent>(_onConfirmLoadingEvent);
    on<ConfirmBookingEvent>(_onConfirmBookingEvent);
  }
  late CheckoutFirestoreService _firestoreService;

  FutureOr<void> _onConfirmLoadingEvent(
      ConfirmLoadingEvent event, Emitter<ConfirmState> emit) async {
    emit(const ConfirmState.loading());
    final room = await _firestoreService.getRoom(event.id);
    if (room.id == "") {
      emit(const ConfirmState.error("No room found"));
    } else {
      emit(ConfirmState.loadingSuccess(room));
    }
  }

  FutureOr<void> _onConfirmBookingEvent(
      ConfirmBookingEvent event, Emitter<ConfirmState> emit) {
    emit(const ConfirmState.loading());
    try {
      _firestoreService.bookingRoom(bookingInfo: event.bookingInfo);
      emit(const ConfirmState.bookingSuccess());
    } catch (e) {
      emit(ConfirmState.error(e.toString()));
    }
  }
}
