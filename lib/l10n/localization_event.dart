part of 'localization_bloc.dart';

@freezed
class LocalizationEvent with _$LocalizationEvent {
  // const factory LocalizationEvent.initial() = Initial;
  const factory LocalizationEvent.changeLanguageEvent(
      BuildContext context, bool isEnglish) = ChangeLanguageEvent;
}
