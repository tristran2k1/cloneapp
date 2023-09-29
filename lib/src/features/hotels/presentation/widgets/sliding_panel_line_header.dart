import 'package:flutter/material.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';
import 'package:travo_app/src/constants/constants.dart';

class LineHeader extends StatelessWidget {
  const LineHeader({super.key, required this.ctx});
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ForceDraggableWidget(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Gap.h20,
                Container(
                  width: 75,
                  height: 5,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray900,
                      borderRadius: BorderRadiusStyle.roundedBorder12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
