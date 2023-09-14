import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:travo_app/l10n/localization_bloc.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/theme/theme_bloc.dart';

class AppBarWith2Text extends StatelessWidget {
  const AppBarWith2Text(
      {super.key,
      this.child,
      required this.header,
      required this.subscription,
      this.headerStyle,
      this.subscriptionStyle});
  final String header;
  final String subscription;

  final Widget? child;
  final TextStyle? headerStyle;
  final TextStyle? subscriptionStyle;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 200,
          flexibleSpace: LayoutBuilder(builder: (context, constraints) {
            return FlexibleSpaceBar(
              centerTitle: true,
              title: _title,
              background: SvgPicture.asset(
                Assets.images.appbarBackground,
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
            );
          }),
          actions: [
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return IconButton(
                    onPressed: () =>
                        GetIt.I<ThemeBloc>().add(const ChangeThemePressed()),
                    icon: const Icon(Icons.dark_mode));
              },
            ),
            BlocBuilder<LocalizationBloc, LocalizationState>(
              builder: (context, state) {
                return IconButton(
                    onPressed: () {
                      print("object");
                      GetIt.I<LocalizationBloc>()
                          .add(const ChangeLanguageEvent(Locale('vi', '')));
                    },
                    icon: const Icon(Icons.language));
              },
            )
          ],
        ),
        SliverToBoxAdapter(child: child),
      ],
    );
  }

  Widget get _title => RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: header,
          style: headerStyle ??
              CustomTextStyles.headlineSmallWhiteA700.copyWith(height: 1.5),
          children: [
            TextSpan(
              text: '\n$subscription',
              style: subscriptionStyle ?? CustomTextStyles.bodySmallWhiteA700,
            ),
          ],
        ),
      );
}
