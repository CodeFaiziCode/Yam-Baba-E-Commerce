import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resources/colors/colors.dart';
import '../../../resources/components/clipPath.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value != _newPasswordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClipPath(heightFactor: 1, curveHeight: 60),
                  child: Container(
                    height: screenHeight * 0.3,
                    color: Colors.blue,
                    child: const Center(
                      child: Image(
                        image: AssetImage("assets/images/YambabaLogoWhite.png"),
                        height: 190,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.09),
                  Text(
                    'Password Recovery',
                    style: TextStyle(
                      fontSize: screenWidth * 0.09,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    'Please enter the new password to reset your password.',
                    style: TextStyle(
                      fontSize: screenWidth * 0.0459,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  TextFormField(
                    controller: _newPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.fieldColor,
                      hintText: 'Enter New Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.05),
                      ),
                    ),
                    style: TextStyle(fontSize: screenWidth * 0.04),
                    validator: _validatePassword,
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  TextFormField(
                    controller: _confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.fieldColor,
                      hintText: 'Confirm New Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.05),
                      ),
                    ),
                    style: TextStyle(fontSize: screenWidth * 0.04),
                    validator: _validateConfirmPassword,
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/NavigationMenu");
                        // Uncomment the below code to enable password validation
                        // if (_newPasswordController.text == _confirmPasswordController.text) {
                        //   // Passwords match, proceed with the reset
                        //   Get.toNamed("/HomeScreen");
                        //   // Add your reset logic here
                        // } else {
                        //   // Passwords do not match, show error message
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(
                        //       content: Text('Passwords do not match'),
                        //     ),
                        //   );
                        // }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.06),
                        ),
                        backgroundColor: Colors.blue,
                        minimumSize:
                            Size(screenWidth * 0.8, screenHeight * 0.07),
                      ),
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
