import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

class StepItem extends StatelessWidget {
  const StepItem({
    super.key,
    required this.isDone,
    required this.numStep,
    required this.title,
  });
  final bool isDone;
  final int numStep;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 5),
            height: 24,
            width: 24,
            decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
                color: isDone == true
                    ? appTheme.whiteA700
                    : appTheme.whiteA700.withOpacity(0.3)),
            child: Center(
              child: Text(numStep.toString(),
                  style: isDone == true
                      ? theme.textTheme.labelLarge
                      : theme.textTheme.labelMedium),
            )),
        Text(title, style: theme.textTheme.labelMedium),
      ],
    );
  }
}
