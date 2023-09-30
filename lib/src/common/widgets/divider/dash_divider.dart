import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

class DashDivider extends StatelessWidget {
  const DashDivider({super.key, this.height = 1, this.color, this.axis});
  final double height;
  final Color? color;
  final Axis? axis;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: axis ?? Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color ?? appTheme.gray400),
              ),
            );
          }),
        );
      },
    );
  }
}
