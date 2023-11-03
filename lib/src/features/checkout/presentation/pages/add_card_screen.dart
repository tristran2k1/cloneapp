import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/models.dart';
import 'package:travo_app/src/utils/country.dart';
import 'package:travo_app/src/utils/utils.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen(
      {super.key,
      required this.name,
      this.cardNumber,
      this.expdate,
      required this.country,
      this.cvv});
  final String name;
  final String? cardNumber;
  final String? expdate;
  final String? cvv;
  final String country;
  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cardController = TextEditingController();
  final TextEditingController _expController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

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
    _selectedCountry =
        ValueNotifier(CountryUtils().getCountryByIsoCode(widget.country));
    _nameController.text = widget.name;
    if (widget.cardNumber != null) {
      _cardController.text = widget.cardNumber!;
      _expController.text = widget.expdate!;
      _cvvController.text = widget.cvv!;
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cardController.dispose();
    _expController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: AppBarWithTitle(
          leading: CustomBackButton(ctx: context),
          title: "Add Card",
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
                    _cardTextField,
                    _expAndCvv,
                    _setCountry(context),
                    doneBtn(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get _expAndCvv => Row(
        children: [
          Expanded(
            child: CustomFloatingTextField(
              controller: _expController,
              focusNode: FocusNode(),
              labelText: "Exp. Date",
              labelStyle: CustomTextStyles.bodyMediumGray700,
              hintText: "MM/YY",
              textInputType: TextInputType.name,
              validator: (value) {
                if (value == null) {
                  return "Null expiration date";
                }
                if (value.isValidExpiryDate == false) {
                  return "Invalid expiration date (MM/YY)";
                }
                return null;
              },
            ),
          ),
          Gap.w15,
          Expanded(
            child: CustomFloatingTextField(
              controller: _cvvController,
              focusNode: FocusNode(),
              labelText: "CVV",
              labelStyle: CustomTextStyles.bodyMediumGray700,
              hintText: "***",
              textInputType: TextInputType.number,
              validator: (value) {
                if (value == null) {
                  return "Empty CVV";
                }
                if (value.length != 3) {
                  return "Invalid CVV";
                }
                return null;
              },
            ),
          ),
        ],
      );

  Widget doneBtn(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _selectedCountry,
      builder: (context, _, __) => CustomElevatedButton(
          text: "Done",
          buttonStyle: CustomButtonStyles.none,
          decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder28,
          ),
          onTap: () {
            if (_formKey.currentState!.validate()) {
              return Navigator.pop(
                  context,
                  CreditPayment(
                    name: _nameController.text,
                    cardNumber: _cardController.text,
                    expiration: _expController.text,
                    cvv: _cvvController.text,
                    country: _selectedCountry.value.isoCode ?? "",
                  ));
            } else {
              XToast.error("Please enter valid data");
            }
          }),
    );
  }

  Widget _setCountry(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _selectedCountry,
      builder: (context, _, __) => CustomDropDown(
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

  Widget get _cardTextField => CustomFloatingTextField(
        controller: _cardController,
        focusNode: FocusNode(),
        labelText: "Card Number",
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: "Card Number",
        prefixIcon: CustomImageView(
          svgPath: Assets.images.visaIcon,
          height: 32,
          width: 32,
        ),
        textInputType: TextInputType.number,
        validator: (value) {
          if (value == null) {
            return "Please enter your card number";
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
}
