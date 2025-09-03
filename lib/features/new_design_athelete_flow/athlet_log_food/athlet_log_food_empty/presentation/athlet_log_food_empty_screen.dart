
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_icons.dart';
import 'package:tom_app/assets_helper/app_image.dart';
import 'package:tom_app/common_widgets/arrow_button_athelete_flow.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_log_food/athlet_log_food_scan_one/presentation/athlet_log_food_scan_one_screen.dart';
import 'package:tom_app/helpers/all_routes.dart';
import 'package:tom_app/helpers/navigation_service.dart';
import 'package:tom_app/helpers/ui_helpers.dart';
import '../widget/custom_dotted.dart';

class AthletLogFoodEmptyScreen extends StatefulWidget {
  const AthletLogFoodEmptyScreen({super.key});

  @override
  State<AthletLogFoodEmptyScreen> createState() => _AthletLogFoodEmptyScreenState();
}

class _AthletLogFoodEmptyScreenState extends State<AthletLogFoodEmptyScreen> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null && mounted) {
        _navigateToScanScreen(image.path);
      }
    } catch (e) {
      _showError('Error selecting image: $e');
    }
  }

  Future<void> _takePhoto() async {
    try {
      final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
      if (photo != null && mounted) {
        _navigateToScanScreen(photo.path);
      }
    } catch (e) {
      _showError('Error taking photo: $e');
    }
  }

  void _navigateToScanScreen(String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AthletLogFoodScanOneScreen(imagePath: imagePath),
      ),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }





  final List<String> title = [
    'Breakfast',
    'Lunch',
    'Afternoon',

  ];

  final List<String> subtitle = [
    'Chiken Rice Bowl',
    'Green Salad',
    'Green tea',
  ];

  final List<String> calories = [
    '425 Calories',
    '580 Calories',
    '120 Calories',
  ];


  final List<String> image = [
    'assets/images/breakfastimage.png',
    'assets/images/lunchimage.png',
    'assets/images/afternoonimage.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.restbacroundimage),fit: BoxFit.cover)
        ),child:  SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

//=============================== Arrw button ============================//

              ArrowButtonAtheleteFlow(
                text: 'Log Food',
                subtitle: 'Snap your meal, get calorie estimates',
                onTap: () {
                  NavigationService.goBack;
                },
              ),
              UIHelper.verticalSpace(32.h),


//============================== Camera ======================================//

              GestureDetector(
                onTap: _showImageSourceOptions,
                child:  CustomDotted(
                  title: 'Take a photo to track your meal',
                ),
              ),



              UIHelper.verticalSpace(32.h),
              Text(
                  'Recent Meal',
                  style:TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                      fontSize: 18.sp,fontWeight: FontWeight.w500
                  )
              ),
              UIHelper.verticalSpace(12.h),



              GestureDetector(
                onTap: (){NavigationService.navigateTo( Routes.athletsMealScreen);},
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
                      decoration: ShapeDecoration(
                        color: AppColors.c181818,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(image[index], height: 94.h),
                          UIHelper.horizontalSpace(16.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title[index],
                                style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                                  fontSize: 18.sp,
                                ),
                              ),
                              UIHelper.verticalSpace(4.h),
                              Text(
                                subtitle[index],
                                style: TextFontStyle.textStyle24w600cFFFFFFpoppins.copyWith(
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text(
                                calories[index],
                                style: TextFontStyle.textStyle24w600cF55216poppins.copyWith(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              UIHelper.verticalSpace(4.h),
                              Row(
                                children: [
                                  SvgPicture.asset(AppIcons.clcokicon, height: 16.h),
                                  UIHelper.horizontalSpace(4.w),
                                  Text(
                                    '8:00 AM',
                                    style: TextFontStyle.textStyle16w400c757575poppins.copyWith(
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return UIHelper.verticalSpace(12.h);
                  },
                  itemCount: title.length,
                ),
              ),

            ],
          ),
        ),
      ),

      )


    );
  }


//===================================== Galary or Camera ================================//


  void _showImageSourceOptions() {
    showModalBottomSheet(
      backgroundColor: AppColors.c181818,
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading:  Icon(Icons.camera,color: AppColors.orangeColor),
            title:  Text('Take Photo',style: TextStyle(color:AppColors.orangeColor)),
            onTap: () {
              Navigator.pop(context);
              _takePhoto();
            },
          ),
          ListTile(
            leading:  Icon(Icons.photo_library,color: AppColors.orangeColor),
            title:  Text('Choose from Gallery',style: TextStyle(color:AppColors.orangeColor ),),
            onTap: () {
              Navigator.pop(context);
              _pickImage();
            },
          ),
        ],
      ),
    );
  }
}
