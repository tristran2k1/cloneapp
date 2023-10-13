import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key,
    this.text,
    this.margin,
    this.child,
  });

  final String? text;
  final EdgeInsetsGeometry? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: text != null
          ? Text(
              text!,
              style: theme.textTheme.headlineLarge!.copyWith(
                color: appTheme.whiteA700,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            )
          : child,
    );
  }
}
