import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class CustomElevatedButton extends BaseButton {
  const CustomElevatedButton({
    super.key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.contentPadding,
    this.mainAxisContentAlignment,
    this.isLoading = false,
    super.margin,
    super.onTap,
    super.buttonStyle,
    super.alignment,
    super.buttonTextStyle,
    super.isDisabled,
    super.height,
    super.width,
    required super.text,
  });

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final bool isLoading;
  final EdgeInsets? contentPadding;
  final MainAxisAlignment? mainAxisContentAlignment;

  @override
  Widget build(BuildContext context) {
    return buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
        height: height ?? 50,
        width: width,
        margin: margin,
        decoration: decoration,
        child: ElevatedButton(
          style: buttonStyle ??
              ElevatedButton.styleFrom(
                elevation: 0.0,
                shadowColor: Colors.transparent,
              ),
          onPressed: isDisabled ?? false ? null : onTap ?? () {},
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : Padding(
                  padding: contentPadding ?? EdgeInsets.zero,
                  child: Row(
                    mainAxisAlignment:
                        mainAxisContentAlignment ?? MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      leftIcon ?? const SizedBox.shrink(),
                      leftIcon != null || rightIcon != null
                          ? Flexible(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                text,
                                style: buttonTextStyle ??
                                    theme.textTheme.titleMedium,
                              ),
                            )
                          : Text(
                              overflow: TextOverflow.ellipsis,
                              text,
                              style: buttonTextStyle ??
                                  theme.textTheme.titleMedium,
                            ),
                      rightIcon ?? const SizedBox.shrink(),
                    ],
                  ),
                ),
        ),
      );
}
