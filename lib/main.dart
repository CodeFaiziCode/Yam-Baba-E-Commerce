import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/routes/appRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.appRoutes(),

      //initialRoute: "/GetStartedScreen",
      // getPages: [
      //   // AppRoutes.appRoutes(),

      //   GetPage(
      //       name: '/ForgotPasswordScreen',
      //       page: () => const ForgotPasswordScreen()),
      //   GetPage(name: '/OtpScreen', page: () => OTPScreen()),
      //   GetPage(
      //       name: '/PhoneNoRegistration',
      //       page: () => const MobileNumberRegistrationScreen()),
      //   GetPage(name: '/ResetScreen', page: () => ResetPasswordScreen()),
      //   GetPage(
      //       name: '/GetStartedScreen', page: () => const GetStartedScreen()),
      //   // GetPage(name: '/SplashScreen', page: () => GetStartedScreen()),
      //   GetPage(name: '/WelcomeScreen', page: () => WelcomeScreen()),
      //   GetPage(name: '/LoginScreen', page: () => LoginScreen()),
      //   GetPage(name: '/HomeScreen', page: () => const HomeScreen()),
      //   GetPage(name: '/NavigationMenu', page: () => const NavigationMenu()),
      //   GetPage(
      //       name: '/TrackOrderScreen', page: () => const TrackOrderScreen()),
      //   GetPage(name: '/ProfileScreen', page: () => ProfileScreen()),
      //   GetPage(name: '/SignupScreen', page: () => const SignUpScreen()),
      //   GetPage(
      //       name: '/CategoryScreen', page: () => const CategoriesScreen()),
      //   GetPage(name: '/FashionScreen', page: () => const FashionScreen()),
      // ]
    );
  }
}
