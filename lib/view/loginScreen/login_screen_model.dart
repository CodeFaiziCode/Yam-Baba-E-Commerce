import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/Controllers/api_controllers.dart';
import 'package:yam_baba_e_commerce/Api%20Handling/Models/api_models.dart';
import 'package:yam_baba_e_commerce/Api%20Handling/Services/api_services.dart';

class loginScreenModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
}
