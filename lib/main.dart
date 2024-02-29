import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yam_baba_e_commerce/resources/routes/routes.dart';
import 'package:yam_baba_e_commerce/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
