import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/models/models.dart';

import '../../infrastructure/remote/firestore_services.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentState.initial()) {
    _firestoreService = PaymentFirestoreService();
    on<PaymentLoadingEvent>(_onPaymentLoadingEvent);
  }
  late PaymentFirestoreService _firestoreService;

  FutureOr<void> _onPaymentLoadingEvent(
      PaymentLoadingEvent event, Emitter<PaymentState> emit) async {
    emit(const PaymentState.loading());
    final rooms = await _firestoreService.getRoomList(event.uid);
    emit(PaymentState.loadingSuccess(rooms));
  }
}
