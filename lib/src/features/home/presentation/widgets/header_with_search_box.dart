import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox(
      {super.key,
      required this.child,
      required this.name,
      required this.avatar});
  final Widget child;
  final String name;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: expandedHeight + 25,
      child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            Assets.images.appbarBackground,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: expandedHeight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: CustomAppBar(
                height: expandedHeight,
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppbarTitle(
                      text: "${context.tr("hi")} $name!",
                    ),
                    Gap.h15,
                    Text(
                      context.tr('where_are_you_going_next'),
                      style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ],
                ),
                actions: [
                  Row(
                    children: [
                      Icon(FontAwesome.bell,
                          size: 24, color: appTheme.whiteA700),
                      Gap.w15,
                      CustomImageView(
                        url: avatar,
                        height: 45,
                        width: 45,
                        radius: BorderRadiusStyle.roundedBorder12,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: child,
          ),
        ],
      ),
    );
  }
}
