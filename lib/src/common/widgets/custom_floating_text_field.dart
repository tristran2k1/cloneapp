import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

class CustomFloatingTextField extends StatelessWidget {
  const CustomFloatingTextField({
    super.key,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.validator,
    this.alignment,
    this.prefixIcon,
    this.boxDecoration,
    this.boxPadding,
    this.onChanged,
  });

  final Alignment? alignment;
  final EdgeInsetsGeometry? margin;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? labelText;
  final TextStyle? labelStyle;
  final Widget? prefix;
  final Widget? prefixIcon;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final FormFieldValidator<String>? validator;
  final Decoration? boxDecoration;
  final EdgeInsets? boxPadding;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: floatingTextFieldWidget,
          )
        : floatingTextFieldWidget;
  }

  Widget get floatingTextFieldWidget => Container(
        padding: boxPadding ??
            const EdgeInsets.symmetric(
              vertical: Sizes.p12,
              horizontal: Sizes.p15,
            ),
        decoration: boxDecoration ??
            AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.titleMediumBlack900,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
          onChanged: onChanged,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ?? theme.textTheme.titleSmall,
        labelText: labelText,
        labelStyle: labelStyle,
        prefix: prefix,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.zero,
        fillColor: appTheme.whiteA700,
        border: InputBorder.none,
      );
}
