import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
import 'package:travo_app/l10n/locale_keys.g.dart';
import 'package:travo_app/l10n/localization.dart';
import 'package:travo_app/l10n/localization_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/widgets/text_button_with_no_padding.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/auth.dart';
import 'package:travo_app/src/features/auth/presentation/widgets/app_bar_with_two_text.dart';
import 'package:travo_app/src/routes/coordinator.dart';
import 'package:travo_app/theme/theme_bloc.dart';

import '../../bloc/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _focusEmail = FocusNode();
  final FocusNode _focusPass = FocusNode();
  SimpleFontelicoProgressDialog? _loadingProgressDialog;

  bool _passwordVisible = false;
  bool _remembered = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _focusEmail.dispose();
    _focusPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationBloc, LocalizationState>(
      builder: (context, state) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    _focusEmail.unfocus();
                    _focusPass.unfocus();
                  },
                  child: Scaffold(
                      backgroundColor: theme.colorScheme.background,
                      resizeToAvoidBottomInset: false,
                      body: AppBarWith2Text(
                        // header: AppLocalization.of(context)
                        //     .getTranslatedValues('login'),
                        header: LocaleKeys.log_in_no_space.tr(),
                        subscription: LocaleKeys.welcome.tr(),
                        child: Form(
                          key: _formKey,
                          child: ListView(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Sizes.p25),
                            shrinkWrap: true,
                            children: [
                              Gap.h25,
                              Wrap(
                                runSpacing: Sizes.p20,
                                children: [
                                  _emailTextField,
                                  _passwordTextField,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      _rememberPassword,
                                      _forgotPassword,
                                    ],
                                  ),
                                  _loginBtn,
                                  HorizontalDividerWithText(
                                      content: LocaleKeys.or_login_with.tr()),
                                  Row(
                                    children: [
                                      _authByGoogle,
                                      Gap.w15,
                                      _authByFacebook,
                                    ],
                                  ),
                                  _signUpAccount,
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget get _authByFacebook => Expanded(
        child: CustomElevatedButton(
          text: LocaleKeys.facebook.tr(),
          leftIcon: CustomImageView(
            svgPath: Assets.images.imgFacebook,
          ),
          buttonStyle: CustomButtonStyles.fillIndigo,
        ),
      );

  Widget get _authByGoogle => Expanded(
          child: CustomElevatedButton(
        text: LocaleKeys.google.tr(),
        leftIcon: CustomImageView(
          svgPath: Assets.images.imgGoogle,
        ),
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray900,
      ));

  Widget get _loginBtn => CustomElevatedButton(
        text: LocaleKeys.log_in.tr(),
        buttonStyle: CustomButtonStyles.none,
        decoration: AppDecoration.gradientPrimaryToIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
        onTap: () {
          context.read<AuthBloc>().add(const LoginPressed());
          LCoordinator().showHomeScreen();
        },
      );

  Widget get _signUpAccount => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.dont_have_account.tr(),
            style: CustomTextStyles.bodyMediumBluegray900_1,
          ),
          TextButtonWithNoPadding(
            text: LocaleKeys.sign_up.tr(),
            onPressed: () {
              context.read<AuthBloc>().add(const InitialApp());
              AuthCoordinator().showSignUpPage();
            },
          ),
        ],
      );

  Widget get _forgotPassword => TextButtonWithNoPadding(
        text: LocaleKeys.forgot_password.tr(),
        textStyle: CustomTextStyles.bodyMediumBluegray900,
        onPressed: () => AuthCoordinator().showForgotPasswordPage(),
      );

  Widget get _rememberPassword => CustomCheckboxButton(
      text: LocaleKeys.remember_me.tr(),
      value: _remembered,
      onChange: (value) {
        setState(() {
          _remembered = value;
        });
      });

  Widget get _passwordTextField => CustomFloatingTextField(
        controller: _passwordController,
        focusNode: _focusPass,
        labelText: LocaleKeys.password.tr(),
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: LocaleKeys.password.tr(),
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: _passwordVisible,
        suffix: hideIconBtn,
        suffixConstraints: const BoxConstraints(maxHeight: 30),
      );

  Widget get _emailTextField => CustomFloatingTextField(
        controller: _emailController,
        focusNode: _focusEmail,
        labelText: LocaleKeys.email.tr(),
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: LocaleKeys.email.tr(),
        textInputType: TextInputType.emailAddress,
      );

  Widget get hideIconBtn => IconButton(
      icon: Icon(
        _passwordVisible ? Icons.visibility : Icons.visibility_off,
        color: theme.colorScheme.primaryContainer,
      ),
      onPressed: () {
        setState(() {
          _passwordVisible = !_passwordVisible;
        });
      });
}
