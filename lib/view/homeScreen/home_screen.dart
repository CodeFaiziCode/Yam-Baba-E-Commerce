import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'dart:io';

// Importing specific components
import '../../resources/components/navigationBar.dart';
import 'widget/AppDrawer/appDrawer.dart';
import 'widget/HorizontalSlider/horizontalCateogorySlider.dart';
import 'widget/carouselSlider/carouselSlider.dart';
import 'widget/flash sale/flash_sale.dart';
import 'widget/hot deals/hotDeals.dart';
import 'widget/twoProductCard/twoProductCard.dart';

class FlashSaleProduct {
  final String imagePath;
  final int discountPercentage;

  FlashSaleProduct({
    required this.imagePath,
    required this.discountPercentage,
  });
}

class HotDealsProduct {
  final String hotImagePath;

  HotDealsProduct({
    required this.hotImagePath,
  });
}

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

// two product

// Define the Product class
class TwoProduct {
  final String Two_name;
  final String TwoProduct_imageUrl;
  final double TwoProduct_price;
  final String TwoProduct_description;

  TwoProduct({
    required this.Two_name,
    required this.TwoProduct_description,
    required this.TwoProduct_imageUrl,
    required this.TwoProduct_price,
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
              product.name,
              maxLines: 1,
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
              product.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
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

// product card 2 cards display

// Home screen widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<FlashSaleProduct> flashSaleProducts = [
    FlashSaleProduct(
        imagePath: 'assets/images/product1.jpg', discountPercentage: 20),
    FlashSaleProduct(
        imagePath: 'assets/images/product2.jpg', discountPercentage: 10),
    FlashSaleProduct(
        imagePath: 'assets/images/product3.jpg', discountPercentage: 25),
    FlashSaleProduct(
        imagePath: 'assets/images/product1.jpg', discountPercentage: 20),
  ];

  final List<HotDealsProduct> hotDealsProducts = [
    HotDealsProduct(hotImagePath: 'assets/images/hp2.png'),
    HotDealsProduct(hotImagePath: 'assets/images/product3.jpg'),
    HotDealsProduct(hotImagePath: 'assets/images/hp3.png'),
    HotDealsProduct(hotImagePath: 'assets/images/product1.jpg'),
    HotDealsProduct(hotImagePath: 'assets/images/hp3.png'),
    HotDealsProduct(hotImagePath: 'assets/images/product2.jpg'),
    HotDealsProduct(hotImagePath: 'assets/images/hp3.png'),
    HotDealsProduct(hotImagePath: 'assets/images/product1.jpg'),
    HotDealsProduct(hotImagePath: 'assets/images/hp.png'),
  ];

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

  // two card images

  final List<TwoProduct> Two_products = [
    TwoProduct(
      Two_name: 'Watches',
      TwoProduct_imageUrl: 'assets/images/watch.jpeg',
      TwoProduct_price: 49.99,
      TwoProduct_description: 'Stylish and trendy watches for all occasions.',
    ),
    TwoProduct(
      Two_name: 'Jewellery',
      TwoProduct_imageUrl: 'assets/images/jwe.jpeg',
      TwoProduct_price: 79.99,
      TwoProduct_description: 'Elegant jewellery to complement your outfit.',
    ),
    TwoProduct(
      Two_name: 'Bands',
      TwoProduct_imageUrl: 'assets/images/bands.jpeg',
      TwoProduct_price: 19.99,
      TwoProduct_description: 'Fashionable bands to enhance your look.',
    ),
    TwoProduct(
      Two_name: 'Lipstick',
      TwoProduct_imageUrl: 'assets/images/product1.jpg',
      TwoProduct_price: 14.99,
      TwoProduct_description: 'Beautiful lipstick shades for every mood.',
    ),
    TwoProduct(
      Two_name: 'Cap',
      TwoProduct_imageUrl: 'assets/images/caps.jpeg',
      TwoProduct_price: 12.99,
      TwoProduct_description: 'Stylish caps to protect you from the sun.',
    ),
    TwoProduct(
      Two_name: 'Rings',
      TwoProduct_imageUrl: 'assets/images/rings.jpeg',
      TwoProduct_price: 29.99,
      TwoProduct_description: 'Elegant rings to add charm to your hands.',
    ),
    TwoProduct(
      Two_name: 'Makeup',
      TwoProduct_imageUrl: 'assets/images/product1.jpg',
      TwoProduct_price: 39.99,
      TwoProduct_description: 'Complete makeup set for your beauty needs.',
    ),
    TwoProduct(
      Two_name: 'Cloths',
      TwoProduct_imageUrl: 'assets/images/cloths.jpeg',
      TwoProduct_price: 49.99,
      TwoProduct_description: 'Trendy clothes to keep you in style.',
    ),
    TwoProduct(
      Two_name: 'Sports',
      TwoProduct_imageUrl: 'assets/images/sports.jpeg',
      TwoProduct_price: 59.99,
      TwoProduct_description: 'Sports gear for all your athletic needs.',
    ),
    TwoProduct(
      Two_name: 'Grocery',
      TwoProduct_imageUrl: 'assets/images/groc.jpeg',
      TwoProduct_price: 9.99,
      TwoProduct_description: 'Fresh groceries for your daily needs.',
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
        body: SingleChildScrollView(
          child: Column(
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
              // const SizedBox(height: 5.0),
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
                      onPressed: () {},
                      //   navigator?.push(MaterialPageRoute(
                      //     builder: (context) => Flash(),
                      //   ));
                      // },

                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: screenHeight * 0.0175,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      // child: Text(
                      //   "See All",
                      //   style: TextStyle(
                      //     fontSize: screenHeight * 0.0175,
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.blue,
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ),
              const HorizontalCategorySlider(),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 3),
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
                              height: 10), // Space at the bottom of each card
                        ],
                      );
                    },
                  ),
                ),
              ),

              //---------------------
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Flash Sale",
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

                    // SizedBox(height: 08),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: flashSaleProducts.length,
                        itemBuilder: (context, index) {
                          return FlashSaleProductImageWithLabel(
                            flashSaleProduct: flashSaleProducts[index],
                          );
                        },
                      ),
                    ),

                    // Add a SizedBox with reduced height
                  ],
                ),
              ),
              //---------------------
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hot Products",
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
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hotDealsProducts.length,
                        itemBuilder: (context, index) {
                          return HotDealsProductImage(
                            hotDealsProduct: hotDealsProducts[index],
                            containerWidth:
                                93.0, // You can change this value as needed
                            containerHeight:
                                124.0, // You can change this value as needed
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "For Pick",
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
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                  height: 1165, // Adjust this height according to your needs
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: (Two_products.length / 2).ceil(),
                    itemBuilder: (context, index) {
                      int firstIndex = index * 2;
                      int secondIndex = firstIndex + 1;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Row(
                          children: [
                            Expanded(
                              child: TwoProductCardWidget(
                                twoProduct: Two_products[firstIndex],
                              ),
                            ),
                            if (secondIndex < Two_products.length)
                              SizedBox(width: 4),
                            if (secondIndex < Two_products.length)
                              Expanded(
                                child: TwoProductCardWidget(
                                  twoProduct: Two_products[secondIndex],
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
