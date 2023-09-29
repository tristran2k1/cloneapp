import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:travo_app/src/constants/constants.dart';

class PlaceWithVoting extends StatelessWidget {
  const PlaceWithVoting(
      {super.key, required this.placeName, required this.rating});
  final String placeName;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            placeName,
            style: CustomTextStyles.titleSmallWhiteA700,
          ),
          Gap.h10,
          ratingWidget(rating),
        ],
      ),
    );
  }

  Widget ratingWidget(double rating) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder4,
        color: appTheme.whiteA700.withOpacity(0.5),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(FontAwesome.star, size: 16, color: theme.colorScheme.onSurface),
        Gap.w5,
        Text(
          rating.toString(),
          style: theme.textTheme.bodySmall!,
        )
      ]),
    );
  }
}
