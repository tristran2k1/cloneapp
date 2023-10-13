import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:travo_app/src/constants/constants.dart';

class DropdownBtn extends StatelessWidget {
  const DropdownBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: CustomButtonStyles.none.copyWith(
        minimumSize: const MaterialStatePropertyAll(Size.zero),
        padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: const Center(
            child: Icon(Entypo.down_open_big, color: Colors.black, size: 8)),
      ),
    );
  }
}
