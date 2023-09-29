import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class AppBarWithTitle extends StatelessWidget {
  const AppBarWithTitle(
      {super.key,
      this.child,
      required this.title,
      this.titleStyle,
      this.leading,
      this.actions});
  final String title;

  final Widget? child;
  final TextStyle? titleStyle;
  final Widget? leading;
  final List<Widget>? actions;

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
          toolbarHeight: kToolbarHeight + customToolbarHeight,
          title: AppbarTitle(text: title),
          centerTitle: true,
          actions: actions,
        ),
        SliverToBoxAdapter(child: child),
      ],
    );
  }
}
