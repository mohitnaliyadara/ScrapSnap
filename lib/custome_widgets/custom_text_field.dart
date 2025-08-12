import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scapsnap/utils/app_colors.dart';

Widget customTextField({
  required String hint,
  double width = 200,
  double height = 30,
  double topMargin = 10,
  List<TextInputFormatter>? textInputFormate,
  TextInputType? textInputype,
}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: topMargin),
    child: TextFormField(
      inputFormatters: textInputFormate,
      keyboardType: textInputype,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        label: Text(hint),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.blackColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );
}
