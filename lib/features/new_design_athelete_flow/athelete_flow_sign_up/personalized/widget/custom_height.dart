import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_icons.dart';
import 'package:tom_app/common_widgets/custom_textfeild.dart';
import 'package:tom_app/helpers/ui_helpers.dart';



class CustomHeight extends StatelessWidget {
  final TextEditingController controller;
  final bool isFtIn;
  final Function(bool)? onUnitChange;

  const CustomHeight({
    super.key,
    required this.controller,
    this.isFtIn = false,
    this.onUnitChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: AppColors.c181818,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppIcons.heighticon, height: 20.h),
                UIHelper.horizontalSpace(8.w),
                Text(
                  'Height',
                  style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(12.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: AppColors.c2A2A2A,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      inputType: TextInputType.number,
                      controller: controller,
                      textAlign: TextAlign.start,
                      hintText: 'Enter height',
                      hintTextSyle: TextFontStyle.textStyle16w400c757575poppins,
                      style: TextStyle(color: Colors.white),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your height";
                        }
                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return "Height must be a number";
                        }
                        return null;
                      },
                    ),
                  ),
                  UIHelper.horizontalSpace(8.w),
                  Container(
                    height: 40.h,
                    width: 2,
                    color: AppColors.c454545,
                  ),
                  UIHelper.horizontalSpace(8.w),
                  Text(
                    isFtIn ? 'ft/in' : 'cm',
                    style: TextFontStyle.textStyle16w400c757575poppins,
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(16.h),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (onUnitChange != null) onUnitChange!(false);
                    },
                    child: _unitBox('cm', !isFtIn),
                  ),
                ),
                UIHelper.horizontalSpace(16.w),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (onUnitChange != null) onUnitChange!(true);
                    },
                    child: _unitBox('ft/in', isFtIn),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _unitBox(String text, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: ShapeDecoration(
        color: AppColors.c2A2A2A,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: isActive ? AppColors.orangeColor : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
