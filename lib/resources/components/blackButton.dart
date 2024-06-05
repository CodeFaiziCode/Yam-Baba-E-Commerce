import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double elevation;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final Color borderColor;
  final double borderWidth;
  final String? imagePath; // Add this for the image path

  const BlackButton({
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    this.fontSize = 20.0,
    this.fontWeight = FontWeight.normal,
    this.elevation = 8.0,
    this.padding = const EdgeInsets.all(7.5),
    this.borderColor = Colors.blue,
    this.borderWidth = 1.4,
    this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final buttonWidth =
        screenWidth * 0.92; // Button width is 80% of screen width
    final buttonHeight =
        screenHeight * 0.05; // Button height is 7% of screen height

    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(color: borderColor, width: borderWidth),
          ),
          padding: padding,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null)
              Image.asset(
                imagePath!,
                height: 24, // Adjust the height as needed
                width: 24, // Adjust the width as needed
              ),
            if (imagePath != null)
              SizedBox(width: 8), // Add space between image and text
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
