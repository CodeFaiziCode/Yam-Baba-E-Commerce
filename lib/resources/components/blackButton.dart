import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsets padding;

  const BlackButton({
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.normal,
    this.padding = const EdgeInsets.all(12.0),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final buttonWidth =
        screenWidth * 0.75; // Button width is 80% of screen width
    final buttonHeight =
        screenHeight * 0.06; // Button height is 7% of screen height

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}