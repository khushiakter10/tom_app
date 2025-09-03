
import 'package:flutter/material.dart';
import 'package:tom_app/bottom_nav_screen.dart';
import 'package:tom_app/features/tbi_patient_auth/login/presentation/login_screen.dart';
import 'package:tom_app/helpers/all_routes.dart';
import 'package:tom_app/helpers/navigation_service.dart';
import 'package:tom_app/onboarding_screen.dart';
import 'package:tom_app/splash_screen.dart';
import 'constants/app_constants.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';
import 'networks/dio/dio.dart';



final class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool _isLoading = true;
  bool isFirstTime = false;

  @override
  void initState() {
    loadInitialData();
    super.initState();
  }

  loadInitialData() async {
    await Future.delayed(const Duration(seconds: 2));
    await setInitValue();

    bool isLoggedIn = appData.read(kKeyIsLoggedIn) ?? false;
    bool firstTime = appData.read(kKeyIsFirstTime)?? false;
     if (isLoggedIn) {
      String token = appData.read(kKeyAccessToken);
      DioSingleton.instance.update(token);
      Navigator.pushReplacement( context ,
        MaterialPageRoute(builder: (context) => BottomNavScreen()),
      );
    }
     else if (firstTime) {
    Navigator.pushReplacement( context ,
    MaterialPageRoute(builder: (context) => OnboardingScreen()),
    );
    }else {
      // Navigate to LoginScreen if not logged in
      NavigationService.navigateToReplacement(Routes.loginScreen);
    }

    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SplashScreen();
    } else {
      return appData.read(kKeyIsFirstTime)
          ? OnboardingScreen ()
          : const LoginScreen();
    }
  }
}