import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryItem({required this.imageUrl, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double imageSize = constraints.maxWidth * 0.9;
        return GestureDetector(
          onTap: () {
            // Handle category item tap
            print('Tapped on category: $title');
            // Example navigation using GetX
            Get.toNamed('/FashionScreen'); // Navigate to FashionScreen
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  imageUrl,
                  height: imageSize,
                  width: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: constraints.maxWidth * 0.12,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        );
      },
    );
  }
}
