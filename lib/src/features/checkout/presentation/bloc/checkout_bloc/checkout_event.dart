part of 'checkout_bloc.dart';

@freezed
abstract class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.checkoutLoadingEvent(String id) =
      CheckoutLoadingEvent;
}
