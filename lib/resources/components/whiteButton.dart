import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final double elevation;
  final double borderRadius;

  const WhiteButton({
    required this.text,
    required this.onPressed,
    this.buttonColor,
    this.textColor,
    this.elevation = 8.0,
    this.borderRadius = 10.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final buttonWidth =
        screenWidth * 0.92; // Button width is 80% of screen width
    final buttonHeight =
        screenHeight * 0.07; // Default width is 80% of the screen width

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: textColor ?? Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor:
              buttonColor ?? const Color.fromARGB(255, 243, 236, 236),
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
