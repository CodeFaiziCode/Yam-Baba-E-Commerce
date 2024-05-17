import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/view/homeScreen/widget/AppDrawer/appDrawer.dart';
import 'package:yam_baba_e_commerce/view/homeScreen/widget/HorizontalSlider/horizontalCateogorySlider.dart';
import 'package:yam_baba_e_commerce/view/homeScreen/widget/carouselSlider/carouselSlider.dart';
import '../../resources/components/navigationBar.dart';

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

//  Card Design not following Figma ------------------------

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
              borderRadius:
                  BorderRadius.circular(10.0), // Round the image corners
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
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
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
                const SizedBox(
                  width: 25,
                ),
                const Icon(
                  Icons.favorite_outline,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(Icons.add_shopping_cart_outlined)
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

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

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          margin: EdgeInsets.only(
            top: screenHeight * 0.06,
            left: screenWidth * 0.056,
          ),
          height: screenHeight * 0.048,
          width: screenWidth * 0.2,
          child: Center(
            child: Image.asset(
              "assets/images/YambabaLogo.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.009),
            Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.042),
              padding: EdgeInsets.all(screenWidth * 0.009),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(screenWidth * 0.1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: screenWidth * 0.0000001,
                    blurRadius: screenWidth * 0.01,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.023),
                      child: TextField(
                        style: TextStyle(fontSize: screenWidth * 0.042),
                        decoration: const InputDecoration(
                          hintText: '    Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Perform search action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.mic),
                    onPressed: () {
                      // Perform voice search action
                    },
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.sliders),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            const CarousleSlider(),
            SizedBox(height: screenHeight * 0.009),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: screenHeight * 0.03),
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
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
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
                              color: Colors.blue),
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
                                height: 10), // Space at the bottom of each card
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Recomended product

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Recomended",
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
                              color: Colors.blue),
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
                                height: 10), // Space at the bottom of each card
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
    );
  }
}
