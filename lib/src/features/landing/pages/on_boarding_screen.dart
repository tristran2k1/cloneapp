import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class OnBoardingScreen extends PageViewModel {
  final BuildContext context;
  final String imagePath;
  final double imgWidthSize;
  final String textTile;
  final String textBody;
  final Alignment? imgAlignment;

  OnBoardingScreen({
    required this.context,
    required this.imagePath,
    required this.imgWidthSize,
    required this.textTile,
    required this.textBody,
    this.imgAlignment,
  }) : super(
          titleWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              CustomImageView(
                margin: EdgeInsets.zero,
                imagePath: imagePath,
                width: imgWidthSize,
                fit: BoxFit.fitWidth,
                alignment: imgAlignment,
              ),
              Gap.h48,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(textTile, style: theme.textTheme.headlineSmall),
              ),
              Gap.h25,
            ],
          ),
          bodyWidget: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 50),
            child: Text(textBody, style: theme.textTheme.bodyMedium),
          ),
          decoration: const PageDecoration(
            titlePadding: EdgeInsets.zero,
            bodyPadding: EdgeInsets.zero,
            contentMargin: EdgeInsets.zero,
          ),
        );
}
