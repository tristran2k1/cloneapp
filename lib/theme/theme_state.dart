part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = ThemeStateInitial;
  const factory ThemeState.waiting() = ThemeStateWaiting;
  const factory ThemeState.themeChangedSuccess(ThemeData theme) =
      ThemeChangedSuccess;
  const factory ThemeState.error(String message) = ThemeStateError;
}
