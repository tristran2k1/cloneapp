import 'package:flutter/material.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class FlightBill extends StatelessWidget {
  const FlightBill({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("1 Passenger",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: appTheme.gray700)),
                Text("\$$price",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: appTheme.gray700))
              ]),
              Gap.h10,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Insurance",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: appTheme.gray700)),
                Text("-",
                    style: theme.textTheme.bodySmall!
                        .copyWith(color: appTheme.gray700)),
              ]),
              Gap.h15,
              const DashDivider(),
              Gap.h15,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Total",
                    style: theme.textTheme.titleSmall!
                        .copyWith(color: appTheme.gray700)),
                Text("\$$price",
                    style: theme.textTheme.titleSmall!
                        .copyWith(color: appTheme.gray700))
              ]),
            ],
          )),
    );
  }
}
