
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_image.dart';
import 'package:tom_app/common_widgets/arrow_button_athelete_flow.dart';
import 'package:tom_app/common_widgets/custom_button_widget.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/experience_level/widget/custom_level_select.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/select_goal/widget/stepbar_select_goal.dart';
import 'package:tom_app/helpers/all_routes.dart';
import 'package:tom_app/helpers/navigation_service.dart';
import 'package:tom_app/helpers/ui_helpers.dart';




class ExperienceLevelScreen extends StatefulWidget {
  const ExperienceLevelScreen({super.key});

  @override
  State<ExperienceLevelScreen> createState() => _ExperienceLevelScreenState();
}

class _ExperienceLevelScreenState extends State<ExperienceLevelScreen> {
  final List<String> title = [
    'BEGINNER',
    'INTERMEDIATE',
    'ADVANCED',
  ];

  int? selectedIndex;
  String? errorMessage;

  void _onNext() {
    if (selectedIndex == null) {
      setState(() {
        errorMessage = "⚠️ Please select your experience level to continue";
      });
      return;
    }

    setState(() {
      errorMessage = null;
    });

    NavigationService.navigateTo(Routes.personalizedScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bacroundimage), fit: BoxFit.cover)),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

   //============================== Arrw Back ==================================//

                ArrowButtonAtheleteFlow(
                  onTap: () {
                    NavigationService.goBack;
                  },
                ),

     //===================================== TExt ============================//

                UIHelper.verticalSpace(12.h),
                Text(
                  'Let\'s Personalize\nYour Program',
                  style: TextFontStyle.textStyle24w700cFFFFFFTeko
                      .copyWith(fontSize: 32.sp),
                ),


    //================================ Listview =============================================//
                UIHelper.verticalSpace(18.h),
                StepBarSelectGoal(
                  currentStep: 2,
                  onTap: () {
                    NavigationService.navigateTo(Routes.recoveryStepTwoScreen);
                  },
                  onStepTap: (int index) {},
                ),
                UIHelper.verticalSpace(18.h),
                Text(
                  'Select Experience Level',
                  style: TextFontStyle.textStyle24w600cFFFFFFpoppins,
                ),
                UIHelper.verticalSpace(28.h),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: CustomLevelSelect(
                        title: title[index],
                        isSelected: isSelected,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return UIHelper.verticalSpace(24.h);
                  },
                  itemCount: title.length,
                ),
                if (errorMessage != null) ...[
                  UIHelper.verticalSpace(12.h),
                  Text(
                    errorMessage!,
                    style: TextStyle(color: Colors.red, fontSize: 14.sp),
                  ),
                ],

    //================================== Button ================================//
                UIHelper.verticalSpace(170.h),
                CustomButtonWidget(
                  onTap: _onNext,
                  textStyle: TextFontStyle.textStyle20w700cFFFFFFTeko,
                  image: DecorationImage(
                      image: AssetImage(AppImages.orangebutton)),
                  text: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
