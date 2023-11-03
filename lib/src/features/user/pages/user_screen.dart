import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travo_app/l10n/localization_bloc.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/features.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/utils/utils.dart';

import '../../../models/user/user.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final ValueNotifier<bool> isAllowedScreenShot = ValueNotifier(true);
  final ValueNotifier<bool> isEnglish = ValueNotifier(true);
  final MethodChannel _methodChannel =
      const MethodChannel("lib.string.convert");

  @override
  void initState() {
    isEnglish.value = UserPrefs.I.getEngLanguage();
    isAllowedScreenShot.value = UserPrefs.I.getScreenshot();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: ListView(
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                UserAccount user = UserPrefs.I.getUser();
                return HeaderWithSearchBox(
                    name: user.name, avatar: user.avatar, child: Container());
              },
            ),
            Padding(
              padding: EdgeInsetsConst.hor25,
              child: Column(
                children: [
                  Gap.h10,
                  _showAvatar(context),
                  Gap.h20,
                  _importImageFromGallery(context),
                  Gap.h10,
                  _importImageFromCamera(context),
                  Gap.h20,
                  _changeLanguage(context),
                  Gap.h20,
                  _screenshotSetting(context),
                  Gap.h20,
                  _logOutBtn(context),
                ],
              ),
            ),
          ],
        ));
  }

  void pickAvatar(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(
        source: source,
        imageQuality: 80,
        maxHeight: 480,
        maxWidth: 480,
      );
      if (image != null) {
        final imageFile = File(image.path);
        if (mounted) {
          context.read<AuthBloc>().add(AuthEvent.saveAvatar(imageFile));
        }
      }
    } on PlatformException {
      logger.e("Error pick image");
    }
  }

  Widget _showAvatar(BuildContext context) {
    return CustomImageView(
      base64Image: UserPrefs().getUser().avatar,
      radius: BorderRadiusStyle.roundedBorder12,
      width: 150,
      height: 150,
    );
  }

  Widget _importImageFromGallery(BuildContext context) {
    return CustomElevatedButton(
      text: "Import image from gallery",
      onTap: () => pickAvatar(ImageSource.gallery),
    );
  }

  Widget _importImageFromCamera(BuildContext context) {
    return CustomElevatedButton(
      text: "Import image from camera",
      onTap: () => pickAvatar(ImageSource.camera),
    );
  }

  Widget _logOutBtn(BuildContext context) {
    return CustomElevatedButton(
      text: "Log out",
      onTap: () => context.read<AuthBloc>().add(const LogOutEvent()),
    );
  }

  Widget _screenshotSetting(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Screenshot Permission",
          style: CustomTextStyles.bodyMediumGray500,
        ),
        ValueListenableBuilder(
          valueListenable: isAllowedScreenShot,
          builder: (context, value, child) => Switch(
            thumbIcon: thumbIcon,
            value: isAllowedScreenShot.value,
            onChanged: (bool value) async {
              isAllowedScreenShot.value = value;
              UserPrefs().setScreenshot(value);
              if (value) {
                await _methodChannel.invokeMethod("removeScreenShot");
              } else {
                await _methodChannel.invokeMethod("screenShot");
              }
            },
          ),
        ),
      ],
    );
  }

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  Widget _changeLanguage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "English?",
          style: CustomTextStyles.bodyMediumGray500,
        ),
        ValueListenableBuilder(
          valueListenable: isEnglish,
          builder: (context, value, child) => Switch(
            thumbIcon: thumbIcon,
            value: isEnglish.value,
            onChanged: (bool value) async {
              isEnglish.value = value;
              GetIt.I<LocalizationBloc>().add(
                LocalizationEvent.changeLanguageEvent(context, isEnglish.value),
              );
            },
          ),
        ),
      ],
    );
  }
}
