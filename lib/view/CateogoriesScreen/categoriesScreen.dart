// // import 'package:flutter/material.dart';

// // import '../homeScreen/widget/AppDrawer/appDrawer.dart';

// // class CategoriesScreen extends StatefulWidget {
// //   @override
// //   State<CategoriesScreen> createState() => _CategoriesScreenState();
// // }

// // class _CategoriesScreenState extends State<CategoriesScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.blue,
// //         centerTitle: true,
// //         title: Text("Categories"),
// //       ),
// //       drawer: AppDrawer(),
// //       body: GridView.builder(
// //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //           crossAxisCount: 2, // Number of columns in the grid
// //           mainAxisSpacing: 10.0, // Spacing between rows
// //           crossAxisSpacing: 10.0, // Spacing between columns
// //           childAspectRatio:
// //               1.0, // Aspect ratio of each grid item (width / height)
// //         ),
// //         itemCount: 6, // Total number of items in the grid
// //         itemBuilder: (context, index) {
// //           return Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Container(
// //               color: Colors.orange,
// //               alignment: Alignment.center,
// //               child: Text(
// //                 'Item $index',
// //                 style: TextStyle(
// //                   color: Colors.white,
// //                   fontSize: 20.0,
// //                 ),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class CategoryItem extends StatelessWidget {
// //   final String imageUrl;
// //   final String title;

// //   const CategoryItem({required this.imageUrl, required this.title});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       color: Colors.grey,
// //       padding: EdgeInsets.all(8.0),
// //       child: Column(
// //         children: [
// //           Container(
// //             padding: EdgeInsets.all(50.0),
// //             child: ClipRRect(
// //                 borderRadius: BorderRadius.circular(12.0),
// //                 child: Image.asset(
// //                   "assets/images/logo.png",
// //                   fit: BoxFit.cover,
// //                 )),
// //           ),
// //           SizedBox(height: 5.0),
// //           Text(
// //             title,
// //             style: TextStyle(
// //               fontSize: 16.0,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class CategoriesScreen extends StatefulWidget {
// //   @override
// //   State<CategoriesScreen> createState() => _CategoriesScreenState();
// // }

// // class _CategoriesScreenState extends State<CategoriesScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.transparent,
// //         centerTitle: true,
// //         title: Text("Categories"),
// //       ),
// //       body: GridView.count(
// //         crossAxisCount: 2, // Number of columns
// //         mainAxisSpacing: 15.0,
// //         crossAxisSpacing: 10.0,
// //         childAspectRatio: 1.0,
// //         children: [
// //           CategoryItem(
// //               imageUrl:
// //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbqQIaXGmYbXL_hZHHnc9_QvTXej-zhDKIlIi9KUL_vNFMJFZQ",
// //               title: "Phones"),
// //           CategoryItem(
// //               imageUrl:
// //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp20-ULnKLe_WIZFZ_z_lSgLEgvRlJvNX8lc_j-Glz-VGN-qNg",
// //               title: "Laptops"),
// //           CategoryItem(
// //               imageUrl:
// //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1SfRBayZVpzLfCn2PiuKJqH_Czn-slCsCYA1N2vPeCnYmH2Kg",
// //               title: "Cameras"),
// //           CategoryItem(
// //               imageUrl:
// //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjHJURyVu7GEjJPQ4-FU_FKPZBfloGxvRRao9Zcs8tCQOYy2Q",
// //               title: "Accessories"),
// //           CategoryItem(
// //               imageUrl:
// //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeaYr7MYu8z--vguQ5AIt_RlK_qKWhLv_XVpAHXBYg8bKWBYA",
// //               title: "Clothes"),
// //           CategoryItem(
// //               imageUrl:
// //                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4_7qY2Fk80qsLzp_TK_iVBzLvuNPcnK164u4jFYLeqkaAf_A",
// //               title: "Shoes"),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../resources/components/navigationBar.dart';

// class CategoryItem extends StatelessWidget {
//   final String imageUrl;
//   final String title;

//   const CategoryItem({required this.imageUrl, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25),
//         color: Color.fromRGBO(238, 250, 255, 1),
//       ),
//       child: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(10.0),
//             child: Image.asset(
//               imageUrl, // Your image asset path
//               height: screenHeight * 0.125, // Adjust the image height
//               width: screenWidth * 0.25, // Adjust the image width
//               fit: BoxFit.cover,
//             ),
//           ),
//           // SizedBox(height: 10.0), // Add space between image and text
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20.0),
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: 17.0, // Increase text font size
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//                 overflow:
//                     TextOverflow.ellipsis, // Show ellipsis if text overflows
//                 maxLines: 2, // Limit text to 2 lines
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CategoriesScreen extends StatefulWidget {
//   const CategoriesScreen({super.key});

//   @override
//   State<CategoriesScreen> createState() => _CategoriesScreenState();
// }

// class _CategoriesScreenState extends State<CategoriesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         // centerTitle: true,
//         title: Text("Categories"),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             // Get.back(); // Navigate back to previous screen (NavigationMenu)
//             final controller = Get.find<
//                 NavigationController>(); // Find the NavigationController
//             controller.selectedIndex.value = 0;
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
//         child: GridView.count(
//           mainAxisSpacing: 20,
//           crossAxisCount: 2,
//           crossAxisSpacing: 20,
//           children: [
//             GestureDetector(
//                 onTap: () => Get.toNamed('/FashionScreen'),
//                 child: CategoryItem(
//                     imageUrl: "assets/images/logo.png", title: "Fashion")),
//             CategoryItem(
//                 imageUrl: "assets/images/logo.png",
//                 title: "Electronics & Mobiles"),
//             CategoryItem(
//                 imageUrl: "assets/images/logo.png", title: "Watches & Glasses"),
//             CategoryItem(
//                 imageUrl: "assets/images/logo.png", title: "Jewellery"),
//             CategoryItem(
//                 imageUrl: "assets/images/logo.png", title: "Sports & Outdoor"),
//             CategoryItem(
//                 imageUrl: "assets/images/logo.png", title: "Bath Beauty"),
//             CategoryItem(
//                 imageUrl: "assets/images/logo.png", title: "Home Appliances"),
//             CategoryItem(
//                 imageUrl: "assets/images/logo.png", title: "Bath Maternity"),
//             CategoryItem(imageUrl: "assets/images/logo.png", title: "Grocery"),
//             CategoryItem(
//                 imageUrl: "assets/images/logo.png", title: "Pet Supplies"),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  new UI
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Categories"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back(); // Navigate back using GetX
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.042),
        child: Column(
          children: [
            // SearchBar Added
            Container(
              margin: EdgeInsets.symmetric(vertical: screenWidth * 0.009),
              padding: EdgeInsets.all(screenWidth * 0.009),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(screenWidth * 0.1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
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
                          hintText: '   Search',
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
            SizedBox(
              height: 10.0,
            ),
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
    );
  }
}
