import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class TicketDivider extends StatelessWidget {
  const TicketDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.rotate(angle: pi, child: const Semicircle(diameter: 30)),
        const Expanded(child: DashDivider()),
        const Semicircle(diameter: 30),
      ],
    );
  }
}

class Semicircle extends StatelessWidget {
  final double diameter;

  const Semicircle({super.key, this.diameter = 200});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: diameter,
      width: diameter / 2,
      decoration: BoxDecoration(
          color: theme.colorScheme.background,
          shape: BoxShape.rectangle,
          borderRadius:
              const BorderRadius.horizontal(left: Radius.circular(50))),
    );
  }
}
