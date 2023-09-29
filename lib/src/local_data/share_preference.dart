import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

// ignore: camel_case_types
class keys {
  static const String user = 'user';
  static const String theme = 'theme';
  static const String favourite = 'favourite';
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

  // user
  void setUser(UserAccount? value) {
    if (value == null) {
      _prefs.remove(keys.user);
    } else {
      _prefs.setString(keys.user, jsonEncode(value.toJson()));
    }
  }

  UserAccount getUser() {
    final value = _prefs.getString(keys.user);
    try {
      if (value == null) return UserAccount.empty();
      return UserAccount.fromJson(jsonDecode(value));
    } catch (e) {
      logger.e(e.toString());
      return UserAccount.empty();
    }
  }

  // theme
  void setTheme(String? value) {
    if (value == null) {
      _prefs.remove(keys.theme);
    } else {
      _prefs.setString(keys.theme, value);
    }
  }

  String getTheme() {
    final value = _prefs.getString(keys.theme);
    return value ?? 'light';
  }

  // favourite places
  void addFavourite(String value) {
    final places = _prefs.getStringList(keys.favourite) ?? [];
    _prefs.setStringList(keys.favourite, [...places, value]);
  }

  void removeFavourite(String value) {
    final places = _prefs.getStringList(keys.favourite) ?? [];
    _prefs.setStringList(
        keys.favourite, places.where((element) => element != value).toList());
  }

  List<String> getFavourite() {
    return _prefs.getStringList(keys.favourite) ?? [];
  }
}
