import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travo_app/src/models/models.dart';

import '../../infrastructure/notification_repos.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationState.initial()) {
    on<NotificationEventRefreshData>((event, emit) async {
      List<NotificationModel> list = await notificationRepo.getNotifications();
      cache = list;
      emit(state.copyWith(notifications: list));
    });

    on<NotificationEventAddData>((event, emit) async {
      await notificationRepo.updateNotification(event.data);
      List<NotificationModel> list = await notificationRepo.getNotifications();
      cache = list;
      emit(state.copyWith(notifications: list));
    });

    on<NotificationEventRemove>((event, emit) async {
      await notificationRepo.removeNotification(event.data.id);
      List<NotificationModel> list = await notificationRepo.getNotifications();
      cache = list;
      emit(state.copyWith(notifications: list));
    });
  }

  List<NotificationModel> cache = [];
  final notificationRepo = NotificationRepository();
}
