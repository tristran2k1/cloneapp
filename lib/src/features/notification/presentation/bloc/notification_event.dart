part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.refreshData() = NotificationEventRefreshData;
  const factory NotificationEvent.updateData(NotificationModel data) =
      NotificationEventAddData;
  const factory NotificationEvent.remove(NotificationModel data) =
      NotificationEventRemove;
}
