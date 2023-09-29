import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/utils/utils.dart';

class CheckIONotChange extends StatelessWidget {
  const CheckIONotChange(
      {super.key, required this.icon, required this.title, required this.date});
  final String icon;
  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          svgPath: icon,
          height: 32,
          width: 32,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: theme.textTheme.bodySmall!
                    .copyWith(color: appTheme.gray700)),
            Gap.h8,
            Text(formatDate(date),
                style: theme.textTheme.titleSmall!
                    .copyWith(color: appTheme.gray700)),
          ],
        )
      ],
    );
  }

  String formatDate(String date) {
    DateTime dt = DateTime.parse(date);
    return DateTimeCvt().getWeekDayMon(dt);
  }
}
