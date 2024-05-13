import 'package:flutter/material.dart';

class FashionCategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const FashionCategoryItem({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromRGBO(238, 250, 255, 1),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image.asset(
              imageUrl, // Your image asset path
              height: screenHeight * 0.125, // Adjust the image height
              width: screenWidth * 0.25, // Adjust the image width
              fit: BoxFit.cover,
            ),
          ),
          // SizedBox(height: 10.0), // Add space between image and text
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 17.0, // Increase text font size
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                overflow:
                    TextOverflow.ellipsis, // Show ellipsis if text overflows
                maxLines: 2, // Limit text to 2 lines
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FashionScreen extends StatefulWidget {
  const FashionScreen({super.key});

  @override
  State<FashionScreen> createState() => _FashionScreenState();
}

class _FashionScreenState extends State<FashionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // centerTitle: true,
        title: Text("Fashion"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          children: [
            GestureDetector(
                child: FashionCategoryItem(
                    imageUrl: "assets/images/logo.png",
                    title: "Men's Fashion")),
            FashionCategoryItem(
                imageUrl: "assets/images/logo.png", title: "Women's Fashion"),
            FashionCategoryItem(
                imageUrl: "assets/images/logo.png", title: "Kid's Fashion"),
            FashionCategoryItem(
                imageUrl: "assets/images/logo.png", title: "Shoes"),
            FashionCategoryItem(
                imageUrl: "assets/images/logo.png", title: "Bags & Luggages"),
            FashionCategoryItem(imageUrl: "assets/images/logo.png", title: ""),
            FashionCategoryItem(imageUrl: "assets/images/logo.png", title: ""),
          ],
        ),
      ),
    );
  }
}
