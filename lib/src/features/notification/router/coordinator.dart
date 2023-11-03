// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:go_router/go_router.dart';
// import 'package:travo_app/src/routes/base_coordinator.dart';
// import 'package:travo_app/src/routes/routes.dart';
//
// import '../presentation/pages/pages.dart';
//
// enum NotiRoute { notification }
//
// class NotificationCoordinator extends BaseCoordinator {
//   static final router = [
//     GoRoute(
//         parentNavigatorKey: XAppRouter.navigatorKey,
//         name: NotiRoute.notification.name,
//         path: 'notification',
//         pageBuilder: (context, state) => DefaultTransition(
//               child: NotificationScreen(message: state.extra as RemoteMessage),
//             ))
//   ];
//
//   void goToNotification({required RemoteMessage message}) {
//     pushNamed(NotiRoute.notification.name, extra: message);
//   }
// }
