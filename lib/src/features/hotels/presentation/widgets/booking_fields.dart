import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class BookingFields extends StatelessWidget {
  const BookingFields(
      {super.key,
      required this.icon,
      required this.title,
      required this.value,
      this.onPressed});
  final String icon;
  final String title;
  final String value;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: CustomButtonStyles.none,
      child: Container(
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              CustomImageView(
                svgPath: icon,
                height: 32,
                width: 32,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(title,
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: appTheme.gray700)),
                Gap.h8,
                Text(value,
                    style: theme.textTheme.titleSmall!
                        .copyWith(color: appTheme.gray700)),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
