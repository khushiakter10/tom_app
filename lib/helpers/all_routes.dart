import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:tom_app/athlet_bottom_navigation_bar.dart';
import 'package:tom_app/bottom_nav_screen.dart';
import 'package:tom_app/features/equipment/add_equipment/presentation/add_equipment_screen.dart';
import 'package:tom_app/features/equipment/my_equipment/presentation/my_equipment_screen.dart';
import 'package:tom_app/features/home_/home/presentation/home_screen.dart';
import 'package:tom_app/features/home_/log_steps/presentation/log_steps_screen.dart';
import 'package:tom_app/features/log_activity/presentation/log_activity_screen.dart';
import 'package:tom_app/features/log_food/log_food_empty/presentation/log_food_empty_screen.dart';
import 'package:tom_app/features/log_food/log_food_scan_two/presentation/log_food_scan_two_screen.dart';
import 'package:tom_app/features/log_food/meal_analyze/presentation/meal_analyze_screen.dart';
import 'package:tom_app/features/log_food/meal_analyze_save_preview/presentation/meal_analyze_save_preview_screen.dart';
import 'package:tom_app/features/log_tablet/presentation/log_tablet_screen.dart';
import 'package:tom_app/features/my_story/presentation/my_story_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/all_set_personal_information/presentation/all_set_personal_information_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/athelete_shedule/presentation/athelete_shedule_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/athlet_progress/presentation/athlet_progress_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/experience_level/presentation/experience_level_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/personal_information_sign_up/presentation/personal_information_sign_up_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/personalized/presentation/personalized_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/select_goal/presentation/select_goal_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/select_support/presentation/select_support_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athelete_flow_sign_up/welcome_athelete/presentation/welcome_athelete_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_log_food/athlet_log_food_empty/presentation/athlet_log_food_empty_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_log_food/athlet_log_food_scan_one/presentation/athlet_log_food_scan_one_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_log_food/athlet_meal_analyze/presentation/athlet_meal_analyze_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_log_food/athlets_meal/presentation/athlets_meal_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_section_flow/althelete_home/presentation/althelete_home_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_section_flow/athlet_activity/presentation/athlet_activity_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_section_flow/athlet_log_activity/presentation/athlet_log_activity_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_section_flow/log_sleep/presentation/log_sleep_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_section_flow/log_supplement/presentation/log_supplement_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_section_flow/recent_supplement_log/presentation/recent_supplement_log_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_setting/presentation/athlet_setting_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/athlet_trams_condition/presentation/athlet_trams_condition_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/helper/athlet_helper_center/presentation/athlet_helper_center_screen.dart';
import 'package:tom_app/features/new_design_athelete_flow/subscription_athlet_mode/presentation/subscription_athlet_mode_screen.dart';
import 'package:tom_app/features/new_log_entry/presentation/new_log_entry_screen.dart';
import 'package:tom_app/features/recent/presentation/recent_screen.dart';
import 'package:tom_app/features/recent_medication/presentation/recent_medication_screen.dart';
import 'package:tom_app/features/schedule/add_session/presentation/add_session_screen.dart';
import 'package:tom_app/features/schedule/schedule/schedule/presentation/schedule_screen.dart';
import 'package:tom_app/features/setting/presentation/setting_screen.dart';
import 'package:tom_app/features/subscription_tbi_mode/presentation/subscription_tbi_mode_screen.dart';
import 'package:tom_app/features/tbi_patient_auth/back_to_resent_password/presentation/back_to_resent_password_screen.dart';
import 'package:tom_app/features/tbi_patient_auth/error_with_email/presentation/error_with_email_screen.dart';
import 'package:tom_app/features/tbi_patient_auth/login/presentation/login_screen.dart';
import 'package:tom_app/features/tbi_patient_auth/reset_password/presentation/reset_password_screen.dart';
import 'package:tom_app/features/tbi_patient_auth/sign_up/presentation/sign_up_screen.dart';
import 'package:tom_app/features/tbi_patient_auth/verify_otp/presentation/verify_otp_screen.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/all_set/presentation/all_set_screen.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/choose_mode/choose_mode_screen.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_one/presentation/recovery_step_one_screen.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_three/presentation/recovery_step_three_screen.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/recovery_step_two/presentation/recovery_step_two_screen.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/tell_us_about/presentation/tell_us_about_screen.dart';
import 'package:tom_app/features/tbi_patient_sign_up_flow/welcome_back/presentation/welcome_back_screen.dart';
import 'package:tom_app/features/terms_and_condition/presentation/terms_and_condition_screen.dart';
import 'package:tom_app/features/trainer/presentation/trainer_screen.dart';
import 'package:tom_app/onboarding_screen.dart';
import 'package:tom_app/splash_screen.dart';
import '../features/tbi_patient_auth/sent_otp/presentation/sent_otp_screen.dart';


