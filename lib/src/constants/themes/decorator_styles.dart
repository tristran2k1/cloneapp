import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange300,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red300,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal300,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientPrimaryToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(-0.5, 0.5),
          end: const Alignment(0.5, 1.5),
          colors: [
            theme.colorScheme.primary,
            appTheme.indigo400,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.indigo40001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, -5),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder4 => BorderRadius.circular(4);
  static BorderRadius get roundedBorder8 => BorderRadius.circular(8);
  static BorderRadius get roundedBorder12 => BorderRadius.circular(12);
  static BorderRadius get roundedBorder20 => BorderRadius.circular(20);
  static BorderRadius get roundedBorder28 => BorderRadius.circular(28);
}
