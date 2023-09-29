part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = CheckoutInitial;
  const factory CheckoutState.loading() = CheckoutLoading;
  const factory CheckoutState.error(String message) = CheckoutError;
  const factory CheckoutState.loadingSuccess(RoomModel room) =
      CheckoutLoadingSuccess;
}
