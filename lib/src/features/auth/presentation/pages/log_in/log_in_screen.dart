import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/l10n/locale_keys.g.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/common/widgets/text_button_with_no_padding.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/auth.dart';
import 'package:travo_app/src/features/auth/presentation/widgets/app_bar_with_two_text.dart';
import 'package:travo_app/theme/theme_bloc.dart';

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

  final ValueNotifier<bool> _isRemebered = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _passwordVisible = ValueNotifier<bool>(true);

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
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return BlocConsumer<AuthBloc, AuthState>(
          listener: (authcontext, authstate) {
            authstate.maybeWhen(
              orElse: () {},
              error: (message) => XToast.error(message),
            );
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                _focusEmail.unfocus();
                _focusPass.unfocus();
              },
              child: Scaffold(
                  backgroundColor: theme.colorScheme.background,
                  body: AppBarWith2Text(
                    header: context.tr('log_in_no_space'),
                    subscription: LocaleKeys.welcome.tr(),
                    child: Form(
                      key: _formKey,
                      child: ListView(
                        padding:
                            const EdgeInsets.symmetric(horizontal: Sizes.p25),
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
                                  content: context.tr("or_login_with")),
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
  }

  Widget get _authByFacebook => Expanded(
        child: CustomElevatedButton(
          text: context.tr("facebook"),
          leftIcon: CustomImageView(
            svgPath: Assets.images.imgFacebook,
          ),
          buttonStyle: CustomButtonStyles.fillIndigo,
        ),
      );

  Widget get _authByGoogle => Expanded(
          child: CustomElevatedButton(
        text: context.tr("google"),
        leftIcon: CustomImageView(
          svgPath: Assets.images.imgGoogle,
        ),
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray900,
        onTap: () => context
            .read<AuthBloc>()
            .add(const LoginAccountEvent("admintk@g.com", "123456")),
      ));

  Widget get _loginBtn => BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return CustomElevatedButton(
            width: double.maxFinite,
            text: context.tr("log_in"),
            buttonStyle: CustomButtonStyles.none,
            decoration: AppDecoration.gradientPrimaryToIndigo
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
            onTap: () {
              if (_formKey.currentState!.validate()) {
                context.read<AuthBloc>().add(LoginAccountEvent(
                    _emailController.text, _passwordController.text));
              }
            },
            isLoading: state is LoadingState,
          );
        },
      );

  Widget get _signUpAccount => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.tr("dont_have_account"),
            style: CustomTextStyles.bodyMediumBluegray900,
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
        text: context.tr("forgot_password"),
        textStyle: CustomTextStyles.bodyMediumBluegray900,
        onPressed: () => AuthCoordinator().showForgotPasswordPage(),
      );

  Widget get _rememberPassword => ValueListenableBuilder(
      valueListenable: _isRemebered,
      builder: (context, _, __) {
        return CustomCheckboxButton(
            text: context.tr("remember_me"),
            value: _isRemebered.value,
            onChange: (value) {
              _isRemebered.value = value;
            });
      });

  Widget get _passwordTextField => ValueListenableBuilder(
      valueListenable: _passwordVisible,
      builder: (context, _, __) {
        return CustomFloatingTextField(
          controller: _passwordController,
          focusNode: _focusPass,
          labelText: context.tr("password"),
          labelStyle: CustomTextStyles.bodyMediumGray700,
          hintText: context.tr("password"),
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: _passwordVisible.value,
          suffix: hideIconBtn,
          suffixConstraints: const BoxConstraints(maxHeight: 30),
        );
      });

  Widget get _emailTextField => CustomFloatingTextField(
        controller: _emailController,
        focusNode: _focusEmail,
        labelText: context.tr("email"),
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: context.tr("email"),
        textInputType: TextInputType.emailAddress,
      );

  Widget get hideIconBtn => ValueListenableBuilder(
      valueListenable: _passwordVisible,
      builder: (context, _, __) => IconButton(
          icon: Icon(
            _passwordVisible.value ? Icons.visibility : Icons.visibility_off,
            color: theme.colorScheme.primaryContainer,
          ),
          onPressed: () {
            _passwordVisible.value = !_passwordVisible.value;
          }));
}
