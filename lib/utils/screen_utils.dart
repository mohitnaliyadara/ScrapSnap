import 'package:flutter/cupertino.dart';

class ScreenUtils{


  static double screenWidth(BuildContext context) =>
     MediaQuery.of(context).size.width;
  
  static double screenHeight(BuildContext context) =>
     MediaQuery.of(context).size.height;


  static bool isMobile(BuildContext context) => 
      screenWidth(context) < 600;

  static bool isTablet(BuildContext context)=>
      screenWidth(context) >=600 && screenWidth(context) <1024;

  static bool isDesktop(BuildContext context)=>
      screenWidth(context) >=1024;

  static double responsiveValue ({

      required BuildContext context,
      required double mobile,
      double? tablet,
    double? desktop
}){
    if(isDesktop(context) && desktop != null) return desktop;
    if(isTablet(context) && tablet != null) return tablet;
    return mobile;


}
}