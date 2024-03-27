import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPScreenModel extends GetxController {
  // OTP text controller
  final otpController = TextEditingController();

  // Function to verify OTP
  void verifyOTP() {
    // Implement your OTP verification logic here
    String otp = otpController.text;
    // For demo purposes, print the entered OTP
    print('Entered OTP: $otp');
  }
}
