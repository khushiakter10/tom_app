import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_icons.dart';
import 'package:tom_app/common_widgets/custom_arrow_back.dart';
import 'package:tom_app/common_widgets/custom_button_widget.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_one/widget/custom_stepbar.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_three/widget/recovery_goal.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_three/widget/short_time.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_three/widget/slider_custom.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_three/widget/weeks_dropdwon.dart';
import 'package:tom_app/helpers/all_routes.dart';
import 'package:tom_app/helpers/navigation_service.dart';
import 'package:tom_app/helpers/ui_helpers.dart';





class RecoveryStepThreeScreen extends StatefulWidget {
  const RecoveryStepThreeScreen({super.key});

  @override
  State<RecoveryStepThreeScreen> createState() => _RecoveryStepThreeScreenState();
}

class _RecoveryStepThreeScreenState extends State<RecoveryStepThreeScreen> {

  double sliderValue = 0.5;
  String selectedRecoveryGoal = 'Return to Work';

  String selectedDuration = '4 Weeks';
  List<String> durationList = ['4 Weeks', '1 Weeks', '3 Weeks', '5 Weeks'];


  final Map<String, List<String>> goalLabels = {
    'Return to Work': ['Light Duties', 'Part time', 'Full Return'],
    'Physical Activity': ['Light', 'Moderate', 'Full Activity'],
    'Social Life': ['Limited', 'Moderate', 'Full Social'],
    'Mental Wellbeing': ['Basic', 'Improved', 'Optimal'],
  };


  String selectedTimePeriod = 'short';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bacroundColorBlack,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbarWidget(
                onTap: (){NavigationService.goBack;},
                text: 'Your Recovery Journey',
              ),
              UIHelper.verticalSpace(24.h),
              CustomStepBar(
                currentStep: 2,
                onTap: () {
                  NavigationService.navigateTo(Routes.recoveryStepTwoScreen);
                },
                onStepTap: (int index) {
                },
              ),
              UIHelper.verticalSpace(24.h),

              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: AppColors.c181818,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 16.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Set Recovery Goal Time',
                        style: TextFontStyle.textStyle14w400cA3A3A3poppins.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                      UIHelper.verticalSpace(16.h),
     //===============================================   Recovery =============================================

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ShortTime(
                            text: 'Short\nTime',
                            isSelected: selectedTimePeriod == 'short',
                            onTap: () {
                              setState(() {
                                selectedTimePeriod = 'short';
                              });
                            },
                          ),
                        ),
                        UIHelper.horizontalSpace(16.w),
                        Expanded(
                          child: ShortTime(
                            text: 'Medium\nTerm',
                            isSelected: selectedTimePeriod == 'medium',
                            onTap: () {
                              setState(() {
                                selectedTimePeriod = 'medium';
                              });
                            },
                          ),
                        ),
                        UIHelper.horizontalSpace(16.w),
                        Expanded(
                          child: ShortTime(
                            text: 'Long\nTerm',
                            isSelected: selectedTimePeriod == 'long',
                            onTap: () {
                              setState(() {
                                selectedTimePeriod = 'long';
                              });
                            },
                          ),
                        ),
                      ],
                    ),


                      UIHelper.verticalSpace(16.h),
                      Text(
                        'Set Recovery Goal',
                        style: TextFontStyle.textStyle14w400cA3A3A3poppins.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                      UIHelper.verticalSpace(16.h),


                      ///========================================
                      Row(
                        children: [
                          RecoveryGoal(
                            title: 'Return to Work',
                            isSelected: selectedRecoveryGoal == 'Return to Work',
                            onTap: () {
                              setState(() {
                                selectedRecoveryGoal = 'Return to Work';
                              });
                            },
                          ),
                          RecoveryGoal(
                            title: 'Physical Activity',
                            isSelected: selectedRecoveryGoal == 'Physical Activity',
                            onTap: () {
                              setState(() {
                                selectedRecoveryGoal = 'Physical Activity';
                              });
                            },
                          ),
                        ],
                      ),
                      UIHelper.verticalSpace(12.h),
                      Row(
                        children: [
                          RecoveryGoal(
                            title: 'Social Life',
                            isSelected: selectedRecoveryGoal == 'Social Life',
                            onTap: () {
                              setState(() {
                                selectedRecoveryGoal = 'Social Life';
                              });
                            },
                          ),
                          RecoveryGoal(
                            title: 'Mental Wellbeing',
                            isSelected: selectedRecoveryGoal == 'Mental Wellbeing',
                            onTap: () {
                              setState(() {
                                selectedRecoveryGoal = 'Mental Wellbeing';
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(24.h),



              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: AppColors.c181818,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Progress Timeline',
                        style: TextFontStyle.textStyle14w400cA3A3A3poppins.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                      UIHelper.verticalSpace(12.h),



                      ProgressTimeline(
                        sliderValue: 0.5,
                        onChanged: (value) {
                          print('Slider snapped to: $value');
                        },
                        labels: const ['Start', 'Middle', 'End'],
                      ),



                      UIHelper.verticalSpace(16.h),
                      Text(
                        'Target Date',
                        style: TextFontStyle.textStyle14w400cA3A3A3poppins.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                      UIHelper.verticalSpace(12.h),

                      WeeksDropdwon(
                        items: durationList,
                        initialValue: '4 Weeks',
                        onChanged: (value) {
                          print('Selected duration: $value');
                          // Add your logic here
                        },
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        iconPath: AppIcons.bottomdrodwonicon,
                        iconHeight: 18,
                      ),

                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(32.h),
              CustomButtonWidget(
                onTap: (){NavigationService.navigateTo(Routes.allSetScreen);},
                  text: 'Next'),
            ],
          ),
        ),
      ),
    );
  }
}








