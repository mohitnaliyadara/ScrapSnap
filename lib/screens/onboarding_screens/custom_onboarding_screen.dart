import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_style.dart';
import '../../utils/screen_utils.dart';

class CustomOnboardingScreen extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  const CustomOnboardingScreen({super.key, required this.image, required this.title, required this.subtitle});

  @override
  State<CustomOnboardingScreen> createState() => _CustomOnboardingScreenState();
}

class _CustomOnboardingScreenState extends State<CustomOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 164).copyWith(
                top: ScreenUtils.responsiveValue(
                  context: context,
                  mobile: 164,
                  desktop: 155,
                ),
              ),
              child: SvgPicture.asset(widget.image),
            ),
            SizedBox(height: 70),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: widget.title,
                    style: AppTextStyle.bold18(
                      height: 2,
                      letterSpacing: 0.5,
                    ).copyWith(
                      fontSize: ScreenUtils.responsiveValue(
                        context: context,
                        mobile: 22,
                        desktop: 25,
                      ),
                    ),
                  ),

                  TextSpan(
                    text:
                   widget.subtitle,
                    style: AppTextStyle.regular18(
                      height: 1.5,
                      letterSpacing: 0.5,
                    ).copyWith(
                      fontSize: ScreenUtils.responsiveValue(
                        context: context,
                        mobile: 17,
                        desktop: 20,
                        tablet: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
