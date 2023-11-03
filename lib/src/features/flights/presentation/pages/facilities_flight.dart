import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';

class FacilitiesFlight extends StatefulWidget {
  const FacilitiesFlight({super.key});

  @override
  State<FacilitiesFlight> createState() => _FacilitiesFlightState();
}

class _FacilitiesFlightState extends State<FacilitiesFlight> {
  List<CheckItem> facilities = [
    CheckItem(name: 'Wifi', icon: Assets.images.wifi),
    CheckItem(name: 'Baggage', icon: Assets.images.luggage),
    CheckItem(name: 'Power / USB Port', icon: Assets.images.energy),
    CheckItem(name: 'In-Flight Meal', icon: Assets.images.fork),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: AppBarWithTitle(
          leading: CustomBackButton(ctx: context),
          title: "Facilities",
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsConst.hor25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.h12,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [_selectAllBtn()],
                  ),
                  Column(
                    children: List.generate(
                      facilities.length,
                      (index) => Column(
                        children: [_checkboxItem(facilities[index])],
                      ),
                    ),
                  ),
                  Gap.h60,
                  CustomElevatedButton(
                    text: "Done",
                    buttonStyle: CustomButtonStyles.none,
                    decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder28,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  CheckboxListTile _checkboxItem(CheckItem item) {
    return CheckboxListTile(
        dense: true,
        checkColor: appTheme.indigo40001,
        activeColor: appTheme.whiteA700,
        checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        value: item.isAvailable,
        onChanged: (value) {
          setState(() {
            item.isAvailable = value ?? false;
          });
        },
        title: _getTitle(item));
  }

  TextButton _selectAllBtn() {
    return TextButton(
      child: Text(
        _checkAllSelected() ? "Remove All" : "Select All",
        style: theme.textTheme.labelLarge,
      ),
      onPressed: () {
        final currentcheck = _checkAllSelected();
        for (var e in facilities) {
          setState(() {
            e.isAvailable = !currentcheck;
          });
        }
      },
    );
  }

  bool _checkAllSelected() {
    for (var e in facilities) {
      if (!e.isAvailable) return false;
    }
    return true;
  }

  Widget _getTitle(CheckItem item) {
    return Row(
      children: [
        CustomImageView(svgPath: item.icon),
        Text(item.name, style: CustomTextStyles.bodyMediumBluegray900),
      ],
    );
  }
}
