import 'package:flutter/material.dart';

class HorizontalCategorySlider extends StatelessWidget {
  const HorizontalCategorySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    // List of category items
    final List<CategoryItem> categories = [
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
        title: "Men Watches",
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
    ];

    return SizedBox(
      // height: 88,

      // Adjusted height

      height: screenHeight * 0.108,

      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Container(
                  // width: 60,
                  // height: 60,

                  width: screenWidth * 0.1587,
                  height: screenHeight * 0.075,
                  // height: screenHeight * 0.069,
                  padding: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.orange,
                      width: 0,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      categories[index].imageUrl,
                      fit: BoxFit.cover,
                      // width: 45,
                      // height: 45,
                      width: screenWidth * 0.16,
                      height: screenHeight * 0.079,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: screenWidth * 0.16, // Adjusted width
                  child: Text(categories[index].title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth * 0.027,
                      )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CategoryItem {
  final String imageUrl;
  final String title;

  CategoryItem({required this.imageUrl, required this.title});
}
