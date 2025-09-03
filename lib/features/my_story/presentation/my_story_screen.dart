import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/features/my_story/widget/custom_card.dart';
import 'package:tom_app/features/my_story/widget/custom_tom.dart';
import 'package:tom_app/features/my_story/widget/recovery_journey.dart';
import 'package:tom_app/features/my_story/widget/special_thanks.dart';
import 'package:tom_app/features/my_story/widget/tbi_recovery.dart';
import 'package:tom_app/helpers/ui_helpers.dart';



class MyStoryScreen extends StatefulWidget {
  const MyStoryScreen({super.key});

  @override
  State<MyStoryScreen> createState() => _MyStoryScreenState();
}

class _MyStoryScreenState extends State<MyStoryScreen> {
  double progressValue = 0.6;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bacroundColorBlack,
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 12.h),
              child: Column(
                children: [
                  TBIRecovery(title: 'My Story'),
                ],
              ),
            ),


            CustomCard(text:'Recovery isn’t a straight line. It’s a path with ups, downs, and unexpected turns.'),

            UIHelper.verticalSpace(24.h),


            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [

                    CustomTom(title: 'Tom'),
                    UIHelper.verticalSpace(24.h),

                    RecoveryJourney(progressValue: progressValue),
                    UIHelper.verticalSpace(24.h),


                    SpecialThanks(title: 'Special Thanks',),
                    UIHelper.verticalSpace(30.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





