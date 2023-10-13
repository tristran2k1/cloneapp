import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:travo_app/src/constants/constants.dart';

class SliderFilter extends StatelessWidget {
  const SliderFilter(
      {super.key,
      required this.min,
      required this.max,
      required this.values,
      required this.onChanged,
      required this.format});
  final double min;
  final double max;
  final List<double> values;
  final String Function(String) format;
  final Function(double, double) onChanged;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      values: values,
      rangeSlider: true,
      max: max.toDouble(),
      min: min.toDouble(),
      handlerAnimation: const FlutterSliderHandlerAnimation(
          curve: Curves.elasticOut,
          reverseCurve: Curves.bounceIn,
          duration: Duration(milliseconds: 500),
          scale: 1.5),
      handler: _sliderBtn(),
      rightHandler: _sliderBtn(),
      trackBar: FlutterSliderTrackBar(
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: appTheme.gray300,
        ),
        activeTrackBar: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: appTheme.indigo40001),
      ),
      tooltip: FlutterSliderTooltip(
          format: (value) => format(value), //
          positionOffset: FlutterSliderTooltipPositionOffset(top: -20),
          textStyle: theme.textTheme.bodyMedium,
          alwaysShowTooltip: true,
          boxStyle: const FlutterSliderTooltipBox(
            decoration: BoxDecoration(color: Colors.transparent),
          )),
      onDragging: (_, lowerValue, upperValue) {
        onChanged(lowerValue, upperValue);
      },
    );
  }

  FlutterSliderHandler _sliderBtn() {
    return FlutterSliderHandler(
      decoration: const BoxDecoration(),
      child: Container(
          decoration:
              AppDecoration.fillindigo40001.copyWith(shape: BoxShape.circle),
          padding: const EdgeInsets.all(5),
          child: Icon(
            Icons.pause,
            size: 24,
            color: appTheme.whiteA700,
          )),
    );
  }
}
