import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/time_converter.dart';

import 'dropdown_btn.dart';

class SubtitleFlightBooking extends StatelessWidget {
  const SubtitleFlightBooking({super.key, required this.tripInfo});
  final TripInfo tripInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            DateTimeCvt()
                .getFullDateWithMediumMon(tripInfo.date ?? DateTime.now()),
            style: theme.textTheme.bodySmall),
        Gap.w5,
        const Icon(FontAwesome.circle, size: 8, color: Colors.white),
        Gap.w5,
        Text("${tripInfo.passengers} Adult", style: theme.textTheme.bodySmall),
        Gap.w5,
        const Icon(FontAwesome.circle, size: 8, color: Colors.white),
        Gap.w5,
        Text(tripInfo.classSeat, style: theme.textTheme.bodySmall),
        Gap.w5,
        const DropdownBtn(),
      ],
    );
  }
}
