import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/models/hotel/hotel.dart';

import '../../../infrastructure/remote/firestore_services.dart';

part 'hotel_detail_bloc.freezed.dart';
part 'hotel_detail_event.dart';
part 'hotel_detail_state.dart';

class HotelDetailBloc extends Bloc<HotelDetailEvent, HotelDetailState> {
  HotelDetailBloc() : super(const HotelDetailState.initial()) {
    _firestoreService = HotelFirestoreService();
    on<HotelDetailLoadingEvent>(_onHotelDetailLoadingEvent);
  }
  late HotelFirestoreService _firestoreService;

  FutureOr<void> _onHotelDetailLoadingEvent(
      HotelDetailLoadingEvent event, Emitter<HotelDetailState> emit) async {
    emit(const HotelDetailState.hotelDetailLoadingState());
    final hotel = await _firestoreService.getDetailHotel(event.id);
    if (hotel.id == "") {
      emit(const HotelDetailState.error("No hotel found"));
    } else {
      emit(HotelDetailState.loadingSuccess(hotel));
    }
  }
}
