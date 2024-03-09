import 'package:flutter/material.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton(
      {super.key,
      this.buttonColor = AppColor.fieldColor,
      this.textColor = AppColor.blackColor,
      required this.title,
      required this.onPress,
      this.height = 50,
      this.width = 65,
      this.loading = false});

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress;
      },
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: AppColor.blackColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: Text(title),
                )),
    );
  }
}
