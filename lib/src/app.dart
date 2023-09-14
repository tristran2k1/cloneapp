import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:travo_app/l10n/localization_bloc.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:travo_app/src/routes/coordinator.dart';
import 'package:travo_app/src/routes/routes.dart';
import 'package:travo_app/src/utils/utils.dart';
import 'package:travo_app/theme/theme_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => GetIt.I<AuthBloc>()..add(const InitialApp())),
        BlocProvider(create: (context) => GetIt.I<ThemeBloc>()),
        BlocProvider(create: (context) => GetIt.I<LocalizationBloc>())
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              unauthenticated: () {
                if (!LCoordinator().location.contains('/login')) {
                  LCoordinator().showLoginScreen();
                }
              },
              error: (mess) {
                logger.e(mess);
              });
        },
        child: BlocBuilder<LocalizationBloc, LocalizationState>(
          builder: (context, state) {
            return MaterialApp.router(
              locale: state.maybeWhen(
                orElse: () => context.locale,
                changedLanguage: (l) => l,
              ),
              theme: theme,
              routerConfig: XAppRouter.router,
              debugShowCheckedModeBanner: false,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
            );
          },
        ),
      ),
    );
  }
}
