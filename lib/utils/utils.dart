import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColor.blackColor,
        textColor: AppColor.whiteColor,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM);
  }

  static snackBar(String title, String message) {
    Get.snackbar(title, message);
  }
}
