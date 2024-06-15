import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/Api%20Handling/Models/api_models.dart';
import 'package:yam_baba_e_commerce/Api%20Handling/Services/api_services.dart';
import 'package:yam_baba_e_commerce/Controllers/api_controllers.dart';
import 'package:yam_baba_e_commerce/utils/shared_pref.dart';

class LoginScreenModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  var isLoading = false.obs;
  var user = UserModel().obs;

  void authLogin() async {
    AuthController authController = AuthController();
    isLoading(true);
    try {
      bool response = await authController.login(
          emailController.value.text, passwordController.value.text);
      //use the below line after api is ready
      //user.value = UserModel.fromJson(response);

      //below is for testing purpose
      // user.value = UserModel(
      //     id: response['id'].toString(),
      //     email: response['email'],
      //     token: response['token']);
      //to save token in shared preference
      if (response) {
        Get.toNamed("/HomeScreen");
        Get.snackbar('Login Success', 'Welcome ${user.value.email}');
        emailController.value.clear();
        passwordController.value.clear();
      }
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
