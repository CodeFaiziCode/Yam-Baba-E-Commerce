import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider(
      {super.key,
      this.width,
      this.height,
      required this.imageUrl,
      this.padding,
      required this.isNetworkImage,
      this.onPressed});

  final double? width, height;
  final String imageUrl;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
