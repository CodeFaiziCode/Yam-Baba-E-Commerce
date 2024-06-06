import 'package:flutter/material.dart';

class ProductImageWithLabel extends StatelessWidget {
  final String imageUrl;
  final int? salePercentage; // Optional sale percentage

  const ProductImageWithLabel({
    Key? key,
    required this.imageUrl,
    this.salePercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118.49,
      height: 114.06,
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imageUrl,
              width: 118.49,
              height: 114.06,
              fit: BoxFit.cover,
            ),
          ),
          if (salePercentage !=
              null) // Display sale tag if salePercentage is provided
            Padding(
              padding: const EdgeInsets.fromLTRB(73.5, 0, 5, 0),
              child: Container(
                height: 23,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 2.5),
                  child: Text(
                    '-$salePercentage%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class Flash extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'imageUrl': 'assets/images/product1.jpg',
      'salePercentage': 20,
    },
    {
      'imageUrl': 'assets/images/product2.jpg',
      'salePercentage': 10,
    },
    {
      'imageUrl': 'assets/images/product3.jpg',
      'salePercentage': 25
      // No sale tag for this product
    },
    {
      'imageUrl': 'assets/images/product3.jpg',
      'salePercentage': 25
      // No sale tag for this product
    },
    {
      'imageUrl': 'assets/images/product3.jpg',
      'salePercentage': 25
      // No sale tag for this product
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Images with Labels'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductImageWithLabel(
              imageUrl: products[index]['imageUrl'],
              salePercentage: products[index]['salePercentage'],
            );
          },
        ),
      ),
    );
  }
}
