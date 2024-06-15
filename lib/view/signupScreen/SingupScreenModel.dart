import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/Controllers/api_controllers.dart';

class signUpScreenModel extends GetxController {
  final firstnameController = TextEditingController().obs;
  final lastnameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

  void onSignUp() async {
    AuthController authController = AuthController();
    if (passwordController.value.text == confirmPasswordController.value.text) {
      bool res = await authController.signup(
          firstnameController.value.text,
          lastnameController.value.text,
          emailController.value.text,
          passwordController.value.text);
      if (res) {
        Get.offAllNamed('/LoginScreen');
        emailController.value.clear();
        passwordController.value.clear();
        firstnameController.value.clear();
        lastnameController.value.clear();
      }
    }
  }
}
