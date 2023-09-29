part of 'confirm_bloc.dart';

@freezed
abstract class ConfirmEvent with _$ConfirmEvent {
  const factory ConfirmEvent.checkoutLoadingEvent(String id) =
      ConfirmLoadingEvent;
  const factory ConfirmEvent.bookingEvent(
      {required BookingRoomModel bookingInfo}) = ConfirmBookingEvent;
}
