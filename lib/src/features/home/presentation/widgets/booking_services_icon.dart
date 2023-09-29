import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

// ignore: must_be_immutable
class BookingServicesIcon extends StatelessWidget {
  BookingServicesIcon({
    super.key,
    required this.title,
    required this.imagePath,
    required this.backgroundColor,
    this.height = 24,
    this.width = 24,
    this.marginIcon = EdgeInsets.zero,
    this.onTap,
  });
  final String title;
  final String imagePath;
  final Color backgroundColor;
  final double height;
  final double width;
  final EdgeInsets marginIcon;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              height: 75,
              decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                  color: backgroundColor),
              child: CustomImageView(
                svgPath: imagePath,
                height: height,
                width: width,
                alignment: Alignment.center,
                margin: marginIcon,
              ),
            ),
            Gap.h15,
            Text(
              title,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
