import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'dart:io';

// Importing specific components
import '../../resources/components/navigationBar.dart';
import 'widget/AppDrawer/appDrawer.dart';
import 'widget/HorizontalSlider/horizontalCateogorySlider.dart';
import 'widget/carouselSlider/carouselSlider.dart';

// Define the Product class
class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String description;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}

// Product card widget
class ProductCardWidget extends StatelessWidget {
  final Product product;

  const ProductCardWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(7.5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                product.imageUrl,
                width: double.infinity,
                height: 100.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product.name,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 14.0),
                ),
                const SizedBox(width: 25),
                const Icon(Icons.favorite_outline),
                const SizedBox(width: 8),
                const Icon(Icons.add_shopping_cart_outlined),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

// Home screen widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> products = [
    Product(
      name: 'Lipstick Red',
      imageUrl: 'assets/images/product3.jpg',
      price: 19.99,
      description: 'This is the description for product 1',
    ),
    Product(
      name: 'Lipstick Blue',
      imageUrl: 'assets/images/product2.jpg',
      price: 29.99,
      description: 'This is the description for product 2',
    ),
    Product(
      name: 'Lipstick Green',
      imageUrl: 'assets/images/product1.jpg',
      price: 24.99,
      description: 'This is the description for product 3',
    ),
    Product(
      name: 'Lipstick Black',
      imageUrl: 'assets/images/product4.jpg',
      price: 14.99,
      description: 'This is the description for product 4',
    ),
  ];

  // Function to close the app on home screen
  Future<bool> _onWillPop() async {
    return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => exit(0),
                child: const Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          flexibleSpace: Container(
            height: screenHeight * 0.163,
            child: Center(
              child: Image.asset(
                "assets/images/newLogo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const FaIcon(Icons.notifications_none, size: 31),
              onPressed: () {},
            ),
            IconButton(
              icon: const FaIcon(Icons.shopping_cart),
              onPressed: () {},
            ),
            const SizedBox(width: 10),
          ],
        ),
        drawer: AppDrawer(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(13.0, 15, 13.0, 10.0),
              child: Container(
                height: 55,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(12.0), // Increased border radius
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                      prefixIconColor: Colors.black54,
                      hintText: 'Search On Yambaba',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                    onChanged: (query) {},
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Expanded(
              child: ListView(
                children: [
                  const CarousleSlider(),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hot Categories",
                          style: TextStyle(fontSize: screenHeight * 0.02),
                        ),
                        TextButton(
                          onPressed: () {
                            final controller = Get.find<NavigationController>();
                            controller.selectedIndex.value = 1;
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(
                              fontSize: screenHeight * 0.0175,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 5.0),
                  const HorizontalCategorySlider(),
                  //2nd line cat
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Products",
                          style: TextStyle(fontSize: screenHeight * 0.02),
                        ),
                        TextButton(
                          onPressed: () {
                            final controller = Get.find<NavigationController>();
                            controller.selectedIndex.value = 1;
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(
                              fontSize: screenHeight * 0.0175,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 5.0),
                  const HorizontalCategorySlider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Mega Deals",
                              style: TextStyle(fontSize: screenHeight * 0.03),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: screenHeight * 0.0175,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ProductCardWidget(
                                    product: products[index],
                                  ),
                                  const SizedBox(
                                      height:
                                          10), // Space at the bottom of each card
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Recommended products section
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Recommended",
                              style: TextStyle(fontSize: screenHeight * 0.03),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: screenHeight * 0.0175,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ProductCardWidget(
                                    product: products[index],
                                  ),
                                  const SizedBox(
                                      height:
                                          10), // Space at the bottom of each card
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
