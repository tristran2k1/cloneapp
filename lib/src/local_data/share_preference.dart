import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/utils.dart';

// ignore: camel_case_types
class keys {
  static const String hasOnBoarded = 'hasOnBoarded';
  static const String user = 'user';
  static const String pass = 'pass';
  static const String theme = 'theme';
  static const String favourite = 'favourite';
  static const String noti = 'noti';
  static const String lang = 'lang';
  static const String screenshot = 'screenshot';
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

  // onBoarded
  void setOnBoarded(bool value) {
    _prefs.setBool(keys.hasOnBoarded, value);
  }

  bool getOnBoarded() {
    return _prefs.getBool(keys.hasOnBoarded) ?? false;
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

  void removeUser() {
    _prefs.remove(keys.user);
    removePass();
  }

  // pass
  void setPass(String? value) {
    if (value == null) {
      _prefs.remove(keys.pass);
    } else {
      _prefs.setString(keys.pass, value);
    }
  }

  String getPass() {
    final value = _prefs.getString(keys.pass);
    return value ?? '';
  }

  void removePass() {
    _prefs.remove(keys.pass);
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

  // language
  void setEngLanguage(bool value) {
    _prefs.setBool(keys.lang, value);
  }

  bool getEngLanguage() {
    return _prefs.getBool(keys.lang) ?? true;
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

  // notifications
  List<NotificationModel> getNotifications() {
    _prefs.reload();
    final value = _prefs.getStringList(keys.noti);
    return value
            ?.map((e) => NotificationModel.fromJson(jsonDecode(e)))
            .toList() ??
        [];
  }

  void setNotifications(List<NotificationModel> value) {
    _prefs.setStringList(
        keys.noti, value.map((e) => jsonEncode(e.toJson())).toList());
  }

  void addNotification(NotificationModel value) {
    List<NotificationModel> list = getNotifications();
    list.insert(0, value);
    setNotifications(list);
  }

  // screenshot
  void setScreenshot(bool value) {
    _prefs.setBool(keys.screenshot, value);
  }

  bool getScreenshot() {
    return _prefs.getBool(keys.screenshot) ?? true;
  }
}
