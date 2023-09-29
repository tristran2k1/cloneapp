import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/local_data/share_preference.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeStateInitial()) {
    on<ChangeThemePressed>(_handleThemeChanged);
  }

  FutureOr<void> _handleThemeChanged(
      ChangeThemePressed event, Emitter<ThemeState> emit) {
    emit(const ThemeStateWaiting());

    String curTheme = UserPrefs.I.getTheme();
    curTheme == 'light'
        ? ThemeHelper().changeTheme("dark")
        : ThemeHelper().changeTheme("light");
    UserPrefs.I.setTheme(curTheme == 'light' ? 'dark' : 'light');
    emit(ThemeState.themeChangedSuccess(ThemeHelper().themeData()));
  }
}
