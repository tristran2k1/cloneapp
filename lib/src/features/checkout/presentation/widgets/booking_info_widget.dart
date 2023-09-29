import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/auth.dart';
import 'package:travo_app/src/local_data/share_preference.dart';

class BookingInfoWidget extends StatelessWidget {
  const BookingInfoWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.textButton,
      this.onTap,
      this.information,
      this.needValidation = false,
      this.needAvatar = false,
      this.validateText});
  final String title;
  final String icon;
  final String textButton;
  final VoidCallback? onTap;
  final String? information;
  final bool needValidation;
  final bool needAvatar;
  final String? validateText;

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: icon,
                      height: 32,
                      width: 32,
                    ),
                    Text(title, style: theme.textTheme.titleSmall)
                  ],
                ),
              ],
            ),
            Gap.h20,
            _addBtn(information, needAvatar),
            Gap.h10,
            _showValidation(
                information == null && needValidation, validateText ?? ""),
          ],
        ),
      ),
    );
  }

  StatelessWidget _showValidation(bool show, String text) {
    if (!show) {
      return Container();
    }
    return Text(text,
        style: theme.textTheme.labelSmall!.copyWith(
          color: appTheme.red500,
        ));
  }

  Widget _addBtn(String? text, bool hasAvatar) {
    if (text == null) {
      return CustomElevatedButton(
        mainAxisContentAlignment: MainAxisAlignment.start,
        width: 200,
        contentPadding: const EdgeInsets.symmetric(horizontal: 4),
        text: textButton,
        leftIcon: _plusIcon(),
        buttonStyle: CustomButtonStyles.fillIndigo50,
        buttonTextStyle: CustomTextStyles.titleSmallIndigo40001,
        onTap: onTap,
      );
    }

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final user = UserPrefs.I.getUser();
        return CustomElevatedButton(
          mainAxisContentAlignment: MainAxisAlignment.spaceBetween,
          contentPadding: const EdgeInsets.only(left: 4, right: 10),
          margin: EdgeInsets.zero,
          text: text,
          rightIcon: const Icon(Entypo.pencil, size: 25),
          leftIcon: hasAvatar ? _showAvatar(user.avatar) : Container(),
          buttonStyle: CustomButtonStyles.fillIndigo50,
          buttonTextStyle: CustomTextStyles.titleSmallIndigo40001,
          onTap: onTap,
        );
      },
    );
  }

  Widget _plusIcon() {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        height: 40,
        width: 40,
        decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
            color: appTheme.whiteA700),
        child: Center(
          child: CustomImageView(
            svgPath: Assets.images.plusIcon,
            margin: EdgeInsets.zero,
          ),
        ));
  }

  Widget _showAvatar(String avatarUrl) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        height: 40,
        width: 40,
        decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
            color: appTheme.whiteA700),
        child: Center(
          child: CustomImageView(
            radius: BorderRadiusStyle.roundedBorder20,
            url: avatarUrl,
            margin: EdgeInsets.zero,
          ),
        ));
  }
}
