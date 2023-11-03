import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:travo_app/src/features/auth/presentation/widgets/app_bar_with_two_text.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/country.dart';
import 'package:travo_app/src/utils/utils.dart';
import 'package:travo_app/theme/theme_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final ValueNotifier<Country> _selectedCountry =
      ValueNotifier<Country>(CountryUtils().getCountryByPhoneCode('84'));
  final ValueNotifier<bool> _passwordVisible = ValueNotifier<bool>(true);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

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
              signUpSuccess: () {
                XToast.success(context.tr("common_success"));
              },
              error: (message) => XToast.error(message),
            );
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: theme.colorScheme.background,
              body: SafeArea(
                child: AppBarWith2Text(
                  header: context.tr('sign_up'),
                  subscription: context.tr("let_create_your_account"),
                  leading: CustomBackButton(ctx: context),
                  child: Form(
                    key: _formKey,
                    child: ListView(
                      padding: EdgeInsetsConst.hor25,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        Gap.h25,
                        Wrap(
                          runSpacing: Sizes.p20,
                          children: [
                            _nameTextField,
                            _setcountry,
                            _phoneTextField,
                            _emailTextField,
                            _passwordTextField,
                            _policyText,
                            _signUpBtn,
                            HorizontalDividerWithText(
                                content: context.tr("or_sign_up_with")),
                            Row(
                              children: [
                                _authByGoogle,
                                Gap.w15,
                                _authByFacebook,
                              ],
                            ),
                            Container(height: Sizes.p48),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget get _phoneTextField => ValueListenableBuilder(
      valueListenable: _selectedCountry,
      builder: (context, _, __) => CustomFloatingTextField(
            prefix: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("+${_selectedCountry.value.phoneCode}",
                    style: theme.textTheme.titleSmall),
                Gap.w10,
                Text("|", style: TextStyle(color: appTheme.gray400)),
                Gap.w10,
              ],
            ),
            prefixConstraints: const BoxConstraints(),
            controller: _phoneController,
            labelText: context.tr("phone_number"),
            labelStyle: CustomTextStyles.bodyMediumGray700,
            hintText: context.tr("phone_number"),
            textInputType: TextInputType.phone,
            focusNode: FocusNode(),
            validator: (value) {
              if (value == null) {
                return context.tr("please_enter_your_phone_number");
              }
              return null;
            },
          ));
  Widget get _setcountry => ValueListenableBuilder(
      valueListenable: _selectedCountry,
      builder: (context, _, __) => CustomDropDown(
          autofocus: false,
          icon: Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(Entypo.down_open_big)),
          hintText: context.tr("country"),
          labelText: context.tr("country"),
          labelStyle: CustomTextStyles.bodyMediumGray700,
          items: countryList
              .where((country) =>
                  country.name != null &&
                  country.phoneCode != null &&
                  country.name!.length <= 30)
              .map((country) => country.name!)
              .toList(),
          onChanged: (value) {
            _selectedCountry.value =
                countryList.firstWhere((country) => country.name == value);
          }));

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
      ));

  Widget get _signUpBtn => CustomElevatedButton(
        text: context.tr("sign_up"),
        buttonStyle: CustomButtonStyles.none,
        decoration: AppDecoration.gradientPrimaryToIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
        onTap: () {
          if (_formKey.currentState!.validate()) {
            context.read<AuthBloc>().add(SignUpEvent(
                _nameController.text,
                _selectedCountry.value.isoCode ?? "",
                "+${_selectedCountry.value.phoneCode} ${_phoneController.text}",
                _emailController.text,
                _passwordController.text));
          }
        },
      );

  Widget get _policyText => RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "${context.tr("by_tapping_sign_up")} ",
          style: CustomTextStyles.bodySmallBluegray900_1,
        ),
        TextSpan(
            text: context.tr("terms_and_conditions"),
            style: CustomTextStyles.bodySmallIndigo40001.copyWith(height: 2.08),
            recognizer: TapGestureRecognizer()..onTap = () {}),
        TextSpan(
            text: " ${context.tr("and")} ",
            style: CustomTextStyles.bodySmallBluegray900_1),
        TextSpan(
            text: context.tr("privacy_policy"),
            style: CustomTextStyles.bodySmallIndigo40001,
            recognizer: TapGestureRecognizer()..onTap = () {}),
        TextSpan(
            text: " ${context.tr("of_this_app")}",
            style: CustomTextStyles.bodySmallBluegray900_1)
      ]),
      textAlign: TextAlign.center);

  Widget get _passwordTextField => ValueListenableBuilder(
      valueListenable: _passwordVisible,
      builder: (context, _, __) => CustomFloatingTextField(
            controller: _passwordController,
            focusNode: FocusNode(),
            labelText: context.tr("password"),
            labelStyle: CustomTextStyles.bodyMediumGray700,
            hintText: context.tr("password"),
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: _passwordVisible.value,
            suffix: hideIconBtn,
            suffixConstraints: const BoxConstraints(maxHeight: 30),
            validator: (value) {
              if (value == null) {
                return context.tr("please_enter_your_password");
              }
              return null;
            },
          ));

  Widget get _emailTextField => CustomFloatingTextField(
        controller: _emailController,
        focusNode: FocusNode(),
        labelText: context.tr("email"),
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: context.tr("email"),
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null) {
            return context.tr("please_enter_your_email");
          }
          if (!value.isValidEmail) {
            return context.tr("please_enter_valid_email");
          }
          return null;
        },
      );

  Widget get _nameTextField => CustomFloatingTextField(
        controller: _nameController,
        focusNode: FocusNode(),
        labelText: context.tr("name"),
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: context.tr("hint_name"),
        textInputType: TextInputType.name,
        validator: (value) {
          if (value == null) {
            return context.tr("please_enter_your_name");
          }
          return null;
        },
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
