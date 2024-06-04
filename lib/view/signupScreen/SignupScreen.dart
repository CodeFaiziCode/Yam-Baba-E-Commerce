import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';
import '../../resources/components/blackButton.dart';
import '../../resources/components/clipPath.dart';

import 'SingupScreenModel.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signUpSM =
      Get.put(signUpScreenModel()); // Assuming you have a SignUpScreenModel
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(heightFactor: 1, curveHeight: 60),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Colors.blue,
                  child: const Center(
                    child: Image(
                      image: AssetImage("assets/images/YambabaLogoWhite.png"),
                      height: 190,
                    ),
                  ), // Blue color
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.05,
                  bottom: screenWidth * 0.05),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    // SizedBox(height: screenHeight * 0.000), // Reduced height
                    Center(
                      child: Text(
                        'Register!',
                        style: TextStyle(
                          fontSize: screenWidth * 0.09,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01), // Reduced height
                    Center(
                      child: Text(
                        'Register up for your account',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: AppColor.blackColor),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02), // Reduced height
                    TextFormField(
                      controller: signUpSM.usernameController.value,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.fieldColor,
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: screenHeight * 0.026),
                    TextFormField(
                      controller: signUpSM.emailController.value,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.fieldColor,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(
                                r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                            .hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: screenHeight * 0.026),
                    TextFormField(
                      controller: signUpSM.passwordController.value,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.fieldColor,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: screenHeight * 0.026),
                    TextFormField(
                      controller: signUpSM.passwordController.value,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.fieldColor,
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: screenHeight * 0.035),
                    Center(
                      child: BlackButton(
                        onPressed: () {
                          Get.toNamed("/LoginScreen");
                        },
                        text: " Register ",
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed('/LoginScreen');
                        },
                        child: const Text(
                          'Already a member? Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
