import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/models/checkitem/checkitem.dart';

class SortbyFlight extends StatefulWidget {
  const SortbyFlight({super.key});

  @override
  State<SortbyFlight> createState() => _SortbyFlightState();
}

class _SortbyFlightState extends State<SortbyFlight> {
  List<CheckItem> options = [
    CheckItem(name: 'Earliest Departure'),
    CheckItem(name: 'Latest Departure'),
    CheckItem(name: 'Earliest Arrive'),
    CheckItem(name: 'Latest Arrive'),
    CheckItem(name: 'Nearest Distance'),
    CheckItem(name: 'Shortest Duration'),
    CheckItem(name: 'Lowest Price'),
    CheckItem(name: 'Highest popularity'),
  ];
  CheckItem selectedOption = CheckItem(name: 'Earliest Departure');
  FlightSortByOption? _type;

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
                      options.length,
                      (index) => Column(
                        children: [_checkboxItem(options[index], index)],
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
          _type = FlightSortByOption.values[index];
        });
      },
      title: Text(item.name, style: CustomTextStyles.bodyMediumBluegray900),
      groupValue: selectedOption,
    );
  }
}
