import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:scapsnap/custome_widgets/custom_button.dart';
import 'package:scapsnap/custome_widgets/custom_text_button.dart';
import 'package:scapsnap/custome_widgets/custom_text_field.dart';
import 'package:scapsnap/custome_widgets/phone_filed.dart';
import 'package:scapsnap/utils/app_colors.dart';
import 'package:scapsnap/utils/app_style.dart';
import 'package:scapsnap/utils/images.dart';

class SigninMobileScreen extends StatefulWidget {
  const SigninMobileScreen({super.key});

  @override
  State<SigninMobileScreen> createState() => _SigninMobileScreenState();
}

class _SigninMobileScreenState extends State<SigninMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            SvgPicture.asset(AppImages.signinScreen),
            SizedBox(height: 20),
            Text(
              "Enter Name & Mobile Number",
              style: AppTextStyle.semiBold20(),
            ),
            Text(
              "SignIn with Name & Mobile number",
              style: AppTextStyle.regular16(),
            ),
            customTextField(
              hint: "Enter Name: ",
              width: 333,
              height: 50,
              topMargin: 30,
            ),
            phoneTextField(),

            customButton(
              text: "Verify Using OTP",
              onPress: () {
              },
              backcolor: AppColors.primaryColor,
              width: 333,
              height: 40,
              topmargin: 30,
              textstyle: AppTextStyle.semiBold16(color: AppColors.whiteColor),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By Continuing, You Agree To Our"),
                customTextButton(text: "Term And Condition", onPress: (){},height: 30,backColor: AppColors.whiteColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
