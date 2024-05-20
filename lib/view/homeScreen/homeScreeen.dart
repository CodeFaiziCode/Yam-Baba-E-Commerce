// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'dart:io';

// // Importing specific components
// import '../../resources/components/navigationBar.dart';
// import 'widget/AppDrawer/appDrawer.dart';
// import 'widget/HorizontalSlider/horizontalCateogorySlider.dart';
// import 'widget/carouselSlider/carouselSlider.dart';

// // Define the Product class
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

// // Product card widget
// class ProductCardWidget extends StatelessWidget {
//   final Product product;

//   const ProductCardWidget({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 5.0),
//       width: 150.0,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: const BorderRadius.all(Radius.circular(10.0)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(7.5),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10.0),
//               child: Image.asset(
//                 product.imageUrl,
//                 width: double.infinity,
//                 height: 100.0,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               product.name,
//               style:
//                   const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: [
//                 Text(
//                   '\$${product.price.toStringAsFixed(2)}',
//                   style: const TextStyle(fontSize: 14.0),
//                 ),
//                 const SizedBox(
//                   width: 25,
//                 ),
//                 const Icon(
//                   Icons.favorite_outline,
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//                 const Icon(Icons.add_shopping_cart_outlined)
//               ],
//             ),
//           ),
//           const SizedBox(height: 10),
//         ],
//       ),
//     );
//   }
// }

// // Home screen widget
// class HomeScreen2 extends StatefulWidget {
//   const HomeScreen2({Key? key}) : super(key: key);

//   @override
//   _HomeScreen2State createState() => _HomeScreen2State();
// }

// class _HomeScreen2State extends State<HomeScreen2> {
//   final List<Product> products = [
//     Product(
//       name: 'Lipstick Red',
//       imageUrl: 'assets/images/product3.jpg',
//       price: 19.99,
//       description: 'This is the description for product 1',
//     ),
//     Product(
//       name: 'Lipstick Blue',
//       imageUrl: 'assets/images/product2.jpg',
//       price: 29.99,
//       description: 'This is the description for product 2',
//     ),
//     Product(
//       name: 'Lipstick Green',
//       imageUrl: 'assets/images/product1.jpg',
//       price: 24.99,
//       description: 'This is the description for product 3',
//     ),
//     Product(
//       name: 'Lipstick Black',
//       imageUrl: 'assets/images/product4.jpg',
//       price: 14.99,
//       description: 'This is the description for product 4',
//     ),
//   ];

//   // Function to close the app on home screen
//   Future<bool> _onWillPop() async {
//     return await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Are you sure?'),
//             content: const Text('Do you want to exit the app?'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('No'),
//               ),
//               TextButton(
//                 onPressed: () => exit(0),
//                 child: const Text('Yes'),
//               ),
//             ],
//           ),
//         ) ??
//         false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return WillPopScope(
//       onWillPop: _onWillPop,
//       child: Scaffold(
//         appBar: AppBar(
//           iconTheme: const IconThemeData(color: Colors.white),
//           backgroundColor: Colors.blue,
//           flexibleSpace: Container(
//             height: screenHeight * 0.163,
//             // width: screenWidth * 1.2,
//             child: Center(
//               child: Image.asset(
//                 "assets/images/newLogo.png",
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(
//                 Icons.notifications_active,
//                 size: 30,
//               ),
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: const Icon(
//                 Icons.account_balance_wallet_outlined,
//                 size: 30,
//               ),
//               onPressed: () {},
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//           ],
//           bottom: PreferredSize(
//             preferredSize: const Size.fromHeight(70.0),
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 10.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8.0),
//                   color: Colors.white,
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                   child: TextField(
//                     decoration: const InputDecoration(
//                       prefixIcon: Icon(
//                         Icons.search,
//                       ),
//                       prefixIconColor: Colors.black54,
//                       hintText: 'Search...',
//                       border: InputBorder.none,
//                     ),
//                     onChanged: (query) {},
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         drawer: AppDrawer(),
//         body: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               width: double.infinity,
//               padding: const EdgeInsets.all(5.0),
//               child: const Text(
//                 "Get 30% discount on your first order",
//                 style: TextStyle(color: Colors.white, fontSize: 16.0),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 children: [
//                   // SizedBox(height: screenHeight * 0.02),
//                   const CarousleSlider(),
//                   SizedBox(height: screenHeight * 0.009),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Categories",
//                           style: TextStyle(fontSize: screenHeight * 0.03),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             final controller = Get.find<NavigationController>();
//                             controller.selectedIndex.value = 1;
//                           },
//                           child: Text(
//                             "See All",
//                             style: TextStyle(
//                                 fontSize: screenHeight * 0.0175,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.blue),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 15.0),
//                   const HorizontalCategorySlider(),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 15),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               "Mega Deals",
//                               style: TextStyle(fontSize: screenHeight * 0.03),
//                             ),
//                             const Spacer(),
//                             TextButton(
//                               onPressed: () {},
//                               child: Text(
//                                 "See All",
//                                 style: TextStyle(
//                                     fontSize: screenHeight * 0.0175,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.blue),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 10),
//                         SizedBox(
//                           height: 200,
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: products.length,
//                             itemBuilder: (context, index) {
//                               return Column(
//                                 children: [
//                                   ProductCardWidget(
//                                     product: products[index],
//                                   ),
//                                   const SizedBox(
//                                     height: 10,
//                                   ), // Space at the bottom of each card
//                                 ],
//                               );
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Recommended products section
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 15),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               "Recommended",
//                               style: TextStyle(fontSize: screenHeight * 0.03),
//                             ),
//                             const Spacer(),
//                             TextButton(
//                               onPressed: () {},
//                               child: Text(
//                                 "See All",
//                                 style: TextStyle(
//                                     fontSize: screenHeight * 0.0175,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.blue),
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 10),
//                         SizedBox(
//                           height: 200,
//                           child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: products.length,
//                             itemBuilder: (context, index) {
//                               return Column(
//                                 children: [
//                                   ProductCardWidget(
//                                     product: products[index],
//                                   ),
//                                   const SizedBox(
//                                     height: 10,
//                                   ), // Space at the bottom of each card
//                                 ],
//                               );
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
