import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      this.width,
      this.height,
      this.radius = 16,
      this.child,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.45,
      height: screenHeight * 0.2,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 50,
              spreadRadius: 7,
              offset: const Offset(0, 2))
        ],
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
