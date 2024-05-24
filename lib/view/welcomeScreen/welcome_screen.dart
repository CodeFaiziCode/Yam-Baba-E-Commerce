import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yam_baba_e_commerce/resources/components/blackButton.dart';
import 'package:yam_baba_e_commerce/resources/components/whiteButton.dart';

import '../../resources/components/clipPath.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(heightFactor: 1, curveHeight: 60),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  // color: Color(0xFF2C93FD),

                  color: Colors.blue,
                  child: const Center(
                    child: Image(
                      image: AssetImage("assets/images/YambabaLogoWhite.png"),
                      height: 300,
                    ),
                  ), // Blue color
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Pellentesque finibus dui sed porta blandit. '
                  'Fusce maximus, nisi vel dictum',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 30),
                BlackButton(
                  onPressed: () {
                    Get.toNamed("/LoginScreen");
                  },
                  text: " Sign In",
                  backgroundColor: Colors.blue,
                ),
                const SizedBox(height: 20),
                WhiteButton(
                  text: "Register",
                  onPressed: () {
                    Get.toNamed("/SignupScreen");
                  },
                  textColor: Colors.blue,
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    // Just Browse action
                    Get.toNamed("/HomeScreen");
                  },
                  child: const Text(
                    'Just Browse!',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
