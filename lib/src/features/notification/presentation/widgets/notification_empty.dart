import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';

class NotificationEmpty extends StatelessWidget {
  const NotificationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No notification",
            style: theme.textTheme.titleLarge,
          ),
          Text(
            "When you get notifications, they will show up here",
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
