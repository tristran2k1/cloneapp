import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/features/checkout/checkout.dart';
import 'package:travo_app/src/models/models.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const CheckoutState.initial()) {
    _firestoreService = CheckoutFirestoreService();
    on<CheckoutLoadingEvent>(_onCheckoutLoadingEvent);
  }
  late CheckoutFirestoreService _firestoreService;

  FutureOr<void> _onCheckoutLoadingEvent(
      CheckoutLoadingEvent event, Emitter<CheckoutState> emit) async {
    emit(const CheckoutState.loading());
    final room = await _firestoreService.getRoom(event.id);
    if (room.id == "") {
      emit(const CheckoutState.error("No room found"));
    } else {
      emit(CheckoutState.loadingSuccess(room));
    }
  }
}
