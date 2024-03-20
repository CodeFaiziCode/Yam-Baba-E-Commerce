import 'package:flutter/material.dart';

Widget buildPageIndicator({bool isActive = false}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    height: 10,
    width: 10,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isActive ? Colors.blue : Colors.grey,
    ),
  );
}
