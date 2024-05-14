// import 'package:flutter/material.dart';

// class ProductCard extends StatelessWidget {
//   const ProductCard(
//       {super.key,
//       this.width,
//       this.height,
//       this.radius = 16,
//       this.child,
//       this.padding,
//       this.margin});

//   final double? width;
//   final double? height;
//   final double radius;
//   final Widget? child;
//   final EdgeInsetsGeometry? padding;
//   final EdgeInsetsGeometry? margin;

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Container(
//       width: screenWidth * 0.45,
//       height: screenHeight * 0.2,
//       padding: padding,
//       margin: margin,
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//               color: Colors.grey.shade300,
//               blurRadius: 50,
//               spreadRadius: 7,
//               offset: const Offset(0, 2))
//         ],
//         borderRadius: BorderRadius.circular(radius),
//       ),
//       child: child,
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../home_screen.dart';

Widget buildProductCard(Product product) {
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          product.imageUrl,
          height: 120,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// class Product {
//   final String name;
//   final String imageUrl;
//   final double price;
//   final String description;

//   Product({
//     required this.name,
//     required this.description,
//     required this.imageUrl,
//     required this.price,
//   });
// }

// class ProductCard extends StatelessWidget {
//   ProductCard(Product product, {super.key});

//   final List<Product> products = [
//     Product(
//       name: 'Product 1',
//       imageUrl: 'assets/images/logo.png',
//       price: 19.99,
//       description: 'This is the description for product 2',
//     ),
//     Product(
//       name: 'Product 2',
//       imageUrl: 'assets/images/logo.png',
//       price: 29.99,
//       description: 'This is the description for product 2',
//     ),
//     Product(
//       name: 'Product 3',
//       imageUrl: 'assets/images/logo.png',
//       price: 24.99,
//       description: 'This is the description for product 2',
//     ),
//     Product(
//       name: 'Product 4',
//       imageUrl: 'assets/images/logo.png',
//       price: 14.99,
//       description: 'This is the description for product 2',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(
//             product.imageUrl,
//             height: 120,
//             width: double.infinity,
//             fit: BoxFit.contain,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   product.name,
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 4),
//                 Text(
//                   '\$${product.price.toStringAsFixed(2)}',
//                   style: TextStyle(
//                     color: Colors.green,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
