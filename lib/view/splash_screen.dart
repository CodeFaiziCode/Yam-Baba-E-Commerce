import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yam_baba_e_commerce/view/login_view.dart';

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
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/images/logo.png",
            height: 150,
            width: 130,
            fit: BoxFit.cover,
          ),
          Text(
            "Yam Baba",
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
