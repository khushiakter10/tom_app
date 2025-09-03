
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_image.dart';
import 'package:tom_app/common_widgets/custom_button_widget.dart';
import 'package:tom_app/helpers/all_routes.dart';
import 'package:tom_app/helpers/navigation_service.dart';
import 'package:tom_app/helpers/ui_helpers.dart';

class ChooseModeScreen extends StatefulWidget {
  const ChooseModeScreen({super.key});

  @override
  State<ChooseModeScreen> createState() => _ChooseModeScreenState();
}

class _ChooseModeScreenState extends State<ChooseModeScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.restbacroundimage),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                Text(
                  'Choose Your Mode',
                  style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 40.sp,
                  ),
                ),
                UIHelper.verticalSpace(12.h),
                Text(
                  'For individuals improving balance & mobility after brain injury or stroke',
                  style: TextFontStyle.textStyle24w400cA3A3A3poppins,
                ),
                UIHelper.verticalSpace(32.h),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    padding:
                    EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
                    decoration: ShapeDecoration(
                      color: AppColors.c1C1C1C,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          color: selectedIndex == 0
                              ? AppColors.c87B842 // selected color
                              : Color(0xFF757575), // default
                        ),
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                    ),
                    child: Text(
                      'TBI / Stroke\n Recovery Mode',
                      textAlign: TextAlign.center,
                      style: TextFontStyle.textStyle14w400c87B842poppins.copyWith(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color: selectedIndex == 0
                            ? AppColors.c87B842
                            : Colors.white,
                      ),
                    ),
                  ),
                ),

                UIHelper.verticalSpace(24.h),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    padding:
                    EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
                    decoration: ShapeDecoration(
                      color: AppColors.c1C1C1C,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 3,
                          color: selectedIndex == 1
                              ? AppColors.orangeColor
                              : Color(0xFF757575),
                        ),
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                    ),
                    child: Text(
                      'Athlete Mode',
                      textAlign: TextAlign.center,
                      style: TextFontStyle.textStyle24w600cF55216poppins
                          .copyWith(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color:
                        selectedIndex == 1 ? AppColors.orangeColor : Colors.white,
                      ),
                    ),
                  ),
                ),

                UIHelper.verticalSpace(204.h),

                CustomButtonWidget(
                  textStyle: TextFontStyle.textStyle20w700c000000poppins,
                  image: DecorationImage(
                    image: AssetImage(AppImages.withbacrounbutton),
                  ),
                  onTap: () {
                    if (selectedIndex == -1) {

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please select a mode to continue',style: TextStyle(color: Colors.black),),
                          backgroundColor: Colors.white,
                          duration: Duration(seconds: 2),
                        ),
                      );
                      return;
                    }

                    // Navigate based on selection
                    if (selectedIndex == 0) {
                      NavigationService.navigateTo(Routes.signUpScreen);
                    } else {
                      NavigationService.navigateTo(Routes.personalInformationSignUpScreen);
                    }
                  },
                  text: 'GET STARTED',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}