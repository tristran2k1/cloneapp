import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    this.alignment,
    this.width,
    this.margin,
    this.focusNode,
    this.icon,
    this.autofocus = true,
    this.textStyle,
    this.items,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
    this.labelText,
    this.labelStyle,
  });

  final Alignment? alignment;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final FocusNode? focusNode;
  final Widget? icon;
  final bool? autofocus;
  final TextStyle? textStyle;
  final List<String>? items;
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.p12,
            horizontal: Sizes.p15,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: DropdownButtonFormField(
            focusNode: focusNode ?? FocusNode(),
            icon: icon,
            autofocus: autofocus!,
            style: textStyle ?? theme.textTheme.titleSmall,
            items: items?.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  overflow: TextOverflow.ellipsis,
                  style: hintStyle ?? theme.textTheme.titleSmall,
                ),
              );
            }).toList(),
            decoration: decoration,
            validator: validator,
            onChanged: (value) {
              onChanged!(value.toString());
            },
          ),
        ),
      );
  InputDecoration get decoration => InputDecoration(
        labelText: labelText ?? "",
        labelStyle: labelStyle,
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.titleSmall,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.zero,
        fillColor: fillColor ?? appTheme.whiteA700,
        border: InputBorder.none,
      );
}
