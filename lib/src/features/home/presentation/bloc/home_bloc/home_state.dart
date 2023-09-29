part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.error(String message) = HomeError;
  const factory HomeState.loadingSuccess(PlaceList places) = HomeLoadingSuccess;
}
