import 'package:flutter/material.dart';

import '../../home_screen.dart';

class HotDealsProductImage extends StatelessWidget {
  final HotDealsProduct hotDealsProduct;
  final double? containerWidth;
  final double? containerHeight;

  const HotDealsProductImage({
    Key? key,
    required this.hotDealsProduct,
    this.containerWidth,
    this.containerHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double defaultContainerWidth = 118.49;
    final double defaultContainerHeight = 114.06;

    return Container(
      width: containerWidth ?? defaultContainerWidth,
      height: containerHeight ?? defaultContainerHeight,
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          hotDealsProduct.hotImagePath,
          width: containerWidth ?? defaultContainerWidth,
          height: containerHeight ?? defaultContainerHeight,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
