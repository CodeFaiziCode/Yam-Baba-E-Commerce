import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  final double heightFactor;
  final double curveHeight;

  CustomClipPath({required this.heightFactor, required this.curveHeight});

  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height * heightFactor;

    final path = Path();
    path.lineTo(0, h - curveHeight);
    path.quadraticBezierTo(w / 2, h + curveHeight, w, h - curveHeight);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
