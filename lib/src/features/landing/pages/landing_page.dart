import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:travo_app/src/constants/constants.dart';
import 'package:travo_app/src/features/landing/pages/on_boarding_screen.dart';
import 'package:travo_app/src/local_data/share_preference.dart';
import 'package:travo_app/src/routes/coordinator.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final widthSize = screenSize.width;
    final List<PageViewModel> pages = [
      OnBoardingScreen(
          context: context,
          imagePath: Assets.images.onboarding01.path,
          imgAlignment: Alignment.centerRight,
          imgWidthSize: widthSize * 0.8,
          textTile: 'Book a flight',
          textBody:
              'Found a flight that matches your destination and schedule? Book it instantly.'),
      OnBoardingScreen(
          context: context,
          imagePath: Assets.images.onboarding02.path,
          imgWidthSize: widthSize,
          textTile: 'Find a hotel room',
          textBody:
              'Select the day, book your room. We give you the best price.'),
      OnBoardingScreen(
          context: context,
          imagePath: Assets.images.onboarding03.path,
          imgAlignment: Alignment.centerLeft,
          imgWidthSize: widthSize * 0.8,
          textTile: 'Enjoy your trip',
          textBody:
              'Easy discovering new places and share these between your friends and travel together.'),
    ];
    return Scaffold(
        body: SafeArea(
      child: PageView(
        children: [
          IntroductionScreen(
            pages: pages,
            dotsDecorator: DotsDecorator(
              size: const Size.square(5.0),
              activeSize: const Size(20.0, 5.0),
              activeColor: appTheme.deepOrange300,
              color: appTheme.gray400,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
            ),
            showDoneButton: true,
            done: _button('Go'),
            showNextButton: true,
            next: _button('Next'),
            onDone: () => onDone(context),
            curve: Curves.linear,
          )
        ],
      ),
    ));
  }

  Widget _button(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      decoration: AppDecoration.gradientPrimaryToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Text(text, style: theme.textTheme.titleMedium),
    );
  }

  void onDone(context) async {
    UserPrefs.I.setOnBoarded(true);
    LCoordinator().showLoginScreen();
  }
}
