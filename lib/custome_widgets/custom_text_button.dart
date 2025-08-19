import 'package:flutter/material.dart';
import 'package:scapsnap/utils/app_colors.dart';
import 'package:scapsnap/utils/app_style.dart';

Widget customTextButton({
  required String text,
  required void Function() onPress,
  double? width = 20,
  Color? backColor,
  double? height = 30,
}) {
  return Container(
    decoration: BoxDecoration(
      color: backColor ?? AppColors.primaryColor,
      borderRadius: BorderRadius.circular(100),
    ),
    child: TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      onPressed: onPress,
      child: Text(text, style: AppTextStyle.semiBold14()),
    ),
  );
}
