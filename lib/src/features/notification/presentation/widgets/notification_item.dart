import 'package:flutter/material.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/time_converter.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem(
      {super.key, required this.item, this.onTap, this.onDeleted});
  final NotificationModel item;
  final void Function()? onTap;
  final void Function()? onDeleted;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(item.hashCode.toString()),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) async {
        onDeleted?.call();
        return false;
      },
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: Colors.red,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 90,
          color: item.isRead ? null : appTheme.gray500,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      item.body,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: appTheme.blueGray50),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
              Text(DateTimeCvt().toNotiDateString(item.createAt)),
            ],
          ),
        ),
      ),
    );
  }
}
