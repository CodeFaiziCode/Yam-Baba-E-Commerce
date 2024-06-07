// import 'package:flutter/material.dart';
// import 'package:yam_baba_e_commerce/view/homeScreen/widget/ProductCard/productCard.dart';

// import '../../home_screen.dart';
// // import '../ProductCard/productCard.dart';

// class MegaDeals extends StatelessWidget {
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
//   MegaDeals({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: SizedBox(
//           // child: ListView.builder(
//           //   // shrinkWrap: true,
//           //   // scrollDirection: Axis.horizontal,
//           //   itemCount: products.length,
//           //   itemBuilder: (context, index) {
//           //     return buildProductCard(products[index]);
//           //   },
//           // ),
//           // ),
//           child: GridView.builder(
//             // scrollDirection: Axis.horizontal,
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 0.75, // Adjust aspect ratio as needed
//             ),
//             itemCount: products.length,
//             itemBuilder: (BuildContext context, int index) {
//               return buildProductCard(products[index]);
//             },
//           ),
//         ));
//   }
// }
