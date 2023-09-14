part of 'localization_bloc.dart';

@freezed
class LocalizationState with _$LocalizationState {
  const factory LocalizationState.initial() = LocalizationStateInitial;
  const factory LocalizationState.error(String message) =
      LocalizationStateError;
  const factory LocalizationState.waiting() = LocalizationStateWaiting;
  const factory LocalizationState.changedLanguage(Locale locale) =
      LocalizationStateChangedLanguage;
}
