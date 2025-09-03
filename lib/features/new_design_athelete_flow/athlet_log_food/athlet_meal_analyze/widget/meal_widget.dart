import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_image.dart';
import 'package:tom_app/helpers/ui_helpers.dart';


class MealWidget extends StatefulWidget {
  const MealWidget({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  State<MealWidget> createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  late String _displayImagePath;

  @override
  void initState() {
    super.initState();
    _displayImagePath = widget.imagePath;
    _saveImage();
  }

  Future<void> _saveImage() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final fileName = 'meal_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final savedImage = await File(widget.imagePath).copy('${directory.path}/$fileName');

      if (mounted) {
        setState(() {
          _displayImagePath = savedImage.path;
        });
      }
    } catch (e) {
      // Fallback to original path if saving fails
      if (mounted) {
        setState(() {
          _displayImagePath = widget.imagePath;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310.h,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.c181818,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.c454545, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main meal image
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              image: DecorationImage(
                image: FileImage(File(_displayImagePath)),
                fit: BoxFit.cover,
              ),
            ),
            height: 185.h,
            width: double.infinity,
          ),
          UIHelper.verticalSpace(18.h),

          Row(
            children: [
              Container(
                width: 32.h,
                height: 32.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: FileImage(File(_displayImagePath)),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              UIHelper.horizontalSpace(8.w),
              Text(
                "Chicken Rice Bowl",
                style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(8.h),

          // Calories information row
          Row(
            children: [
              Image.asset(AppImages.agunimage, height: 24.h),
              UIHelper.horizontalSpace(8.w),
              Text(
                "620",
                style: TextFontStyle.textStyle24w600cF55216poppins.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              UIHelper.horizontalSpace(4.w),
              Text(
                'estimated calories',
                style: TextFontStyle.textStyle16w400c757575poppins.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}