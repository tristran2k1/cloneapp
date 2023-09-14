import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/routes/routes.dart';

class HomeNavigationItems {
  static const home = HomeNavigationItem(
    route: AppRoute.home,
    path: '/home',
    icon: Entypo.home,
    label: 'Home',
    view: HomeScreen(),
  );

  static const favourite = HomeNavigationItem(
    route: AppRoute.favourite,
    path: '/favourite',
    icon: Entypo.heart,
    label: 'Favourite',
    view: FavouriteScreen(),
  );

  static const payment = HomeNavigationItem(
    route: AppRoute.payment,
    path: '/payment',
    icon: Entypo.briefcase,
    label: 'Payment',
    view: PaymentScreen(),
  );

  static const user = HomeNavigationItem(
    route: AppRoute.user,
    path: '/user',
    icon: Iconic.user,
    label: 'User',
    view: UserScreen(),
  );

  static final items = <HomeNavigationItem>[
    home,
    favourite,
    payment,
    user,
  ];
}
