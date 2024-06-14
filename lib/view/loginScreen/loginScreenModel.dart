import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/Api%20Handling/Models/api_models.dart';
import 'package:yam_baba_e_commerce/Api%20Handling/Services/api_services.dart';

class LoginScreenModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  var isLoading = false.obs;
  var user = UserModel().obs;

  void authLogin() async {
    isLoading(true);
    try {
      var response = await ApiService.login(
          emailController.value.text, passwordController.value.text);
      //use the below line after api is ready
      //user.value = UserModel.fromJson(response);

      //below is for testing purpose
      user.value = UserModel(
          id: response['id'].toString(),
          email: response['email'],
          token: response['token']);
      Get.toNamed("/HomeScreen");
      Get.snackbar('Login Success', 'Welcome ${user.value.email}');
      emailController.value.clear();
      passwordController.value.clear();
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
