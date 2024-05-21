import 'package:flutter/material.dart';

class FashionCategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const FashionCategoryItem({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: screenWidth * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imageUrl,
              height: screenWidth * 0.3, // Adjusted height to fit properly
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
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
        backgroundColor: Colors.blue,
        title: const Text(
          "Fashion",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          padding: const EdgeInsets.only(bottom: 20), // Added bottom padding
          children: const [
            FashionCategoryItem(
                imageUrl: "assets/images/watch.jpeg", title: "Watches"),
            FashionCategoryItem(
                imageUrl: "assets/images/jwe.jpeg", title: "Jewellery"),
            FashionCategoryItem(
                imageUrl: "assets/images/bands.jpeg", title: "Bands"),
            FashionCategoryItem(
                imageUrl: "assets/images/product1.jpg", title: "Listick"),
            FashionCategoryItem(
                imageUrl: "assets/images/caps.jpeg", title: "Cap"),
            FashionCategoryItem(
                imageUrl: "assets/images/rings.jpeg", title: "Rings"),
            FashionCategoryItem(
                imageUrl: "assets/images/product1.jpg", title: "Makeup"),
            FashionCategoryItem(
                imageUrl: "assets/images/cloths.jpeg", title: "Cloths"),
            FashionCategoryItem(
                imageUrl: "assets/images/sports.jpeg", title: "Sports"),
            FashionCategoryItem(
                imageUrl: "assets/images/groc.jpeg", title: "Grocery"),
          ],
        ),
      ),
    );
  }
}
