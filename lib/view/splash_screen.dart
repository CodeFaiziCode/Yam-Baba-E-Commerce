import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/view/getStarted/getStarted.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () {
        Get.offAll(GetStartedScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Container(
          height: screenHeight * 1,
          width: screenWidth * 0.9,
          child: Center(
            child: Image.asset(
              "assets/images/YambabaLogo.png",
              // height: screenHeight * 0.8,
              // width: screenWidth * 0.6,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
