import 'package:flutter/material.dart';
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
              // decoration: BoxDecoration(
              //   shape: BoxShape.circle,
              //   color: Colors.blue, // Replace with your logo or image
              // ),
              // You can replace the child with your logo/image widget
              child: Center(
                child: Center(
                  child: Image.asset(
                    "assets/images/YambabaLogo.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // SizedBox(height: screenHeight * 0.002),

            Text(
              "Start Your Shopping\nJourney Now",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: screenHeight * 0.02),

            // Dummy text (Heading 03)
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

            // Login and Signup Buttons (aligned vertically)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 50,
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Log In",
                        style:
                            TextStyle(fontSize: 20, color: AppColor.blackColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust border radius as needed
                        ),
                      ),
                    )),
                SizedBox(
                    height: screenHeight *
                        0.015), // Adjust the spacing between buttons
                Container(
                    height: 50,
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style:
                            TextStyle(fontSize: 20, color: AppColor.blackColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust border radius as needed
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
