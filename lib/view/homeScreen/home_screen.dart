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
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 124,
      height: 190,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     spreadRadius: 1,
        //     blurRadius: 1,
        //     offset: const Offset(0, 1),
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                product.imageUrl,
                width: double.infinity,
                height: 112.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 8, right: 7),
            child: Text(
              maxLines: 01,
              product.name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 8, right: 7),
            child: Text(
              maxLines: 01,
              product.description,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 8),
            child: Row(
              children: [
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 21),
                const Icon(
                  Icons.favorite_outline,
                  size: 19,
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.add_shopping_cart_outlined,
                  size: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

//asdfasdf asdf asdf asdf asdf asdf asdf asdf asf asdf asdf asdf as fzxcvzxczsvasdfsczxcvzsdvasavdsdfas dasd vasdva sdgas etas dfvxdvasvasvasdfasdfa v sdfvasdasf

// Home screen widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> products = [
    Product(
      name: 'Lipstick Red blue green',
      imageUrl: 'assets/images/product3.jpg',
      price: 19.99,
      description: 'product 1 adfasdf asdf asdf asdf as',
    ),
    Product(
      name: 'Lipstick Blue',
      imageUrl: 'assets/images/product2.jpg',
      price: 29.99,
      description: 'product 2',
    ),
    Product(
      name: 'Lipstick Green',
      imageUrl: 'assets/images/product1.jpg',
      price: 24.99,
      description: 'product 3',
    ),
    Product(
      name: 'Lipstick Black',
      imageUrl: 'assets/images/product4.jpg',
      price: 14.99,
      description: 'product 4',
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
                height: 45,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      prefixIconColor: Colors.black54,
                      hintText: 'Search On Yambaba',
                      fillColor:
                          Colors.grey[200], // Set fill color to a light gray
                      filled: true, // Enable fill color
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0), // Adjust this value as needed
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        borderSide: BorderSide
                            .none, // Remove border to match fill color
                      ),
                    ),
                    onChanged: (query) {},
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Expanded(
              child: ListView(
                children: [
                  const CarousleSlider(),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hot Categories",
                          style: TextStyle(
                              fontSize: screenHeight * 0.023,
                              fontWeight: FontWeight.bold),
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

                  const HorizontalCategorySlider(),
                  //2nd line cat
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Products",
                          style: TextStyle(
                              fontSize: screenHeight * 0.023,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
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

                  const HorizontalCategorySlider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              "New Items",
                              style: TextStyle(
                                  fontSize: screenHeight * 0.023,
                                  fontWeight: FontWeight.bold),
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
                      ),

                      //jkl;a sdfl;kjakl;sfj klasdjf klasjdfkl; jasdkl;fj askl;dj faksfjasdkl;jfckl;asdj fkl;asdjfkl ;asdkl;f jaskldj kl;asj kl;as jkl;as kl;asj fklasj f klaj;

                      // const SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: SizedBox(
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
                      ),
                    ],
                  ),
                  // Recommended products section
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Recommended",
                              style: TextStyle(
                                  fontSize: screenHeight * 0.024,
                                  fontWeight: FontWeight.bold),
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
