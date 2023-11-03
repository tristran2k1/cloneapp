import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    required int id,
    required String title,
    required String body,
    required DateTime createAt,
    @Default(false) bool isRead,
  }) = _NotificationModel;

  factory NotificationModel.init(
      {required String title, required String body, DateTime? time}) {
    final now = time ?? DateTime.now();
    return NotificationModel(
        id: now.hashCode, title: title, body: body, createAt: now);
  }

  factory NotificationModel.empty() {
    final now = DateTime.now();
    return NotificationModel(
        id: now.hashCode, title: "", body: "", createAt: now);
  }

  factory NotificationModel.fromJson(Map<String, Object?> json) =>
      _$NotificationModelFromJson(json);
}
