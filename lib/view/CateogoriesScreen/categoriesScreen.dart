import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../functions/navbarNavigation.dart';
import '../homeScreen/widget/AppDrawer/appDrawer.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryItem({required this.imageUrl, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double imageSize = constraints.maxWidth * 0.9;
        return GestureDetector(
          onTap: () {
            // Handle category item tap
            print('Tapped on category: $title');
            // Example navigation using GetX
            Get.toNamed('/FashionScreen'); // Navigate to FashionScreen
          },
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  imageUrl,
                  height: imageSize,
                  width: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(
                  fontSize: constraints.maxWidth * 0.12,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        );
      },
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'imageUrl': "assets/images/product1.jpg", 'title': "Fashion"},
      {'imageUrl': "assets/images/elec.jpeg", 'title': "Electronics"},
      {'imageUrl': "assets/images/watch.jpeg", 'title': "Watches"},
      {'imageUrl': "assets/images/jwe.jpeg", 'title': "Jewellery"},
      {'imageUrl': "assets/images/sports.jpeg", 'title': "Sports"},
      {'imageUrl': "assets/images/groc.jpeg", 'title': "Grocery"},
      {'imageUrl': "assets/images/product1.jpg", 'title': "Fashion"},
      {'imageUrl': "assets/images/elec.jpeg", 'title': "Electronics"},
      {'imageUrl': "assets/images/watch.jpeg", 'title': "Watches"},
      {'imageUrl': "assets/images/jwe.jpeg", 'title': "Jewellery"},
      {'imageUrl': "assets/images/sports.jpeg", 'title': "Sports"},
      {'imageUrl': "assets/images/groc.jpeg", 'title': "Grocery"},
      {'imageUrl': "assets/images/product1.jpg", 'title': "Fashion"},
      {'imageUrl': "assets/images/elec.jpeg", 'title': "Electronics"},
      {'imageUrl': "assets/images/watch.jpeg", 'title': "Watches"},
      {'imageUrl': "assets/images/jwe.jpeg", 'title': "Jewellery"},
      {'imageUrl': "assets/images/sports.jpeg", 'title': "Sports"},
      {'imageUrl': "assets/images/groc.jpeg", 'title': "Grocery"},
    ];

    return WillPopScope(
      onWillPop: () async {
        navigateToIndex(0); // Use the dynamic navigation function on back press
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          flexibleSpace: Container(
            height: MediaQuery.of(context).size.height * 0.2, // Adjusted height
            child: Center(
              child: Image.asset(
                "assets/images/download.png",
                height: 40,
                fit: BoxFit.contain,
              ),
            ),
            padding: EdgeInsets.only(
                bottom: 0, top: 30), // Adjust padding to move logo down
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none, size: 30),
              padding:
                  EdgeInsets.only(right: 0), // Reduce padding to reduce space
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined, size: 30),
              padding:
                  EdgeInsets.only(left: 0), // Reduce padding to reduce space
              onPressed: () {},
            ),
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
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, size: 30),
                        prefixIconColor: Colors.black54,
                        hintText: 'Search by Categories',
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (query) {},
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: const Text(
                      "Shop By Categories",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryItem(
                      imageUrl: categories[index]['imageUrl']!,
                      title: categories[index]['title']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
