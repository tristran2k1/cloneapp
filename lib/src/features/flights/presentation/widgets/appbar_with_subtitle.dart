import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/models/models.dart';

import 'subtitle_flight_booking.dart';

class AppBarWithSubtitleForFlightBooking extends StatelessWidget {
  const AppBarWithSubtitleForFlightBooking(
      {super.key,
      this.child,
      this.title,
      this.titleStyle,
      this.leading,
      this.actions,
      this.titleChild,
      required this.tripInfo});

  final String? title;
  final Widget? titleChild;
  final Widget? child;
  final TextStyle? titleStyle;
  final Widget? leading;
  final List<Widget>? actions;
  final TripInfo tripInfo;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: leading,
          backgroundColor: Colors.transparent,
          expandedHeight: expandedHeight,
          flexibleSpace: LayoutBuilder(builder: (context, constraints) {
            return FlexibleSpaceBar(
              background: SvgPicture.asset(
                Assets.images.appbarBackground,
                alignment: Alignment.center,
                fit: BoxFit.fill,
              ),
            );
          }),
          toolbarHeight: kToolbarHeight + customToolbarHeight + 10,
          title: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              children: [
                AppbarTitle(text: title, child: titleChild),
                Gap.h15,
                SubtitleFlightBooking(tripInfo: tripInfo),
              ],
            ),
          ),
          centerTitle: true,
          actions: actions,
        ),
        SliverToBoxAdapter(child: child),
      ],
    );
  }
}
