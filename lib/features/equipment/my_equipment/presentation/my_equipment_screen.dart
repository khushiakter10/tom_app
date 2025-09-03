import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_image.dart';
import 'package:tom_app/features/my_story/widget/tbi_recovery.dart';
import 'package:tom_app/helpers/ui_helpers.dart';


class MyEquipmentScreen extends StatefulWidget {
  const MyEquipmentScreen({super.key});

  @override
  State<MyEquipmentScreen> createState() => _MyEquipmentScreenState();
}

class _MyEquipmentScreenState extends State<MyEquipmentScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bacroundColorBlack,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 12.h),
          child: Column(
            children: [
              TBIRecovery(title: 'My Equipment'),
              UIHelper.verticalSpace(32.h),
              Image.asset(AppImages.copyImage,height: 196.h,),
              UIHelper.verticalSpace(48.h),
              Text(
                'No Equipment Added Yet!',
                textAlign: TextAlign.center,
                style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                  fontWeight: FontWeight.w500
                )
              ),
              UIHelper.verticalSpace(12.h),
              Text(
                'Start tracking the tools you use for your recovery or training. Add equipment to personalize your experience.”',
                textAlign: TextAlign.center,
                style: TextFontStyle.textStyle16w400c757575poppins.copyWith(
                  fontSize: 14.sp
                )
              ),
              UIHelper.verticalSpace(44.h),

            ],
          ),
        ),
      ),
    );
  }
}
