part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = PaymentInitial;
  const factory PaymentState.loading() = PaymentLoading;
  const factory PaymentState.error(String message) = PaymentError;
  const factory PaymentState.loadingSuccess(List<BookedRoomInfo> rooms) =
      PaymentLoadingSuccess;
}
