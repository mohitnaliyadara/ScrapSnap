import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GlobalVariable extends GetxController{

    // controllers
   static TextEditingController phoneNumberController = TextEditingController();

    RxString selectedLanguage = "English".obs;
    RxBool isLanguageSelect = false.obs;

}