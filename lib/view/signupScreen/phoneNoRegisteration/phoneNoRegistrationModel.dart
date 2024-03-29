// mobile_number_registration_model.dart

import 'package:get/get.dart';

class MobileNumberRegistrationModel extends GetxController {
  RxString selectedCountryCode = '+1'.obs; // Default country code

  void updateSelectedCountryCode(String newValue) {
    selectedCountryCode.value = newValue;
  }
}
