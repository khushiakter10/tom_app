
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:tom_app/assets_helper/app_image.dart';
import 'package:tom_app/helpers/ui_helpers.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.restbacroundimage),fit: BoxFit.cover)
        ),child:  Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UIHelper.verticalSpace(144.h),
              Image.asset(AppImages.bikeimage,height: 246.h),
               UIHelper.verticalSpace(102.h),
              Lottie.asset('assets/lottie/loadinglotiefile.json',height: 200.h,width: 200.w),

            ],
          ),
        ),
      ),
      )


    );
  }
}
