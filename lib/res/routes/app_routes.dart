

import 'package:get/get.dart';
import 'package:scapsnap/res/routes/routes_name.dart';
import 'package:scapsnap/screens/onboarding_screens/onboarding_screen.dart';
import '../../screens/splash_screen.dart';

class AppRoutes{

  static List<GetPage> appRoutes = [
      GetPage(name: RoutesName.splashScreen, page:()=> SplashScreen()
      ),

    GetPage(name: RoutesName.onboardingScreen, page:()=> OnboardingScreen()
    ),
  ];
}