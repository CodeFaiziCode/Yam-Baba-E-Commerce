import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
}



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yam_baba_e_commerce/services/api_service.dart';
// import 'package:yam_baba_e_commerce/models/user_model.dart';

// import '../../Api Handling/Models/api_models.dart';
// import '../../Api Handling/Services/api_services.dart';

// class LoginScreenModel extends GetxController {
//   final emailController = TextEditingController().obs;
//   final passwordController = TextEditingController().obs;
//   var isLoading = false.obs;
//   var user = UserModel().obs;

//   void login() async {
//     isLoading(true);
//     try {
//       var response = await ApiService.login(
//         emailController.value.text.trim(),
//         passwordController.value.text.trim(),
//       );
//       user.value = UserModel.fromJson(response);
//       Get.snackbar('Login Success', 'Welcome ${user.value.email}');
//     } catch (e) {
//       Get.snackbar('Login Failed', e.toString());
//     } finally {
//       isLoading(false);
//     }
//   }
// }
