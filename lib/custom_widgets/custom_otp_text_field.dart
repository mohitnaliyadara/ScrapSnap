import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scapsnap/utils/app_colors.dart';
import 'package:scapsnap/utils/app_style.dart';

Widget customOtpTextField(
    FocusNode focusNode,
    FocusNode? nextFocusNode,
    FocusNode? previousFocusNode,
    BuildContext context,
    ){

  return Container(
    margin: EdgeInsets.only(right: 10),
    width: 50,
    height: 50,

    child: TextFormField(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      focusNode: focusNode,
      textInputAction: nextFocusNode != null ? TextInputAction.next : TextInputAction.done,

      cursorColor: AppColors.whiteColor,
      textAlign: TextAlign.center,

      keyboardType: TextInputType.number,
      onChanged: (value) {
        if(value.isNotEmpty){
          if(nextFocusNode != null){
            FocusScope.of(context).requestFocus(nextFocusNode);
          }else{
            focusNode.unfocus();
          }
        }else{
          if(previousFocusNode!= null){
            FocusScope.of(context).requestFocus(previousFocusNode);
          }
        }
      },
      style: AppTextStyle.semiBold18(color: AppColors.whiteColor),
      decoration: InputDecoration(
          filled: true,

          fillColor: AppColors.primaryColor,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50))),
    ),
  );
}