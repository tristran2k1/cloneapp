import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/l10n/localization.dart';

part 'localization_bloc.freezed.dart';
part 'localization_event.dart';
part 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(const LocalizationStateInitial()) {
    on<ChangeLanguageEvent>(_handleChangeLanguageEvent);
  }

  FutureOr<void> _handleChangeLanguageEvent(
      ChangeLanguageEvent event, Emitter<LocalizationState> emit) {
    Locale? currentLocal = EasyLocalization.of(event.context)!.currentLocale;
    if (currentLocal == L10n.all[0]) {
      EasyLocalization.of(event.context)!.setLocale(L10n.all[1]);
    } else {
      EasyLocalization.of(event.context)!.setLocale(L10n.all[0]);
    }
    emit(const LocalizationStateChangedLanguage());
  }
}
