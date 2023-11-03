import 'package:flutter/material.dart';

class DateTimeValueModel with ChangeNotifier {
  DateTime? _value;
  DateTime? get value => _value;
  void setValue(DateTime value) {
    _value = value;
    notifyListeners();
  }
}
