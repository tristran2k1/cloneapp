import 'package:country_currency_pickers/countries.dart';
import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/country_pickers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/presentation/widgets/app_bar_with_two_text.dart';

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
  final FocusNode _focusName = FocusNode();
  final FocusNode _focusPhone = FocusNode();
  final FocusNode _focusEmail = FocusNode();
  final FocusNode _focusPass = FocusNode();

  Country _selectedCountry = Country();

  bool _passwordVisible = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _selectedCountry = CountryPickerUtils.getCountryByPhoneCode('84');
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _focusEmail.dispose();
    _focusPass.dispose();
    _focusName.dispose();
    _focusPhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusName.unfocus();
        _focusEmail.unfocus();
        _focusPass.unfocus();
        _focusPhone.unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF0F2F6),
        body: AppBarWith2Text(
          header: "Sign Up",
          subscription: "Let’s create your account!",
          child: Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p25),
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
                    HorizontalDividerWithText(content: "or sign up with "),
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
  }

  Widget get _phoneTextField => CustomFloatingTextField(
        prefix: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("+${_selectedCountry.phoneCode}",
                style: theme.textTheme.titleSmall),
            Gap.w10,
            Text("|", style: TextStyle(color: appTheme.gray400)),
            Gap.w10,
          ],
        ),
        prefixConstraints: const BoxConstraints(),
        controller: _phoneController,
        labelText: "Phone Number",
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: "Phone Number",
        textInputType: TextInputType.phone,
        focusNode: _focusPhone,
        validator: (value) {
          if (value == null) {
            return "Please enter your phone number";
          }
          return null;
        },
      );
  Widget get _setcountry => CustomDropDown(
      autofocus: false,
      icon: Container(
          margin: const EdgeInsets.only(right: 10),
          child: const Icon(Entypo.down_open_big)),
      hintText: "Country",
      labelText: "Country",
      labelStyle: CustomTextStyles.bodyMediumGray700,
      items: countryList
          .where((country) =>
              country.name != null &&
              country.phoneCode != null &&
              country.name!.length <= 30)
          .map((country) => country.name!)
          .toList(),
      onChanged: (value) {
        setState(() {
          _selectedCountry =
              countryList.firstWhere((country) => country.name == value);
        });
      });

  Widget get _authByFacebook => Expanded(
        child: CustomElevatedButton(
          text: "Facebook",
          leftIcon: CustomImageView(
            svgPath: Assets.images.imgFacebook,
          ),
          buttonStyle: CustomButtonStyles.fillIndigo,
        ),
      );

  Widget get _authByGoogle => Expanded(
          child: CustomElevatedButton(
        text: "Google",
        leftIcon: CustomImageView(
          svgPath: Assets.images.imgGoogle,
        ),
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: CustomTextStyles.titleMediumBluegray900,
      ));

  Widget get _signUpBtn => CustomElevatedButton(
        text: "Sign Up",
        buttonStyle: CustomButtonStyles.none,
        decoration: AppDecoration.gradientPrimaryToIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
        onTap: () {
          if (_formKey.currentState!.validate()) {}
        },
      );

  Widget get _policyText => RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "By tapping sign up you agree to the ",
          style: CustomTextStyles.bodySmallBluegray900_2,
        ),
        TextSpan(
            text: "Terms and Condition",
            style: CustomTextStyles.bodySmallIndigo40001.copyWith(height: 2.08),
            recognizer: TapGestureRecognizer()..onTap = () {}),
        TextSpan(text: " and ", style: CustomTextStyles.bodySmallBluegray900_2),
        TextSpan(
            text: "Privacy Policy",
            style: CustomTextStyles.bodySmallIndigo40001,
            recognizer: TapGestureRecognizer()..onTap = () {}),
        TextSpan(
            text: " of this app",
            style: CustomTextStyles.bodySmallBluegray900_2)
      ]),
      textAlign: TextAlign.center);

  Widget get _passwordTextField => CustomFloatingTextField(
        controller: _passwordController,
        focusNode: _focusPass,
        labelText: "Password",
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: _passwordVisible,
        suffix: hideIconBtn,
        suffixConstraints: const BoxConstraints(maxHeight: 30),
        validator: (value) {
          if (value == null) {
            return "Please enter your password";
          }
          return null;
        },
      );

  Widget get _emailTextField => CustomFloatingTextField(
        controller: _emailController,
        focusNode: _focusEmail,
        labelText: "Email",
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null) {
            return "Please enter your email";
          }
          if (!value.isValidEmail) {
            return "Please enter a valid email";
          }
          return null;
        },
      );

  Widget get _nameTextField => CustomFloatingTextField(
        controller: _nameController,
        focusNode: _focusName,
        labelText: "Name",
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: "Your name",
        textInputType: TextInputType.name,
        validator: (value) {
          if (value == null) {
            return "Please enter your name";
          }
          return null;
        },
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
