part of 'payment_bloc.dart';

@freezed
abstract class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.paymentLoadingEvent(String uid) =
      PaymentLoadingEvent;
}
