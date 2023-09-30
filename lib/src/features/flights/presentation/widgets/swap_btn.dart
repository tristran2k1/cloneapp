import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

class SwapButton extends StatelessWidget {
  const SwapButton({super.key, this.onTap});

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Container(
          decoration:
              AppDecoration.fillindigo50.copyWith(shape: BoxShape.circle),
          child: const Center(
            child: Icon(Icons.swap_vert, color: Colors.black, size: 20),
          )),
    );
  }
}
