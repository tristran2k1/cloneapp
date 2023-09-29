import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class FilterField extends StatefulWidget {
  const FilterField({
    super.key,
    required this.icon,
    required this.title,
    this.ontap,
  });
  final String icon;
  final String title;
  final VoidCallback? ontap;

  @override
  State<FilterField> createState() => _FilterFieldState();
}

class _FilterFieldState extends State<FilterField> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.ontap,
      style: CustomButtonStyles.none,
      child: Container(
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              CustomImageView(
                svgPath: widget.icon,
                height: 32,
                width: 32,
              ),
              Text(widget.title,
                  style: CustomTextStyles.titleMediumBluegray900),
            ],
          ),
        ),
      ),
    );
  }
}
