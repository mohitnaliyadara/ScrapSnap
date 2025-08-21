import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scapsnap/controller/global_variable.dart';
import 'package:scapsnap/custom_widgets/custom_button.dart';
import 'package:scapsnap/custom_widgets/custom_otp_text_field.dart';
import 'package:scapsnap/custom_widgets/custom_text_button.dart';
import 'package:scapsnap/utils/app_colors.dart';
import 'package:scapsnap/utils/app_style.dart';
import 'package:scapsnap/utils/images.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              SvgPicture.asset(AppImages.otpScreenImage),
              SizedBox(height: 20),
              Text("OTP", style: AppTextStyle.semiBold18()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OTP is send on ${GlobalVariable.phoneNumberController.text.substring(0, 3)}****${GlobalVariable.phoneNumberController.text.substring(7)} Please input",
                    style: AppTextStyle.semiBold14(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customOtpTextField(
                    GlobalVariable.focusNodes[0],
                    GlobalVariable.focusNodes[1],
                    null,
                    context,
                  ),
                  customOtpTextField(
                    GlobalVariable.focusNodes[1],
                    GlobalVariable.focusNodes[2],
                    GlobalVariable.focusNodes[0],
                    context,
                  ),
                  customOtpTextField(
                    GlobalVariable.focusNodes[2],
                    GlobalVariable.focusNodes[3],
                    GlobalVariable.focusNodes[1],
                    context,
                  ),
                  customOtpTextField(
                    GlobalVariable.focusNodes[3],
                    null,
                    GlobalVariable.focusNodes[2],
                    context,
                  ),
                ],
              ),
              customButton(
                text: "Submit",
                onPress: () {},
                topmargin: 80,
                backcolor: AppColors.greenColor,
                textstyle: AppTextStyle.semiBold16(color: AppColors.whiteColor),
              ),
              SizedBox(height: 20,),
              customTextButton(text: "Resend OTP", onPress: (){},textColor: AppColors.greenColor,backColor: AppColors.transparentColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("Mobile Number Entered Wrong? "),
                customTextButton(text: "Enter Again", onPress: (){
                  Get.toNamed("/signin_mobile_screen");
                },backColor: Colors.transparent,textColor: AppColors.greenColor,topMargin: 4)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
