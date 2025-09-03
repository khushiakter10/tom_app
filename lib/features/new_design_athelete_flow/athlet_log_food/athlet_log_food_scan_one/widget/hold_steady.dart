
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_image.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_log_food/athlet_log_food_scan_one/widget/widget_retake.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_log_food/athlet_meal_analyze/presentation/athlet_meal_analyze_screen.dart';
import 'package:tom_app/helpers/ui_helpers.dart';


class HoldSteady extends StatelessWidget {
  const HoldSteady({
    super.key,
    required this.imagePath,
    required this.onRetake,
  });

  final String imagePath;
  final Future<void> Function(ImageSource source) onRetake;


  //=========================== Camera And Galerry ===========================//


  void _showPickOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.c181818,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (ctx) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading:  Icon(Icons.camera_alt,color:  AppColors.orangeColor),
                title:  Text("Camera",  style: TextStyle(color: AppColors.orangeColor )),
                onTap: () {
                  Navigator.pop(ctx);
                  onRetake(ImageSource.camera);
                },
              ),
              ListTile(
                leading:  Icon(Icons.photo, color:  AppColors.orangeColor),
                title:  Text("Gallery", style: TextStyle(color: AppColors.orangeColor )),
                onTap: () {
                  Navigator.pop(ctx);
                  onRetake(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

//================================== Done =====================================//


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: AppColors.c181818,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imagePath.isNotEmpty
              ? ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.file(
              File(imagePath),
              height: 84.h,
              width: 84.h,
              fit: BoxFit.cover,
            ),
          )
              : Image.asset(AppImages.retakeimage, height: 84.h,),
          UIHelper.horizontalSpace(16.w),
          Expanded(
            child: Column(
              children: [
  //=========================== Reatke ====================================//

                GestureDetector(
                  onTap: () => _showPickOptions(context),
                  child: WidgetRetake(
                    borderColor: Border.all(color: AppColors.orangeColor),
                   color: AppColors.c181818,
                    text: 'Retake',
                  ),
                ),
                UIHelper.verticalSpace(12.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AthletMealAnalyzeScreen(imagePath: imagePath),
                      ),
                    );
                  },

    //============================ Analyze ==========================//

                  child: WidgetRetake(
                    borderColor: Border.all(color: Colors.transparent),
                    color: AppColors.orangeColor,
                    textStyle: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    text: 'Analyze Now',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
