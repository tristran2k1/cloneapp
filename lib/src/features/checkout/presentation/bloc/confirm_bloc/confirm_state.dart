part of 'confirm_bloc.dart';

@freezed
class ConfirmState with _$ConfirmState {
  const factory ConfirmState.initial() = ConfirmInitial;
  const factory ConfirmState.loading() = ConfirmLoading;
  const factory ConfirmState.error(String message) = ConfirmError;
  const factory ConfirmState.loadingSuccess(RoomModel room) =
      ConfirmLoadingSuccess;
  const factory ConfirmState.bookingSuccess() = ConfirmBookingSuccess;
}
