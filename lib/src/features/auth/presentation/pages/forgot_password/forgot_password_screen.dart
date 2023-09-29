import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:travo_app/src/features/auth/presentation/widgets/app_bar_with_two_text.dart';
import 'package:travo_app/theme/theme_bloc.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _focusEmail = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusEmail.dispose();
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
                resetPasswordSuccess: () =>
                    XToast.success(context.tr("common_success")));
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                _focusEmail.unfocus();
              },
              child: Scaffold(
                  backgroundColor: theme.colorScheme.background,
                  resizeToAvoidBottomInset: false,
                  body: AppBarWith2Text(
                    leading: CustomBackButton(ctx: context),
                    header: context.tr("forgot_password"),
                    subscription: context.tr("forgot_password_subtitle"),
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
                              _sendBtn,
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

  Widget get _sendBtn => CustomElevatedButton(
      // width: double.maxFinite,
      text: context.tr("send"),
      buttonStyle: CustomButtonStyles.none,
      decoration: AppDecoration.gradientPrimaryToIndigo
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
      onTap: () {
        if (_formKey.currentState!.validate()) {
          context
              .read<AuthBloc>()
              .add(ForgotPasswordEvent(_emailController.text));
        }
      });

  Widget get _emailTextField => CustomFloatingTextField(
      controller: _emailController,
      focusNode: _focusEmail,
      labelText: context.tr("email"),
      labelStyle: CustomTextStyles.bodyMediumGray700,
      hintText: context.tr("email"),
      textInputType: TextInputType.emailAddress);
}
