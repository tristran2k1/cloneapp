part of 'favourite_bloc.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = FavouriteInitial;
  const factory FavouriteState.loading() = FavouriteLoading;
  const factory FavouriteState.error(String message) = FavouriteError;
  const factory FavouriteState.loadingSuccess(PlaceList places) =
      FavouriteLoadingSuccess;
}
