import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GlobalVariable extends GetxController{

    // controllers
   static TextEditingController phoneNumberController = TextEditingController();

   //lits

   static final List<FocusNode> focusNodes = List.generate(4, (index)=>FocusNode());

    RxString selectedLanguage = "English".obs;
    RxBool isLanguageSelect = false.obs;


}