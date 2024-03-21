import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/view/forgotPasswordScreen/forgotPasswordScreenModel.dart';

import '../../resources/colors/colors.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final forgotEmail = Get.put(ForgotPasswordScreenModel());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please enter your email below to receive your password reset instructions.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: forgotEmail.emailController.value,
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
                if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                    .hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {
                    // Implement login action
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: Colors.black,
                  minimumSize: Size(screenWidth * 0.80, screenHeight * 0.07),
                ),
                child: Text('Login',
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: AppColor.whiteColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
