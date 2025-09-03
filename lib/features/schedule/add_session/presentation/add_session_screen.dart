import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_icons.dart';
import 'package:tom_app/bottom_nav_screen.dart';
import 'package:tom_app/common_widgets/custom_arrow_back.dart';
import 'package:tom_app/common_widgets/custom_button_widget.dart';
import 'package:tom_app/common_widgets/custom_textfeild.dart';
import 'package:tom_app/features/log_activity/widget/log_activity_calander.dart';
import 'package:tom_app/features/schedule/add_session/widget/custom_time_clock.dart';
import 'package:tom_app/features/schedule/add_session/widget/hydro_therapy.dart';
import 'package:tom_app/features/schedule/add_session/widget/notification_dropdwon.dart';
import 'package:tom_app/helpers/navigation_service.dart';
import 'package:tom_app/helpers/ui_helpers.dart';
import '../widget/duration_time.dart';



class AddSessionScreen extends StatefulWidget {
  const AddSessionScreen({super.key});

  @override
  State<AddSessionScreen> createState() => _AddSessionScreenState();}
class _AddSessionScreenState extends State<AddSessionScreen> {


  final TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  late TextEditingController dateController;
  @override
  void initState() {
    super.initState();
    dateController = TextEditingController();
  }

  @override
  void dispose() {
    dateController.dispose();
    nameController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bacroundColorBlack,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomAppbarWidget(
                  onTap: (){NavigationService.goBack;},
                  text: 'Add session',
                ),


                UIHelper.verticalSpace(12.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding:  EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                          decoration: ShapeDecoration(
                            color: AppColors.c181818,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Session type',
                                  style:  TextFontStyle.textStyle14w400cA3A3A3poppins
                              ),
                              UIHelper.verticalSpace(4.h),

                              CustomTextfield(
                                isRead: true,
                                suffixIcon: PopupMenuButton<String>(
                                  color: AppColors.c2A2A2A,
                                  offset: const Offset(0, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  icon: SvgPicture.asset(
                                    AppIcons.bottomdrodwonicon,
                                    height: 18.h,
                                  ),
                                  onSelected: (value) {
                                    nameController.text = value;
                                  },
                                  itemBuilder: (context) => [
                                    const PopupMenuItem(
                                      value: '🏃 Physio Therapy',
                                      child: Text('🏃 Physio Therapy',style: TextStyle(color: Colors.white),),
                                    ),
                                    const PopupMenuItem(
                                      value: '💧 Hydro Therapy',
                                      child: Text('💧 Hydro Therapy',style: TextStyle(color: Colors.white),),
                                    ),
                                    const PopupMenuItem(
                                      value: '🗣 Speech Therapy',
                                      child: Text('🗣 Speech Therapy',style: TextStyle(color: Colors.white),),
                                    ),
                                  ],
                                ),
                                idoNotErrorBorder: true,
                                controller: nameController,
                                textAlign: TextAlign.start,
                                hintText: 'Select session type',
                                hintTextSyle: TextFontStyle.textStyle14w400cA3A3A3poppins,
                                fillColor: AppColors.c2A2A2A,
                                borderRadius: 20.r,
                                borderColor: Colors.transparent,
                                contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                                style: const TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter activity type';
                                  }
                                  return null;
                                },
                              ),



                              UIHelper.verticalSpace(18.h),
                              Text(
                                  'Date',
                                  style:  TextFontStyle.textStyle14w400cA3A3A3poppins
                              ),
                              UIHelper.verticalSpace(4.h),

                              LogActivityCalander(
                                controller: dateController,
                                hintText: 'Select Date',
                              ),
                              UIHelper.verticalSpace(18.h),
                              Text(
                                  'Time',
                                  style:  TextFontStyle.textStyle14w400cA3A3A3poppins
                              ),
                              UIHelper.verticalSpace(4.h),

                              CustomTimeClock(),
                              UIHelper.verticalSpace(18.h),
                              Text(
                                  'Duration',
                                  style:  TextFontStyle.textStyle14w400cA3A3A3poppins
                              ),
                              UIHelper.verticalSpace(4.h),

                              DurationTime(),

                              UIHelper.verticalSpace(18.h),
                              Text(
                                  'Notification',
                                  style:  TextFontStyle.textStyle14w400cA3A3A3poppins
                              ),
                              UIHelper.verticalSpace(4.h),

                              NotificationDropdwon(),

                              UIHelper.verticalSpace(18.h),

                              Text(
                                  'Repeat',
                                  style:  TextFontStyle.textStyle14w400cA3A3A3poppins
                              ),
                              UIHelper.verticalSpace(4.h),

                              HydroTherapy(),





                              Text(
                                  'Notes',
                                  style:  TextFontStyle.textStyle14w400cA3A3A3poppins
                              ),
                              UIHelper.verticalSpace(4.h),

                              CustomTextfield(
                                textAlign: TextAlign.start,
                                maxline: 4,
                                borderRadius: 20.r,
                                fillColor: AppColors.c2A2A2A,
                                hintText: 'Add notes here',
                                hintTextSyle: TextFontStyle.textStyle14w400cA3A3A3poppins,
                                style: TextStyle(color: AppColors.cFFFFFF),
                              ),
                              UIHelper.verticalSpace(18.h),

                            ],
                          ),
                        ),
                        UIHelper.verticalSpace(18.h),
                        CustomButtonWidget(
                            onTap: (){
                              if (_formKey.currentState?.validate() ?? false) {
                              Get.to(BottomNavScreen(initialIndex: 1)
                              );
                              }

                            },
                            text: 'Add Session')


                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}