import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';

class PropertyTypeScreen extends StatefulWidget {
  const PropertyTypeScreen({super.key});

  @override
  State<PropertyTypeScreen> createState() => _PropertyTypeScreenState();
}

class _PropertyTypeScreenState extends State<PropertyTypeScreen> {
  List<CheckItem> properties = [
    CheckItem(name: 'Hostels'),
    CheckItem(name: 'Resorts'),
    CheckItem(name: 'Hotels'),
    CheckItem(name: 'Villas'),
    CheckItem(name: 'Guest Houses'),
    CheckItem(name: 'Homestays'),
    CheckItem(name: 'Apartments'),
    CheckItem(name: 'Others'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: AppBarWithTitle(
          leading: CustomBackButton(ctx: context),
          title: "Property type",
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
                      properties.length,
                      (index) => Column(
                        children: [_checkboxItem(properties[index])],
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
        title: Text(item.name, style: CustomTextStyles.bodyMediumBluegray900));
  }

  TextButton _selectAllBtn() {
    return TextButton(
      child: Text(
        _checkAllSelected() ? "Remove All" : "Select All",
        style: theme.textTheme.labelLarge,
      ),
      onPressed: () {
        final currentcheck = _checkAllSelected();
        for (var e in properties) {
          setState(() {
            e.isAvailable = !currentcheck;
          });
        }
      },
    );
  }

  bool _checkAllSelected() {
    for (var e in properties) {
      if (!e.isAvailable) return false;
    }
    return true;
  }
}
