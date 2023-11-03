import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/common/toast/toast_wrapper.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';

class BookingSelectDateScreen extends StatefulWidget {
  const BookingSelectDateScreen(
      {super.key, this.checkinTime, this.checkoutTime});
  final String? checkinTime;
  final String? checkoutTime;
  @override
  State<BookingSelectDateScreen> createState() =>
      _BookingSelectDateScreenState();
}

class _BookingSelectDateScreenState extends State<BookingSelectDateScreen> {
  late ValueNotifier<List<DateTime?>> _rangeDatePickerValueWithDefaultValue;

  @override
  void initState() {
    if (widget.checkinTime != null) {
      _rangeDatePickerValueWithDefaultValue = ValueNotifier<List<DateTime?>>([
        DateTime.parse(widget.checkinTime!),
        DateTime.parse(widget.checkoutTime!)
      ]);
    } else {
      _rangeDatePickerValueWithDefaultValue = ValueNotifier<List<DateTime?>>([
        DateTime.now().add(const Duration(days: 1)),
        DateTime.now().add(const Duration(days: 2)),
      ]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AppBarWithTitle(
        leading: CustomBackButton(ctx: context),
        title: "Select Date",
        child: _buildDefaultRangeDatePickerWithValue(),
      )),
    );
  }

  Widget _buildDefaultRangeDatePickerWithValue() {
    final config = CalendarDatePicker2Config(
      calendarType: CalendarDatePicker2Type.range,
      selectedDayHighlightColor: appTheme.deepOrange300,
      weekdayLabelTextStyle:
          CustomTextStyles.labelSmall!.copyWith(color: appTheme.gray700),
      controlsTextStyle: CustomTextStyles.bodyMediumGray700,
      dayTextStyle: CustomTextStyles.bodyMediumGray700,
      selectedDayTextStyle: CustomTextStyles.titleSmallWhiteA700,
      dayBorderRadius: BorderRadiusStyle.roundedBorder8,
      centerAlignModePicker: true,
      lastMonthIcon:
          Icon(Entypo.left_open_big, size: 16, color: appTheme.gray700),
      nextMonthIcon:
          Icon(Entypo.right_open_big, size: 16, color: appTheme.gray700),
      disableModePicker: true,
      firstDate: DateTime.now().add(const Duration(days: 1)),
      currentDate: DateTime.now(),
      disabledDayTextStyle: CustomTextStyles.bodyMediumGray500,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ValueListenableBuilder(
            valueListenable: _rangeDatePickerValueWithDefaultValue,
            builder: (_, __, ___) => CalendarDatePicker2(
              config: config,
              value: _rangeDatePickerValueWithDefaultValue.value,
              onValueChanged: (dates) =>
                  _rangeDatePickerValueWithDefaultValue.value = dates,
            ),
          ),
          _selectBtn(context),
          Gap.h15,
          _cancelBtn(context),
        ],
      ),
    );
  }

  Widget _selectBtn(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _rangeDatePickerValueWithDefaultValue,
      builder: (_, value, __) => CustomElevatedButton(
          text: "Select",
          buttonStyle: CustomButtonStyles.none,
          decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder28,
          ),
          onTap: () {
            if (_rangeDatePickerValueWithDefaultValue.value.isNotEmpty &&
                _rangeDatePickerValueWithDefaultValue.value.length == 2 &&
                _rangeDatePickerValueWithDefaultValue.value[0] !=
                    _rangeDatePickerValueWithDefaultValue.value[1]) {
              Navigator.pop(
                  context, _rangeDatePickerValueWithDefaultValue.value);
            } else {
              XToast.error("Please select valid date");
            }
          }),
    );
  }

  Widget _cancelBtn(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _rangeDatePickerValueWithDefaultValue,
      builder: (_, value, __) => CustomElevatedButton(
          text: "Cancel",
          buttonStyle: CustomButtonStyles.none,
          decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder28,
          ),
          onTap: () {
            _rangeDatePickerValueWithDefaultValue.value = [];
          }),
    );
  }
}
