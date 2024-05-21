import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../functions/navbarNavigation.dart';
import '../homeScreen/widget/AppDrawer/appDrawer.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryItem({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // Handle category item tap
        print('Tapped on category: $title');
        // Example navigation using GetX
        Get.toNamed('/FashionScreen'); // Navigate to FashionScreen
      },
      child: Container(
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
      ),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        navigateToIndex(0); // Use the dynamic navigation function on back press
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          flexibleSpace: Container(
            height: screenHeight * 0.163,
            // width: screenWidth * 1.2,
            child: Center(
              child: Image.asset(
                "assets/images/newLogo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications_active,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.account_balance_wallet_outlined,
                size: 30,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 10,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      prefixIconColor: Colors.black54,
                      hintText: 'Search...',
                      border: InputBorder.none,
                    ),
                    onChanged: (query) {},
                  ),
                ),
              ),
            ),
          ),
        ),
        drawer: AppDrawer(),
        body: Padding(
          // padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.042),
          padding: EdgeInsetsDirectional.only(top: 10, start: 10, end: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  children: const [
                    CategoryItem(
                      imageUrl: "assets/images/product1.jpg",
                      title: "Fashion",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/elec.jpeg",
                      title: "Electronics",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/watch.jpeg",
                      title: "Watches",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/jwe.jpeg",
                      title: "Jewellery",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/sports.jpeg",
                      title: "Sports",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/groc.jpeg",
                      title: "Grocery",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/product1.jpg",
                      title: "Fashion",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/elec.jpeg",
                      title: "Electronics",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/sports.jpeg",
                      title: "Sports",
                    ),
                    CategoryItem(
                      imageUrl: "assets/images/groc.jpeg",
                      title: "Grocery",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
