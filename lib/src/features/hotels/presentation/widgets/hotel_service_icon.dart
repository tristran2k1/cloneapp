import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class HotelServiceIcon extends StatelessWidget {
  const HotelServiceIcon(
      {super.key, required this.text, required this.svgPath});

  final String text;
  final String svgPath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52,
      child: Column(
        children: [
          CustomImageView(
            margin: EdgeInsets.zero,
            svgPath: svgPath,
            height: 32,
            width: 32,
          ),
          Gap.h12,
          Text(text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                fontSize: 10,
                color: appTheme.black900,
              ))
        ],
      ),
    );
  }
}
