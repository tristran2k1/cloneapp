import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

// show subtract icon <=> currentVal != null
// show add icon <=> currentVal == null
class CircleBorderIcon extends StatelessWidget {
  const CircleBorderIcon(
      {super.key, this.currentVal, this.onTap, required this.icon});
  final int? currentVal;
  final VoidCallback? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: IconButton(
        onPressed: onTap,
        icon: Container(
            decoration: _getDecoration(currentVal),
            child: Center(
              child: _getIcon(currentVal),
            )),
      ),
    );
  }

  Decoration _getDecoration(int? val) {
    if (val != null && val <= 1) {
      return AppDecoration.fillpuffyLittleCloud
          .copyWith(shape: BoxShape.circle);
    }
    return AppDecoration.fillTeal.copyWith(shape: BoxShape.circle);
  }

  Icon _getIcon(int? val) {
    if (val != null && val <= 1) {
      return Icon(icon, color: appTheme.whiteA700, size: 16);
    }
    return Icon(icon, color: theme.colorScheme.background, size: 16);
  }
}
