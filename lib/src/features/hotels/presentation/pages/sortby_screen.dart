import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';

class SortbyScreen extends StatefulWidget {
  const SortbyScreen({super.key});

  @override
  State<SortbyScreen> createState() => _SortbyScreenState();
}

class _SortbyScreenState extends State<SortbyScreen> {
  List<CheckItem> properties = [
    CheckItem(name: 'Highest popularity'),
    CheckItem(name: 'Lowest Price'),
    CheckItem(name: 'Highest Price'),
    CheckItem(name: 'Highest Rating'),
    CheckItem(name: 'Nearest Distance'),
  ];
  CheckItem selectedOption = CheckItem(name: 'Highest popularity');
  HotelSortByOption? _type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: AppBarWithTitle(
          leading: CustomBackButton(ctx: context),
          title: "Sort by",
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsConst.hor25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.h12,
                  Column(
                    children: List.generate(
                      properties.length,
                      (index) => Column(
                        children: [_checkboxItem(properties[index], index)],
                      ),
                    ),
                  ),
                  Gap.h60,
                  _doneBtn(context),
                ],
              ),
            ),
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
      onTap: () => Navigator.pop(context, _type),
    );
  }

  Widget _checkboxItem(CheckItem item, int index) {
    return RadioListTile<CheckItem>(
      dense: true,
      activeColor: appTheme.indigo40001,
      controlAffinity: ListTileControlAffinity.trailing,
      value: item,
      onChanged: (CheckItem? value) {
        setState(() {
          selectedOption = value ?? selectedOption;
          _type = HotelSortByOption.values[index];
        });
      },
      title: Text(item.name, style: CustomTextStyles.bodyMediumBluegray900),
      groupValue: selectedOption,
    );
  }
}
