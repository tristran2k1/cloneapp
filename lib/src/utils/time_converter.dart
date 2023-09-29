import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';

class DateTimeCvt {
  String getDayMonYr(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }

  String getWeekDayMonNoDivider(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }

  String getWeekDayMon(DateTime date) {
    return DateFormat('E, d MMM').format(date);
  }

  String getCheckDate(DateTime date) {
    return "${date.add(const Duration(hours: 7))}";
  }
}

class TimestampCvt {
  Timestamp string2Timestamp(String date) {
    DateTime dt = DateTime.parse(date);
    return Timestamp.fromDate(dt);
  }
}
