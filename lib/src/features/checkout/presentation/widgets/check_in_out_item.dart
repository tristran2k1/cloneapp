import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class CheckInOutItem extends StatelessWidget {
  const CheckInOutItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.date,
      required this.selectedDate,
      required this.firstDate,
      required this.initialDate});
  final String icon;
  final String title;
  final String date;
  final Function selectedDate;
  final DateTime initialDate;
  final DateTime firstDate;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          currentDate: DateTime.now(),
          initialDate: initialDate,
          firstDate: firstDate,
          lastDate: DateTime(2100),
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: theme.colorScheme.primary,
                  onPrimary: appTheme.blueGray900,
                  onSurface: theme.colorScheme.primary,
                ),
              ),
              child: child!,
            );
          },
        );
        if (picked != null) {
          selectedDate(picked);
        }
      },
      style: CustomButtonStyles.none,
      child: Row(
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
              Text(date,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.gray700)),
            ],
          )
        ],
      ),
    );
  }
}
