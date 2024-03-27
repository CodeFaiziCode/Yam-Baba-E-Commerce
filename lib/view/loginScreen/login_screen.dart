import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';
import 'package:yam_baba_e_commerce/view/loginScreen/login_screen_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginSM = Get.put(loginScreenModel());
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
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: screenWidth * 0.09,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.001),
                  Text(
                    'Sign in to your account',
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: AppColor.blackColor),
                  ),
                  SizedBox(height: screenHeight * 0.1),
                  TextFormField(
                    controller: loginSM.emailController.value,
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
                    controller: loginSM.passwordController.value,
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
                  SizedBox(height: screenHeight * 0.001),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Get.toNamed("/ForgotPasswordScreen");
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Implement login action
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Colors.black,
                        minimumSize:
                            Size(screenWidth * 0.80, screenHeight * 0.07),
                      ),
                      child: Text('Login',
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
                      padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed('/SignupScreen');
                          // Implement action for "Not a member? Join Now"
                        },
                        child: Text('Not a member? Join Now'),
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
