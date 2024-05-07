// import 'package:flutter/material.dart';

// import '../homeScreen/widget/AppDrawer/appDrawer.dart';

// class CategoriesScreen extends StatefulWidget {
//   @override
//   State<CategoriesScreen> createState() => _CategoriesScreenState();
// }

// class _CategoriesScreenState extends State<CategoriesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text("Categories"),
//       ),
//       drawer: AppDrawer(),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // Number of columns in the grid
//           mainAxisSpacing: 10.0, // Spacing between rows
//           crossAxisSpacing: 10.0, // Spacing between columns
//           childAspectRatio:
//               1.0, // Aspect ratio of each grid item (width / height)
//         ),
//         itemCount: 6, // Total number of items in the grid
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               color: Colors.orange,
//               alignment: Alignment.center,
//               child: Text(
//                 'Item $index',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class CategoryItem extends StatelessWidget {
//   final String imageUrl;
//   final String title;

//   const CategoryItem({required this.imageUrl, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey,
//       padding: EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(50.0),
//             child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12.0),
//                 child: Image.asset(
//                   "assets/images/logo.png",
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           SizedBox(height: 5.0),
//           Text(
//             title,
//             style: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CategoriesScreen extends StatefulWidget {
//   @override
//   State<CategoriesScreen> createState() => _CategoriesScreenState();
// }

// class _CategoriesScreenState extends State<CategoriesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         centerTitle: true,
//         title: Text("Categories"),
//       ),
//       body: GridView.count(
//         crossAxisCount: 2, // Number of columns
//         mainAxisSpacing: 15.0,
//         crossAxisSpacing: 10.0,
//         childAspectRatio: 1.0,
//         children: [
//           CategoryItem(
//               imageUrl:
//                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbqQIaXGmYbXL_hZHHnc9_QvTXej-zhDKIlIi9KUL_vNFMJFZQ",
//               title: "Phones"),
//           CategoryItem(
//               imageUrl:
//                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp20-ULnKLe_WIZFZ_z_lSgLEgvRlJvNX8lc_j-Glz-VGN-qNg",
//               title: "Laptops"),
//           CategoryItem(
//               imageUrl:
//                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1SfRBayZVpzLfCn2PiuKJqH_Czn-slCsCYA1N2vPeCnYmH2Kg",
//               title: "Cameras"),
//           CategoryItem(
//               imageUrl:
//                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjHJURyVu7GEjJPQ4-FU_FKPZBfloGxvRRao9Zcs8tCQOYy2Q",
//               title: "Accessories"),
//           CategoryItem(
//               imageUrl:
//                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeaYr7MYu8z--vguQ5AIt_RlK_qKWhLv_XVpAHXBYg8bKWBYA",
//               title: "Clothes"),
//           CategoryItem(
//               imageUrl:
//                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4_7qY2Fk80qsLzp_TK_iVBzLvuNPcnK164u4jFYLeqkaAf_A",
//               title: "Shoes"),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryItem({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: Color.fromRGBO(238, 250, 255, 1),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                height: screenHeight * 0.14,
                width: screenWidth * 0.30,
                "assets/images/cat.png",
                fit: BoxFit.cover,
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // Text("Shoes")
            // SizedBox(height: 5.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // centerTitle: true,
        title: Text("Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          children: [
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes"),
            CategoryItem(imageUrl: "assets/images/cat.png", title: "shoes")
          ],
        ),
      ),
    );
  }
}
