import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travo_app/src/common/common.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/auth/auth.dart';
import 'package:travo_app/src/features/hotels/hotels.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/utils/utils.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  String imagePath = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
          child: AppBarWithTitle(
        leading: CustomBackButton(ctx: context),
        title: "Contact Details",
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Gap.h10,
                CustomImageView(
                  base64Image: UserPrefs().getUser().avatar,
                  radius: BorderRadiusStyle.roundedBorder12,
                  width: 150,
                  height: 150,
                ),
                Gap.h20,
                CustomElevatedButton(
                  text: "Import image from gallery",
                  onTap: () => pickAvatar(ImageSource.gallery),
                ),
                Gap.h10,
                CustomElevatedButton(
                  text: "Import image from camera",
                  onTap: () => pickAvatar(ImageSource.camera),
                ),
                Gap.h20,
                CustomElevatedButton(
                  text: "Log out",
                  onTap: () =>
                      context.read<AuthBloc>().add(const LogOutEvent()),
                ),
              ],
            ),
          ),
        ),
      )),
    );
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
        imagePath = image.path;
        final base64 =
            await ImageCvt.convertImageToBase64(imagePath: imagePath);
        if (mounted) {
          context.read<AuthBloc>().add(AuthEvent.saveAvatar(base64));
        }
      }
    } on PlatformException {
      logger.e("Error pick image");
    }
  }
}
