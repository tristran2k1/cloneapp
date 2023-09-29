part of 'favourite_bloc.dart';

@freezed
abstract class FavouriteEvent with _$FavouriteEvent {
  const factory FavouriteEvent.loadingFavouriteEvent() = LoadingFavouriteEvent;
}
