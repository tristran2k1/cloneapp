import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/presentation/widgets/app_bar_with_two_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _focusEmail = FocusNode();

  bool _passwordVisible = false;

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
    return GestureDetector(
      onTap: () {
        _focusEmail.unfocus();
      },
      child: Scaffold(
          backgroundColor: const Color(0xFFF0F2F6),
          resizeToAvoidBottomInset: false,
          body: AppBarWith2Text(
            header: "Forgot Password",
            subscription: "You’ll get messages soon on your e-mail address",
            child: Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p25),
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
  }

  Widget get _sendBtn => CustomElevatedButton(
      text: "Send",
      buttonStyle: CustomButtonStyles.none,
      decoration: AppDecoration.gradientPrimaryToIndigo
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
      onTap: () {});

  Widget get _emailTextField => CustomFloatingTextField(
      controller: _emailController,
      focusNode: _focusEmail,
      labelText: "Email",
      labelStyle: CustomTextStyles.bodyMediumGray700,
      hintText: "Email",
      textInputType: TextInputType.emailAddress);

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
