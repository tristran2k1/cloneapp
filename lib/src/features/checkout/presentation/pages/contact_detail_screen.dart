import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/country.dart';
import 'package:travo_app/src/utils/utils.dart';

class ContactDetailScreen extends StatefulWidget {
  const ContactDetailScreen({super.key, required this.user});
  final UserAccount user;
  @override
  State<ContactDetailScreen> createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  late ValueNotifier<Country> _selectedCountry;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String getPhoneCodeByIso(String name) {
    final country = countryList.firstWhere((country) => country.isoCode == name,
        orElse: () => Country());

    if (country != Country()) {
      return country.phoneCode ?? '';
    } else {
      return '';
    }
  }

  String getPhoneNumber(String phone, String phoneCode) {
    return phone.substring(phoneCode.length).replaceAll(' ', '');
  }

  @override
  void initState() {
    final phoneCode = getPhoneCodeByIso(widget.user.country);
    _selectedCountry =
        ValueNotifier(CountryUtils().getCountryByIsoCode(widget.user.country));
    _nameController.text = widget.user.name;
    _phoneController.text = getPhoneNumber(widget.user.phone, phoneCode);
    _emailController.text = widget.user.email;
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: AppBarWithTitle(
          leading: CustomBackButton(ctx: context),
          title: "Contact Details",
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
                    _nameTextField(context),
                    _setCountry(context),
                    _phoneTextField(context),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _emailTextField(context),
                        Gap.h10,
                        Text("E-ticket will be sent to your E-mail",
                            style: theme.textTheme.labelSmall!
                                .copyWith(color: appTheme.gray700)),
                        Gap.h25,
                        doneBtn(context),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget doneBtn(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _selectedCountry,
      builder: (context, __, ___) => CustomElevatedButton(
          text: "Done",
          buttonStyle: CustomButtonStyles.none,
          decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder28,
          ),
          onTap: () {
            if (_formKey.currentState!.validate()) {
              return Navigator.pop(
                  context,
                  UserAccount(
                    id: "id",
                    name: _nameController.text,
                    phone:
                        "+${_selectedCountry.value.phoneCode} ${_phoneController.text}",
                    email: _emailController.text,
                    country: _selectedCountry.value.isoCode.toString(),
                  ));
            }
          }),
    );
  }

  Widget _phoneTextField(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _selectedCountry,
      builder: (context, __, ___) => CustomFloatingTextField(
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
      ),
    );
  }

  Widget _setCountry(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _selectedCountry,
      builder: (context, __, ___) => CustomDropDown(
          icon: Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(Entypo.down_open_big)),
          value: _selectedCountry.value.name,
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
          }),
    );
  }

  Widget _emailTextField(BuildContext context) {
    return CustomFloatingTextField(
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
  }

  Widget _nameTextField(BuildContext context) {
    return CustomFloatingTextField(
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
  }
}
