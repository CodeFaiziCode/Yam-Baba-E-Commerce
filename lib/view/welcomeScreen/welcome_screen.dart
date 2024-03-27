import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo in the center of the screen
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.5,
              child: Center(
                child: Center(
                  child: Image.asset(
                    "assets/images/YambabaLogo.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              "Start Your Shopping\nJourney Now",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: screenHeight * 0.02),

            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Sed do eiusmod ho haai aliqua.",
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: screenHeight * 0.04),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 50,
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/LoginScreen');
                      },
                      child: Text(
                        "Log In",
                        style:
                            TextStyle(fontSize: 20, color: AppColor.blackColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
                SizedBox(height: screenHeight * 0.015),
                Container(
                    height: 50,
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/SignupScreen');
                      },
                      child: Text(
                        "Sign Up",
                        style:
                            TextStyle(fontSize: 20, color: AppColor.blackColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 5.0,
                        foregroundColor: Colors.white, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
