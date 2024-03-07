import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/view/home_screen.dart';
import 'package:yam_baba_e_commerce/view/login_screen.dart';
import 'package:yam_baba_e_commerce/view/signup_screen.dart';
import 'package:yam_baba_e_commerce/view/splash_screen.dart';
import 'package:yam_baba_e_commerce/view/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        getPages: [
          // AppRoutes.appRoutes(),
          GetPage(name: '/SplashScreen', page: () => SplashScreen()),
          GetPage(name: '/WelcomeScreen', page: () => WelcomeScreen()),
          GetPage(name: '/', page: () => LoginScreen()),
          GetPage(name: '/HomeScreen', page: () => HomeScreen()),
          GetPage(name: '/SignupScreen', page: () => SignUpScreen()),
        ]);
  }
}