final class Routes {
  static final Routes _routes = Routes._internal();

  Routes._internal();

  static Routes get instance => _routes;

  static const String navigationScreen = '/navigationScreen';
  static const String navigationWithArgScreen = '/navigationScreen';
//================ Khusbu ===================//

  static const String splashScreen = '/splashScreen';
  static const String loginScreen = '/loginScreen';
  static const String errorWithEmailScreen = '/errorWithEmailScreen';
  static const String sentOtpScreen = '/sentOtpScreen';
  static const String verifyOtpScreen = '/verifyOtpScreen';
  static const String backToResentPasswordScreen = '/backToResentPasswordScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String onboardingScreen = '/onboardingScreen';
  static const String welcomeBackScreen = '/welcomeBackScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String chooseModeScreen = '/chooseModeScreen';
  static const String tellUsAboutScreen = '/tellUsAboutScreen';
  static const String recoveryStepOneScreen = '/recoveryStepOneScreen';
  static const String recoveryStepTwoScreen = '/recoveryStepTwoScreen';
  static const String recoveryStepThreeScreen = '/recoveryStepThreeScreen';
  static const String termsAndConditionScreen = '/termsAndConditionScreen';
  static const String allSetScreen = '/allSetScreen';
  static const String recentMedicationScreen = '/recentMedicationScreen';
  static const String logTabletScreen = '/logTabletScreen';
  static const String recentScreen = '/recentScreen';
  static const String settingScreen = '/settingScreen';
  static const String logActivityScreen = '/logActivityScreen';
  static const String myStoryScreen = '/myStoryScreen';
  static const String trainerScreen = '/trainerScreen';
  static const String myEquipmentScreen = '/myEquipmentScreen';
  static const String addEquipmentScreen = '/addEquipmentScreen';
  static const String logStepsScreen = '/logStepsScreen';
  static const String newLogEntryScreen = '/newLogEntryScreen';
  static const String scheduleScreen = '/scheduleScreen';
  static const String homeScreen = '/homeScreen';
  static const String logFoodScanOneScreen = '/logFoodScanOneScreen';
  static const String mealAnalyzeScreen = '/mealAnalyzeScreen';
  static const String logFoodScanTwoScreen = '/logFoodScanTwoScreen';
  static const String logFoodEmptyScreen = '/logFoodEmptyScreen';
  static const String mealAnalyzeSavePreviewScreen = '/mealAnalyzeSavePreviewScreen';
  static const String personalInformationSignUpScreen = '/personalInformationSignUpScreen';
  static const String welcomeAtheleteScreen = '/welcomeAtheleteScreen';
  static const String selectGoalScreen = '/selectGoalScreen';
  static const String selectSupportScreen = '/selectSupportScreen';
  static const String experienceLevelScreen = '/experienceLevelScreen';
  static const String personalizedScreen = '/personalizedScreen';
  static const String allSetPersonalInformationScreen = '/allSetPersonalInformationScreen';
//===============


