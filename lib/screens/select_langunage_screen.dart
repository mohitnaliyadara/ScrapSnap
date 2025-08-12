import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scapsnap/custome_widgets/custom_bottom_sheet.dart';
import 'package:scapsnap/utils/app_colors.dart';
import 'package:scapsnap/utils/images.dart';

class SelectLangunageScreen extends StatefulWidget {
  const SelectLangunageScreen({super.key});

  @override
  State<SelectLangunageScreen> createState() => _SelectLangunageScreenState();
}

class _SelectLangunageScreenState extends State<SelectLangunageScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      customBottomSheet(context: context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(top: 100),
        child: SvgPicture.asset(AppImages.sLangunageScreen),
      ),

    );
  }
}
