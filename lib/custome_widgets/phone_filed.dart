import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../utils/app_colors.dart';

Widget phoneTextField() => Container(
    margin: EdgeInsets.only(top: 10),
    width: 333,
    height: 60,
    child: IntlPhoneField(
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,

      ],
      dropdownIconPosition: IconPosition.leading,
      keyboardAppearance: Brightness.light,
      dropdownDecoration: BoxDecoration(
        color: Colors.transparent,
        border: BoxBorder.fromLTRB(right: BorderSide(color: AppColors.blackColor,)),
        borderRadius: BorderRadius.horizontal(right: Radius.circular(10))
      ),
      decoration: InputDecoration(
        hintText: 'Phone Number',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.blackColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),

          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.redColor),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      initialCountryCode: 'IN', // Default India
      onChanged: (phone) {
        // print(phone.completeNumber); // +919876543210
      },
    ),
  );