  static const String   athletLogFoodEmptyScreen = '/athletLogFoodEmptyScreen';
  static const String   athletLogFoodScanOneScreen = '/athletLogFoodScanOneScreen';
  static const String   athletsMealScreen = '/athletsMealScreen';
  static const String   athletMealAnalyzeScreen = '/athletMealAnalyzeScreen';
  static const String   athletActivityScreen = '/athletActivityScreen';
  static const String   athletLogActivityScreen = '/athletLogActivityScreen';
  static const String   recentSupplementLogScreen = '/recentSupplementLogScreen';
  static const String   athletHelperCenterScreen = '/athletHelperCenterScreen';
  static const String   athletTramsConditionScreen = '/athletTramsConditionScreen';
  static const String   athletSettingScreen = '/athletSettingScreen';
  static const String   altheleteHomeScreen = '/altheleteHomeScreen';
  static const String   logSleepScreen = '/logSleepScreen';
  static const String   logSupplementScreen = '/logSupplementScreen';
  static const String   atheleteSheduleScreen = '/atheleteSheduleScreen';
  static const String   athletProgressScreen = '/athletProgressScreen';
  static const String   athletBottomNavigationBar = '/athletBottomNavigationBar';
  static const String   addSessionScreen = '/addSessionScreen';
  static const String   subscriptionTbiModeScreen = '/subscriptionTbiModeScreen';
  static const String   subscriptionAthletModeScreen = '/subscriptionAthletModeScreen';



}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();

  RouteGenerator._internal();

  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {


      case Routes.splashScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: SplashScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => SplashScreen());
        }


      case Routes.navigationScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: BottomNavScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => BottomNavScreen());
        }


      case Routes.navigationScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: BottomNavScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => BottomNavScreen());
        }



    case Routes.loginScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: LoginScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => LoginScreen());
        }

    case Routes.errorWithEmailScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: ErrorWithEmailScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => ErrorWithEmailScreen());
        }

     case Routes.sentOtpScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: SentOtpScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => SentOtpScreen());
        }
        case Routes.logFoodEmptyScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: LogFoodEmptyScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => LogFoodEmptyScreen());
        }

// ===================== OTP ======================================//
    case Routes.verifyOtpScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: VerifyOtpScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => VerifyOtpScreen());
    //================= Done ========================//




     }

     case Routes.backToResentPasswordScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: BackToResentPasswordScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => BackToResentPasswordScreen());
        }



     case Routes.resetPasswordScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: ResetPasswordScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => ResetPasswordScreen());
        }


     case Routes.onboardingScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: OnboardingScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => OnboardingScreen());
        }

    case Routes.welcomeBackScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: WelcomeBackScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => WelcomeBackScreen());
        }


    case Routes.signUpScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: SignUpScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => SignUpScreen());
        }

   case Routes.chooseModeScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: ChooseModeScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => ChooseModeScreen());
        }

        case Routes.tellUsAboutScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: TellUsAboutScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => TellUsAboutScreen());
        }

        case Routes.recoveryStepOneScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: RecoveryStepOneScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => RecoveryStepOneScreen());
        }

      case Routes.recoveryStepTwoScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: RecoveryStepTwoScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => RecoveryStepTwoScreen());
        }


      case Routes.recoveryStepThreeScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: RecoveryStepThreeScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => RecoveryStepThreeScreen());
        }

    case Routes.termsAndConditionScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: TermsAndConditionScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => TermsAndConditionScreen());
        }

        case Routes.allSetScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AllSetScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AllSetScreen());
        }

        case Routes.recentMedicationScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: RecentMedicationScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => RecentMedicationScreen());
        }


        case Routes.logTabletScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: LogTabletScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => LogTabletScreen());
        }

        case Routes.recentScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: RecentScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => RecentScreen());
        }

        case Routes.settingScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: SettingScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => SettingScreen());
        }

        case Routes.logActivityScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: LogActivityScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => LogActivityScreen());
        }

        case Routes.myStoryScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: MyStoryScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => MyStoryScreen());
        }

  case Routes.trainerScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: TrainerScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => TrainerScreen());
        }

  case Routes.myEquipmentScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: MyEquipmentScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => MyEquipmentScreen());
        }

        case Routes.addEquipmentScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AddEquipmentScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AddEquipmentScreen());
        }

        case Routes.logStepsScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: LogStepsScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => LogStepsScreen());
        }

        case Routes.newLogEntryScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: NewLogEntryScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => NewLogEntryScreen());
        }

      case Routes.scheduleScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: ScheduleScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => ScheduleScreen());
        }

        case Routes.homeScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: HomeScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => HomeScreen());
        }




  case Routes.mealAnalyzeScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: MealAnalyzeScreen(imagePath: '',), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => MealAnalyzeScreen(imagePath: '',));
        }

   case Routes.logFoodScanTwoScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: LogFoodScanTwoScreen(imagePath: '',), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => LogFoodScanTwoScreen(imagePath: '',));
        }

   case Routes.mealAnalyzeSavePreviewScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: MealAnalyzeSavePreviewScreen(imagePath: '',), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => MealAnalyzeSavePreviewScreen(imagePath: '',));
        }
