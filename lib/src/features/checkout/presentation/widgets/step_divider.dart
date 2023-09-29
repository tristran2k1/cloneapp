import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';

class StepDivider extends StatelessWidget {
  const StepDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        child: CustomDivider(),
      ),
    );
  }
}
