import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scapsnap/res/routes/app_routes.dart';
import 'package:scapsnap/screens/sign_in_screens/signin_mobile_screen.dart';
import 'package:scapsnap/screens/splash_screen.dart';
import 'package:scapsnap/utils/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> isOnboardingSeen()async{
   final prefs = await SharedPreferences.getInstance();
   return prefs.getBool("seeOnboarding") ?? false;
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      // home: FutureBuilder(future: isOnboardingSeen(), builder: (context, snapshot) {
      //   if(!snapshot.hasData) return CircularProgressIndicator();
      //   return snapshot.data! ? SigninMobileScreen() : SigninMobileScreen();
      // },),
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes,
    );
  }
}
