import 'package:travo_app/locator.dart';
import 'package:travo_app/src/app.dart';

import 'flavor_config.dart';

void main() {
  FlavorConfig(flavor: Flavor.prod);
  locator(() => const MyApp());
}
