import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';

import 'signup_screen_model.dart';

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
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(0),
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: screenWidth * 0.09,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.001),
                  Text(
                    'Sign up for your account',
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: AppColor.blackColor),
                  ),
                  SizedBox(height: screenHeight * 0.1),
                  TextFormField(
                    controller: signUpSM.usernameController.value,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.fieldColor,
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      // Add additional username validation if needed
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
                      // Add additional password validation if needed
                      return null;
                    },
                  ),
                  SizedBox(height: screenHeight * 0.035),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Implement sign-up action
                          Get.toNamed("/PhoneNoRegistration");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Colors.black,
                        minimumSize:
                            Size(screenWidth * 0.80, screenHeight * 0.07),
                      ),
                      child: Text('Sign Up',
                          style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: AppColor.whiteColor)),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    children: [
                      Container(
                        width: screenWidth * 0.2,
                        child: Divider(),
                      ),
                      SizedBox(
                        width: screenWidth * 0.07,
                      ),
                      Text(
                        "Or continue with",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        width: screenWidth * 0.07,
                      ),
                      Container(
                        width: screenWidth * 0.2,
                        child: Divider(),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                            color: Color(0xff316FF6),
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          onPressed: () {
                            // Implement action for the first social login button
                          },
                          icon: Icon(Icons.facebook_outlined),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        width: screenWidth * 0.4,
                        child: IconButton(
                          onPressed: () {
                            // Implement action for the second social login button
                          },
                          icon: Icon(Icons.facebook_sharp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.064),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.019),
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed('/LoginScreen');
                          // Implement action for "Already a member? Login"
                        },
                        child: Text('Already a member? Login'),
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
