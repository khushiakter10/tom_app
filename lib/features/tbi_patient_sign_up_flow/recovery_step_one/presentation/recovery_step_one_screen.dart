
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/common_widgets/custom_arrow_back.dart';
import 'package:tom_app/common_widgets/custom_button_widget.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_one/widget/calander_custom.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_one/widget/custom_inuhry.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_one/widget/custom_stepbar.dart';
import 'package:tom_app/helpers/all_routes.dart';
import 'package:tom_app/helpers/navigation_service.dart';
import 'package:tom_app/helpers/ui_helpers.dart';



class RecoveryStepOneScreen extends StatefulWidget {
  const RecoveryStepOneScreen({super.key});

  @override
  State<RecoveryStepOneScreen> createState() => _RecoveryStepOneScreenState();
}

class _RecoveryStepOneScreenState extends State<RecoveryStepOneScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController dateController = TextEditingController();


  final List<String> images = [
    'assets/images/recoverimage.png',
    'assets/images/ongoingimage.png',
    'assets/images/advenceimage.png',
    'assets/images/maintenaceimage.png',
  ];

  final List<String> titles = [
    'Early Recover Phase',
    'Ongoing Rehabilitation',
    'Advanced Recovery',
    'Ongoing Maintenance (Long Term)',
  ];

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bacroundColorBlack,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbarWidget(
                onTap: () {
                  NavigationService.goBack();
                },
                text: 'Your Recovery Journey',
              ),
              UIHelper.verticalSpace(24.h),

              CustomStepBar(
                currentStep: 0,
                onTap: () {
                  NavigationService.navigateTo(Routes.recoveryStepTwoScreen);
                },
                onStepTap: (int index) {},
              ),

              UIHelper.verticalSpace(24.h),

              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [


                        CustomInuhry(),

                        UIHelper.verticalSpace(24.h),

                        /// ===================== Injury Date =====================
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
                                  'Injury Date',
                                  style: TextFontStyle
                                      .textStyle24w600cFFFFFFpoppins
                                      .copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                UIHelper.verticalSpace(12.h),

                                /// FormField for validation
                                FormField<String>(
                                  validator: (value) {
                                    if (dateController.text.isEmpty) {
                                      return 'Please select injury date';
                                    }
                                    return null;
                                  },
                                  builder: (formFieldState) {
                                    return Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CalanderCustom(
                                          controller: dateController,
                                          hintText: 'Select Date',
                                        ),
                                        if (formFieldState.hasError)
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 6.h, left: 8.w),
                                            child: Text(
                                              formFieldState.errorText!,
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 12.sp,
                                              ),
                                            ),
                                          ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),

                        UIHelper.verticalSpace(24.h),

                        /// ===================== Recovery Stage =====================

                      Container(
                        width: double.infinity,
                        decoration: ShapeDecoration(
                          color: AppColors.c181818,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
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
                                'Current Recovery Stage',
                                style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp,
                                ),
                              ),
                              UIHelper.verticalSpace(12.w),

                              ListView.builder(
                                scrollDirection: Axis.vertical,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: titles.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final isSelected = selectedIndex == index;

                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.symmetric(vertical: 8.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12.w,
                                        vertical: 8.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.c2A2A2A,
                                        borderRadius: BorderRadius.circular(20.r),
                                        border: Border.all(
                                          color: isSelected
                                              ? AppColors.c87B842
                                              : Colors.transparent,
                                          width: 2.w,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            images[index],
                                            height: 32.h,
                                          ),
                                          UIHelper.horizontalSpace(10.h),
                                          Expanded(
                                            child: Text(
                                              titles[index],
                                              style: TextFontStyle.textStyle14w400cA3A3A3poppins,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),

                        UIHelper.verticalSpace(32.h),

                        /// ===================== Next Button =====================
                        CustomButtonWidget(
                          text: 'Next',
                          onTap: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              if (selectedIndex == -1) {
                                setState(() {}); // show error under stage list
                                return;
                              }
                              NavigationService.navigateTo(
                                  Routes.recoveryStepTwoScreen);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
