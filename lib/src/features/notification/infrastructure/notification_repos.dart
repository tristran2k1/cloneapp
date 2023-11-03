import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/services/firebase_message.dart';
import 'package:travo_app/src/utils/utils.dart';

class NotificationRepository {
  Future<List<NotificationModel>> getNotifications() async {
    return UserPrefs.I.getNotifications();
  }

  Future<bool> updateNotification(NotificationModel data) async {
    try {
      List<NotificationModel> list = UserPrefs.I.getNotifications();
      final check = list.where((e) => e.id == data.id);
      if (check.isEmpty) {
        list.insert(0, data);
      } else {
        final index = list.indexOf(check.first);
        list[index] = data;
        if (data.isRead) {
          await XFirebaseMessage.I.removeNotification(data.id);
        }
      }
      UserPrefs.I.setNotifications(list);
    } catch (e) {
      logger.e(e);
      return false;
    }
    return true;
  }

  Future<bool> removeNotification(int id) async {
    List<NotificationModel> list = UserPrefs.I.getNotifications();
    await XFirebaseMessage.I.removeNotification(id);
    list.removeWhere((e) => e.id == id);
    UserPrefs.I.setNotifications(list);
    return true;
  }
}
