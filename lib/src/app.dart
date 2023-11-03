import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:travo_app/l10n/localization.dart';
import 'package:travo_app/l10n/localization_bloc.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/routes/coordinator.dart';
import 'package:travo_app/src/routes/routes.dart';
import 'package:travo_app/src/services/firebase_message.dart';
import 'package:travo_app/src/utils/utils.dart';
import 'package:travo_app/theme/theme_bloc.dart';

import 'features/notification/notification.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                GetIt.I<AuthBloc>()..add(const LoginSavedAccountEvent())),
        BlocProvider(create: (context) => GetIt.I<ThemeBloc>()),
        BlocProvider(create: (context) => GetIt.I<LocalizationBloc>()),
        BlocProvider(create: (context) => GetIt.I<NotificationBloc>())
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              authenticated: (user) {
                // if (LCoordinator().location.contains('noti')) {
                //   LCoordinator().showNotification();
                // }
                LCoordinator().showHomeScreen();
                GetIt.I<NotificationBloc>()
                    .add(const NotificationEvent.refreshData());
                XFirebaseMessage.I.registerTokenFCM();
              },
              unauthenticated: () {
                if (UserPrefs.I.getOnBoarded()) {
                  LCoordinator().showLoginScreen();
                } else {
                  LCoordinator().showOnboardScreen();
                }
              },
              error: (mess) {
                logger.e(mess);
              });
        },
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return GestureDetector(
                onTap: () {
                  WidgetsBinding.instance.focusManager.primaryFocus!.unfocus();
                },
                child: MaterialApp.router(
                  locale: L10n.currentLocale,
                  theme: state.maybeWhen(
                    orElse: () => theme,
                    themeChangedSuccess: (theme) => theme,
                  ),
                  builder: BotToastInit(),
                  routerConfig: XAppRouter.router,
                  debugShowCheckedModeBanner: false,
                  supportedLocales: context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,
                ));
          },
        ),
      ),
    );
  }
}
