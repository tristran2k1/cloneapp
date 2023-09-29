import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:travo_app/firebase_options.dart';
import 'package:travo_app/l10n/localization.dart';
import 'package:travo_app/l10n/localization_bloc.dart';
import 'package:travo_app/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/utils/utils.dart';
import 'package:travo_app/theme/theme_bloc.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logger.i('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logger.e('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> locator(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterError.onError = (details) {
    logger.e(details.exceptionAsString());
  };

  _initGetIt();

  await Future.wait(([UserPrefs.instance.initialize()]));

  Bloc.observer = const AppBlocObserver();

  await runZonedGuarded(
      () async => runApp(EasyLocalization(
            supportedLocales: L10n.all,
            path: 'assets/l10n',
            fallbackLocale: L10n.all[0],
            child: await builder(),
          )), (error, stackTrace) {
    logger.e(error.toString());
  });
}

void _initGetIt() {
  GetIt.I.registerLazySingleton(() => AuthBloc());
  GetIt.I.registerLazySingleton(() => ThemeBloc());
  GetIt.I.registerLazySingleton(() => LocalizationBloc());
}
