import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/checkout/checkout.dart';

class FlightBookingTitle extends StatelessWidget {
  const FlightBookingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42).copyWith(top: 10),
      child: Row(
        children: [
          Text("JKT", style: CustomTextStyles.headlineSmallWhiteA700),
          const StepDivider(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 2),
          ),
          Transform.rotate(
              angle: pi / 2,
              child: const Icon(
                Icons.flight,
                size: 24,
                color: Colors.white,
              )),
          const StepDivider(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 2),
          ),
          Text("SBY", style: CustomTextStyles.headlineSmallWhiteA700),
        ],
      ),
    );
  }
}
