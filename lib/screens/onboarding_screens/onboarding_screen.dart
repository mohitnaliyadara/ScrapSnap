import 'package:flutter/material.dart';
import 'package:scapsnap/custome_widgets/custom_button.dart';
import 'package:scapsnap/screens/select_langunage_screen.dart';
import 'package:scapsnap/utils/app_colors.dart';
import 'package:scapsnap/utils/images.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'custom_onboarding_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int currentPage = 0;

  List<Widget> pages = [
    CustomOnboardingScreen(
      image: AppImages.onboarding1,
      title: "Select scrap items for Selling\n ",
      subtitle:
          "We are collect scrap from wide list\n"
          "  of items like Newspaper, Plastic,\n"
          "  Iron,Electronic machine, etc.",
    ),
    CustomOnboardingScreen(
      image: AppImages.onboarding2,
      title: "Choose a date for scrap pickup\n",
      subtitle:
          "We are collect scrap from wide list\n"
          "  of items like Newspaper, Plastic,\n"
          "  Iron,Electronic machine, etc.",
    ),
    CustomOnboardingScreen(
      image: AppImages.onboarding3,
      title: "Pickup executive will Home /office\n",
      subtitle:
          "We are collect scrap from wide list\n"
          "  of items like Newspaper, Plastic,\n"
          "  Iron,Electronic machine, etc.",
    ),
    CustomOnboardingScreen(
      image: AppImages.onboarding3,
      title: "Scrap Sold\n",
      subtitle:
          "We are collect scrap from wide list\n"
          "  of items like Newspaper, Plastic,\n"
          "  Iron,Electronic machine, etc.",
    ),
  ];

  void finishOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("seeOnboarding", true);
    if(!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SelectLangunageScreen()),
    );
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: pages.length,
            onPageChanged: (index) => setState(() => currentPage = index),
            itemBuilder: (_, index) => pages[index],
          ),

          // Positioned(
          //   bottom: 45,
          //   left: 654,
          //   child: customButton(
          //     button_shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(100)),
          //     text: "Skip",
          //     onPress: () {
          //       pageController.jumpToPage(pages.length - 1);
          //     },
          //     width: 100,
          //     height: 50,
          //     backcolor: AppColors.buttonBackColor,
          //     textstyle: AppTextStyle.semiBold16(color: AppColors.whiteColor),
          //   ),
          // ),

          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: customButton(
                width: 100,
                height: 50,
                backcolor: AppColors.buttonBackColor,
                text: currentPage == pages.length - 1 ? "Finish" : "Next",
                onPress: () {
                  if (currentPage == pages.length - 1) {
                    finishOnboarding();
                  } else {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
