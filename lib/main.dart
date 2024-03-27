import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/view/forgotPasswordScreen/forgotPasswordScreen.dart';
import 'package:yam_baba_e_commerce/view/getStarted/getStarted.dart';
import 'package:yam_baba_e_commerce/view/homeScreen/home_screen.dart';
import 'package:yam_baba_e_commerce/view/loginScreen/login_screen.dart';
import 'package:yam_baba_e_commerce/view/forgotPasswordScreen/otpScreen.dart/otpScreen.dart';
import 'package:yam_baba_e_commerce/view/forgotPasswordScreen/resetPasswordScreen/resetPasswordScreen.dart';
import 'package:yam_baba_e_commerce/view/signupScreen/signup_screen.dart';
import 'package:yam_baba_e_commerce/view/splashScreen/splash_screen.dart';
import 'package:yam_baba_e_commerce/view/welcomeScreen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/SplashScreen",
        getPages: [
          // AppRoutes.appRoutes(),

          GetPage(
              name: '/ForgotPasswordScreen',
              page: () => ForgotPasswordScreen()),
          GetPage(name: '/OtpScreen', page: () => OTPScreen()),
          GetPage(name: '/ResetScreen', page: () => ResetPasswordScreen()),
          GetPage(name: '/GetStartedScreen', page: () => GetStartedScreen()),
          GetPage(name: '/SplashScreen', page: () => SplashScreen()),
          GetPage(name: '/WelcomeScreen', page: () => WelcomeScreen()),
          GetPage(name: '/LoginScreen', page: () => LoginScreen()),
          GetPage(name: '/HomeScreen', page: () => HomeScreen()),
          GetPage(name: '/SignupScreen', page: () => SignUpScreen()),
        ]);
  }
}
