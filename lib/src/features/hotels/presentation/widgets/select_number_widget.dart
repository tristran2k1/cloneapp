import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

import 'circle_border_icon.dart';

class SelectNumberWidget extends StatefulWidget {
  const SelectNumberWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.onSubstract,
    this.onAdd,
  });
  final String icon;
  final String title;
  final int value;
  final VoidCallback? onSubstract;
  final VoidCallback? onAdd;

  @override
  State<SelectNumberWidget> createState() => _SelectNumberWidgetState();
}

class _SelectNumberWidgetState extends State<SelectNumberWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  svgPath: widget.icon,
                  height: 32,
                  width: 32,
                ),
                Text(widget.title,
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: appTheme.gray700)),
              ],
            ),
            Row(children: [
              CircleBorderIcon(
                  currentVal: widget.value,
                  onTap: widget.onSubstract,
                  icon: Icons.remove),
              Text(
                widget.value.toString(),
                style: theme.textTheme.bodyLarge!
                    .copyWith(color: appTheme.gray700, fontSize: 18),
              ),
              CircleBorderIcon(onTap: widget.onAdd, icon: Icons.add),
            ])
          ],
        ),
      ),
    );
  }
}
