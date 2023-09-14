/*
  This is implement build in share_preference.
 */
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _keys {
  static const String user = 'user';
  static const String theme = 'theme';
  static const String local = 'local';
}

class UserPrefs {
  factory UserPrefs() => instance;
  UserPrefs._internal();

  static final UserPrefs instance = UserPrefs._internal();
  static UserPrefs get I => instance;
  late SharedPreferences _prefs;
  Future initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // // user
  // void setUser(User? value) {
  //   if (value == null) {
  //     _prefs.remove(_keys.user);
  //   } else {
  //     _prefs.setString(_keys.user, jsonEncode(value.toJson()));
  //   }
  // }

  // User getUser() {
  //   final value = _prefs.getString(_keys.user);
  //   try {
  //     if (value == null) return User.empty();
  //     return User.fromJson(jsonDecode(value));
  //   } catch (e) {
  //     logger.e(e.toString());
  //     return User.empty();
  //   }
  // }

  // theme
  void setTheme(String? value) {
    if (value == null) {
      _prefs.remove(_keys.theme);
    } else {
      _prefs.setString(_keys.theme, value);
    }
  }

  String getTheme() {
    final value = _prefs.getString(_keys.theme);
    return value ?? 'light';
  }

  // localization
  void setLanguage(Locale? value) {
    if (value == null) {
      _prefs.remove(_keys.local);
    } else {
      if (value.languageCode == 'vi') {
        _prefs.setString(_keys.local, 'vi');
      } else {
        _prefs.setString(_keys.local, 'en');
      }
    }
  }

  Locale getLanguage() {
    final value = _prefs.getString(_keys.local);
    if (value == 'vi') return const Locale('vi');
    return const Locale('en');
  }
}
