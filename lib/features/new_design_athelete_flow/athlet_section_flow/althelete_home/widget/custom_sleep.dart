import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/helpers/ui_helpers.dart';


class CustomSleep extends StatelessWidget {
  final Widget image;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const CustomSleep({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle, this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10.sp),
        decoration: ShapeDecoration(
          color: AppColors.c090809,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Column(
          children: [
            image,
           // Image.asset(AppImages.sleepimage, height: 40.h),
            UIHelper.verticalSpace(8.h),
            Text(
              title,
             // 'Sleep',
              textAlign: TextAlign.center,
              style: TextFontStyle.textStyle16w400c757575poppins.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            UIHelper.verticalSpace(8.h),
            Text(
              subtitle,
              //'6.2 hours',
              style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
