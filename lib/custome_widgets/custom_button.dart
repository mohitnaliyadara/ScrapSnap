import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
Widget customButton({
  required String text,
  required void Function() onPress,
  double? width,
  double? height,
  double? topmargin,
  Color? backcolor,
  TextStyle? textstyle,
}) {
  final isFinish = text.toLowerCase() == "next";

  return Container(
    margin: EdgeInsets.only(top: topmargin ?? 10),
    width: isFinish ? 60 : (width ?? 200),
    height: isFinish ? 60 : (height ?? 50),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backcolor ?? Colors.deepPurple.shade500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(isFinish ? 100 : 20),
        ),
        padding: EdgeInsets.zero, // removes default padding
        alignment: Alignment.center, // ensures true center
      ),
      onPressed: onPress,
      child: isFinish
          ? Icon(
        Icons.arrow_forward_sharp,
        color: AppColors.whiteColor,
        size: 22,
      )
          : Text(
        text,
        style: textstyle,
      ),
    ),
  );
}
