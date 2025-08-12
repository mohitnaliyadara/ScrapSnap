import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scapsnap/controller/global_variable.dart';
import 'package:scapsnap/custome_widgets/custom_button.dart';
import 'package:scapsnap/utils/app_colors.dart';
import 'package:scapsnap/utils/app_style.dart';

Future<void> customBottomSheet({required BuildContext context}) async {
  final globalVariable = Get.put(GlobalVariable());

  await showModalBottomSheet(
    context: context,
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
      borderSide: BorderSide.none,
    ),
    builder: (BuildContext context) {
      return Container(
        height: 400,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("Select Language", style: AppTextStyle.semiBold22()),

            // Reactive Radio ListTiles
            Obx(() => Column(
              children: [
                RadioListTile<String>(

                  title: Text("English"),
                  value: "English",
                  groupValue: globalVariable.selectedLanguage.value,
                  onChanged: (value) {
                    globalVariable.selectedLanguage.value = value!;
                  },
                ),
                RadioListTile<String>(
                  title: Text("Hindi"),
                  value: "Hindi",
                  groupValue: globalVariable.selectedLanguage.value,
                  onChanged: (value) {
                    globalVariable.selectedLanguage.value = value!;
                  },
                ),
                RadioListTile<String>(
                  title: Text("Gujarati"),
                  value: "Gujarati",
                  groupValue: globalVariable.selectedLanguage.value,
                  onChanged: (value) {
                    globalVariable.selectedLanguage.value = value!;
                  },
                ),
              ],
            )),

           customButton(
               backcolor: AppColors.buttonBackColor,
               topmargin: 10,
               width: 200,
               height: 50,
               text: "Done", onPress: (){
             Navigator.pop(context);
           })
          ],
        ),
      );
    },
  );
}
