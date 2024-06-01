import 'package:get/get.dart';

import '../Models/api_models.dart';
import '../Services/api_services.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  var user = UserModel().obs;

  void login(String email, String password) async {
    isLoading(true);
    try {
      var response = await ApiService.login(email, password);
      user.value = UserModel.fromJson(response);
      Get.snackbar('Login Success', 'Welcome ${user.value.email}');
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    } finally {
      isLoading(false);
    }
  }

  void signup(String email, String password) async {
    isLoading(true);
    try {
      var response = await ApiService.signup(email, password);
      user.value = UserModel.fromJson(response);
      Get.snackbar('Signup Success', 'Welcome ${user.value.email}');
    } catch (e) {
      Get.snackbar('Signup Failed', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
