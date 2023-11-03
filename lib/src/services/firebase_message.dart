import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:travo_app/src/features/notification/notification.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/models/models.dart';

import '../utils/utils.dart';

class XFirebaseMessage {
  factory XFirebaseMessage() => instance;
  XFirebaseMessage._internal();

  static final XFirebaseMessage instance = XFirebaseMessage._internal();
  static XFirebaseMessage get I => instance;

  String? currentToken;
  late Stream<String> _tokenStream;

  late FirebaseMessaging messaging;

  bool isNotificationsInitialized = false;

  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'travo_application', // id
    'Travo', // title
  );

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    messaging = FirebaseMessaging.instance;
    _tokenStream = messaging.onTokenRefresh;

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    await setupNotification();

    // NOTE: Request Permission doesn't necessarily implemented here.
    // You should follow the workflow of your project
    await requestPermission();
  }

  // setup local notification
  // create a notification channel in android (if it not exist)
  Future<void> setupNotification() async {
    if (isNotificationsInitialized) {
      return;
    }

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("ic_notification");

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveLocalNotification);

    flutterLocalNotificationsPlugin
        .getNotificationAppLaunchDetails()
        .then((value) {
      if (value != null &&
          value.notificationResponse != null &&
          value.didNotificationLaunchApp == true) {
        onDidReceiveLocalNotification(value.notificationResponse!);
      }
    });

    configForegroundNotification();
    configOnMessageOpenApp();
    isNotificationsInitialized = true;
  }

  Future<void> requestPermission() async {
    try {
      NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      logger.i('User granted permission: ${settings.authorizationStatus}');
    } catch (e) {
      logger.e(e.toString());
    }
  }

  void configForegroundNotification() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showLocalNotification(message);
    });
  }

  Future<void> configOnMessageOpenApp() async {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      logger.i(
          "onMessageOpenedApp: ${message.notification?.title} ${message.notification?.body}");
      //TODO: Implement handle notification when app is opening.
    });
  }

  @pragma('vm:entry-point')
  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    // If you're going to use other Firebase services in the background, such as Firestore,
    // make sure you call `initializeApp` before using other Firebase services.
    await Firebase.initializeApp();
    await XFirebaseMessage().setupNotification();
    await UserPrefs.I.initialize();

    if (message.notification == null) {
      XFirebaseMessage().showLocalNotification(message);
    }
  }

  Future<void> showLocalNotification(RemoteMessage message) async {
    final String title = message.notification?.title ?? "";
    final String body = message.notification?.body ?? "";
    if (title.isNotEmpty) {
      addNotification(title, body);
      flutterLocalNotificationsPlugin.show(
        message.sentTime.hashCode,
        title,
        body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            icon: "ic_notification",
          ),
        ),
      );
    }
  }

  void registerTokenFCM() async {
    // If you want to get a token from the web, you can find the documentation
    // at https://firebase.flutter.dev/docs/messaging/usage/#web-tokens
    messaging.getToken().then((setToken)).onError((error, stackTrace) {
      logger.e(error.toString());
    });

    _tokenStream.listen(setToken);
  }

  void setToken(String? token) {
    logger.i('FCM Token: $token');
    if (token != null) {
      currentToken = token;
    }
  }

  Future<void> removeNotification(int id) async {
    return flutterLocalNotificationsPlugin.cancel(id);
  }

  // update notification state : isRead ?
  void onDidReceiveLocalNotification(NotificationResponse response) async {
    final noti =
        UserPrefs.I.getNotifications().where((e) => e.id == response.id);
    if (noti.isNotEmpty) {
      GetIt.I<NotificationBloc>()
          .add(NotificationEvent.updateData(noti.first.copyWith(isRead: true)));
    }
  }

  void addNotification(String title, String body) {
    // FlutterAppBadger.updateBadgeCount(1);
    final noti = NotificationModel.init(title: title, body: body);
    try {
      GetIt.I<NotificationBloc>().add(NotificationEvent.updateData(noti));
    } catch (e) {
      UserPrefs.I.addNotification(noti);
    }
  }
}
