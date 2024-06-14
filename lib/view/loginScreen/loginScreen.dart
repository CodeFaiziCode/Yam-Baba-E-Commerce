import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';
import 'package:yam_baba_e_commerce/resources/components/clipPath.dart';
import 'package:yam_baba_e_commerce/resources/components/textField.dart';
import '../../resources/components/blackButton.dart';
import 'loginScreenModel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginSM = Get.put(LoginScreenModel());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        // Wrap content with SafeArea for additional spacing control
        child: Column(
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
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: screenWidth * 0.15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.001),
                      Center(
                        child: Text(
                          'Welcome to the Yam Baba',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            color: AppColor.blackColor,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      CustomTextField(
                        controller: loginSM.emailController.value,
                        hintText: "Email or Phone Number",
                        labelText: "Email or Phone",
                        validator: validateEmailOrPhone,
                      ),
                      SizedBox(height: screenHeight * 0.015),
                      CustomTextField(
                        controller: loginSM.passwordController.value,
                        hintText: "Password",
                        labelText: "Password",
                        obscureText: true,
                        validator: validatePassword,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Get.toNamed("/ForgotPasswordScreen"),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.010),
                      Center(
                        child: BlackButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              // Handle sign in
                              loginSM.authLogin();
                            }
                          },
                          text: "Sign In",
                          backgroundColor: Colors.blue,
                          elevation: 3,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.012),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                "Or sign in with",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.012),
                      _buildSocialButton(
                        onTap: () {
                          // Handle Google login
                        },
                        imagePath: "assets/images/google.png",
                        text: "Continue with Google    ",
                        context: context,
                      ),
                      SizedBox(height: screenHeight * 0.012),
                      _buildSocialButton(
                        onTap: () {
                          // Handle Facebook login
                        },
                        imagePath: "assets/images/fb.png",
                        text: "Continue with Facebook",
                        context: context,
                      ),
                      SizedBox(height: screenHeight * 0.020),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account? ",
                            style: const TextStyle(color: Colors.black),
                            children: [
                              WidgetSpan(
                                child: GestureDetector(
                                  onTap: () => Get.toNamed('/SignupScreen'),
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }

  Widget _buildSocialButton({
    required VoidCallback onTap,
    required String imagePath,
    required String text,
    required BuildContext context,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: screenHeight * 0.055,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
