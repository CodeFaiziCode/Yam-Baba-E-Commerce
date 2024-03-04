import 'package:fluttertoast/fluttertoast.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message, backgroundColor: AppColor.blackColor);
  }

  static snackBar(String title, String message) {}
}
