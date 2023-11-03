import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';

class PromoScreen extends StatefulWidget {
  const PromoScreen({super.key, required this.code});
  final String code;

  @override
  State<PromoScreen> createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  final TextEditingController _promoController = TextEditingController();

  @override
  void initState() {
    _promoController.text = widget.code;
    super.initState();
  }

  @override
  void dispose() {
    _promoController.dispose();
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
          child: ListView(
            padding: EdgeInsetsConst.hor25,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              Gap.h25,
              Wrap(
                runSpacing: Sizes.p20,
                children: [
                  _addPromoField,
                  _doneBtn(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  CustomElevatedButton _doneBtn(BuildContext context) {
    return CustomElevatedButton(
        text: "Done",
        buttonStyle: CustomButtonStyles.none,
        decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        onTap: () {
          return Navigator.pop(context, _promoController.text);
        });
  }

  Widget get _addPromoField => CustomFloatingTextField(
        controller: _promoController,
        focusNode: FocusNode(),
        labelText: "Coupon Code",
        labelStyle: CustomTextStyles.bodyMediumGray700,
        hintText: "Coupon Code",
        textInputType: TextInputType.name,
        boxDecoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        boxPadding: const EdgeInsets.symmetric(vertical: 4)
            .copyWith(left: 20, right: 4),
        suffix: CustomElevatedButton(
          margin: EdgeInsets.zero,
          width: 100,
          text: "Add Code",
          decoration: AppDecoration.gradientPrimaryToIndigo
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
          onTap: () {},
          buttonTextStyle: CustomTextStyles.titleSmallIndigo40001,
          buttonStyle: CustomButtonStyles.fillIndigo50,
        ),
      );
}