//===========================================================//

      case Routes.personalInformationSignUpScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: PersonalInformationSignUpScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => PersonalInformationSignUpScreen());
        }

        case Routes.welcomeAtheleteScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: WelcomeAtheleteScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => WelcomeAtheleteScreen());
        }

        case Routes.selectGoalScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: SelectGoalScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => SelectGoalScreen());
        }

     case Routes.selectSupportScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: SelectSupportScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => SelectSupportScreen());
        }

        case Routes.experienceLevelScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: ExperienceLevelScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => ExperienceLevelScreen());
        }

        case Routes.personalizedScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: PersonalizedScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => PersonalizedScreen());
        }

        case Routes.allSetPersonalInformationScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AllSetPersonalInformationScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AllSetPersonalInformationScreen());
        }


     case Routes.athletLogFoodEmptyScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletLogFoodEmptyScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletLogFoodEmptyScreen());
        }


     case Routes.athletLogFoodScanOneScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletLogFoodScanOneScreen(imagePath: '',), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletLogFoodScanOneScreen(imagePath: '',));
        }

        case Routes.athletsMealScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletsMealScreen(imagePath: '',), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletsMealScreen(imagePath: '',));
        }


        case Routes.athletMealAnalyzeScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletMealAnalyzeScreen(imagePath: '',), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletMealAnalyzeScreen(imagePath: '',));
        }


      case Routes.athletActivityScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletActivityScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletActivityScreen());
        }

   case Routes.athletLogActivityScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletLogActivityScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletLogActivityScreen());
        }

        case Routes.recentSupplementLogScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: RecentSupplementLogScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => RecentSupplementLogScreen());
        }


   case Routes.athletHelperCenterScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletHelperCenterScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletHelperCenterScreen());
        }


  case Routes.athletTramsConditionScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletTramsConditionScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletTramsConditionScreen());
        }


  case Routes.athletSettingScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletSettingScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletSettingScreen());
        }


  case Routes.altheleteHomeScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AltheleteHomeScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AltheleteHomeScreen());
        }

        case Routes.logSleepScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: LogSleepScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => LogSleepScreen());
        }

        case Routes.logSupplementScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: LogSupplementScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => LogSupplementScreen());
        }

        case Routes.atheleteSheduleScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AtheleteSheduleScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AtheleteSheduleScreen());
        }

        case Routes.athletProgressScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletProgressScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletProgressScreen());
        }

  case Routes.athletBottomNavigationBar:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AthletBottomNavigationBar(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AthletBottomNavigationBar());
        }

        case Routes.addSessionScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: AddSessionScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => AddSessionScreen());
        }

        case Routes.subscriptionTbiModeScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: SubscriptionTbiModeScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => SubscriptionTbiModeScreen());
        }

        case Routes.subscriptionAthletModeScreen:
        if (Platform.isAndroid) {
          return FadedTransitionRoute(
              widget: SubscriptionAthletModeScreen(), settings: settings);
        } else {
          return CupertinoPageRoute(
              builder: (context) => SubscriptionAthletModeScreen());
        }





      default:
        return null;
    }
  }
}

class FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
