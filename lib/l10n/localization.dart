import 'package:flutter/material.dart';
import 'package:travo_app/src/local_data/share_preference.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('vi'),
  ];
  static Locale get currentLocale =>
      UserPrefs.I.getEngLanguage() ? L10n.all[0] : L10n.all[1];
}

// flutter pub run easy_localization:generate -S assets/l10n -f keys -O lib/l10n -o locale_keys.g.dart
