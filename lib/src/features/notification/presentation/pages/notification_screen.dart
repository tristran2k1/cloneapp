import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/notification_bloc.dart';
import '../widgets/widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
        centerTitle: true,
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          context
              .read<NotificationBloc>()
              .add(const NotificationEvent.refreshData());
          return state.notifications.isEmpty
              ? const NotificationEmpty()
              : ListView.separated(
                  itemCount: state.notifications.length,
                  itemBuilder: (context, index) {
                    final item = state.notifications[index];
                    return NotificationItem(
                      item: state.notifications[index],
                      onTap: () {
                        context.read<NotificationBloc>().add(
                            NotificationEvent.updateData(
                                item.copyWith(isRead: true)));
                      },
                      onDeleted: () {
                        context
                            .read<NotificationBloc>()
                            .add(NotificationEvent.remove(item));
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  });
        },
      ),
    );
  }
}
