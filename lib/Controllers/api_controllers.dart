import 'dart:developer';

import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/utils/shared_pref.dart';

import '../Api Handling/Models/api_models.dart';
import '../Api Handling/Services/api_services.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  var user = UserModel().obs;

  Future<bool> login(String email, String password) async {
    isLoading(true);
    try {
      var response = await ApiService.login(email, password);
      //user.value = UserModel.fromJson(response);
      await LocalStorage.initialize();
      await LocalStorage.setString("token", response['token']);
      log('Token: ${response['token']}');
      log('Token: ${LocalStorage.getString('token')}');
      Get.snackbar('Login Success', 'Welcome');
      return true;
    } catch (e) {
      String errorMessage = e.toString().replaceAll('Exception:', '').trim();
      Get.snackbar('Login Failed', errorMessage);
      return false;
    } finally {
      isLoading(false);
    }
  }

  Future<bool> signup(
      String firstname, String lastname, String email, String password) async {
    isLoading(true);
    try {
      var response =
          await ApiService.signup(firstname, lastname, email, password);
      //user.value = UserModel.fromJson(response);
      Get.snackbar('Signup Success', response['message']);
      return true;
    } catch (e) {
      String errorMessage = e.toString().replaceAll('Exception:', '').trim();
      Get.snackbar('Signup Failed', errorMessage);
      return false;
    } finally {
      isLoading(false);
    }
  }
}

class $ {}
