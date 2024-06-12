// import 'package:flutter/material.dart';
// import '../../functions/navbarNavigation.dart';
// import '../homeScreen/widget/AppDrawer/appDrawer.dart';
// import 'widgets/Category Items/categoryItems.dart';

// class CategoriesScreen extends StatelessWidget {
//   const CategoriesScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;

//     final categories = [
//       {'imageUrl': "assets/images/product1.jpg", 'title': "Fashion"},
//       {'imageUrl': "assets/images/elec.jpeg", 'title': "Electronics"},
//       {'imageUrl': "assets/images/watch.jpeg", 'title': "Watches"},
//       {'imageUrl': "assets/images/jwe.jpeg", 'title': "Jewellery"},
//       {'imageUrl': "assets/images/sports.jpeg", 'title': "Sports"},
//       {'imageUrl': "assets/images/groc.jpeg", 'title': "Grocery"},
//       {'imageUrl': "assets/images/product1.jpg", 'title': "Fashion"},
//       {'imageUrl': "assets/images/elec.jpeg", 'title': "Electronics"},
//       {'imageUrl': "assets/images/watch.jpeg", 'title': "Watches"},
//       {'imageUrl': "assets/images/jwe.jpeg", 'title': "Jewellery"},
//       {'imageUrl': "assets/images/sports.jpeg", 'title': "Sports"},
//       {'imageUrl': "assets/images/groc.jpeg", 'title': "Grocery"},
//       {'imageUrl': "assets/images/product1.jpg", 'title': "Fashion"},
//       {'imageUrl': "assets/images/elec.jpeg", 'title': "Electronics"},
//       {'imageUrl': "assets/images/watch.jpeg", 'title': "Watches"},
//       {'imageUrl': "assets/images/jwe.jpeg", 'title': "Jewellery"},
//       {'imageUrl': "assets/images/sports.jpeg", 'title': "Sports"},
//       {'imageUrl': "assets/images/groc.jpeg", 'title': "Grocery"},
//     ];

//     return WillPopScope(
//       onWillPop: () async {
//         navigateToIndex(0); // Use the dynamic navigation function on back press
//         return false; // Prevent default back button behavior
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: Colors.white),
//           backgroundColor: Colors.blue,
//           flexibleSpace: Container(
//             height: screenHeight * 0.2, // Adjusted height
//             child: Center(
//               child: Image.asset(
//                 "assets/images/download.png",
//                 height: 40,
//                 fit: BoxFit.contain,
//               ),
//             ),
//             padding: EdgeInsets.only(
//                 bottom: 0, top: 30), // Adjust padding to move logo down
//           ),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.notifications_none, size: 30),
//               padding:
//                   EdgeInsets.only(right: 0), // Reduce padding to reduce space
//               onPressed: () {},
//             ),
//             IconButton(
//               icon: Icon(Icons.shopping_cart_outlined, size: 30),
//               padding:
//                   EdgeInsets.only(left: 0), // Reduce padding to reduce space
//               onPressed: () {},
//             ),
//           ],
//         ),
//         drawer: AppDrawer(),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(13.0, 15, 13.0, 10.0),
//                 child: Container(
//                   height: 45,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12.0),
//                     color: Colors.white,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.search, size: 30),
//                         prefixIconColor: Colors.black54,
//                         hintText: 'Search by Categories',
//                         fillColor: Colors.grey[200],
//                         filled: true,
//                         contentPadding: EdgeInsets.symmetric(vertical: 12.0),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                       onChanged: (query) {},
//                     ),
//                   ),
//                 ),
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20.0),
//                     child: const Text(
//                       "Shop By Categories",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: GridView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: categories.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     childAspectRatio: 0.8,
//                     mainAxisSpacing: 10,
//                     crossAxisSpacing: 10,
//                   ),
//                   itemBuilder: (context, index) {
//                     return CategoryItem(
//                       imageUrl: categories[index]['imageUrl']!,
//                       title: categories[index]['title']!,
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../functions/navbarNavigation.dart';
import '../homeScreen/widget/AppDrawer/appDrawer.dart';
import 'widgets/Category Items/categoryItems.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
        appBar:
            // AppBar(
            //   iconTheme: IconThemeData(color: Colors.white),
            //   backgroundColor: Colors.blue,
            //   flexibleSpace: Container(
            //     height: screenHeight * 0.15, // Adjusted height
            //     child: Center(
            //       child: Image.asset(
            //         "assets/images/download.png",
            //         height: screenHeight * 0.05, // Adjusted height
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //     padding:
            //         EdgeInsets.only(top: screenHeight * 0.03), // Adjust padding
            //   ),
            //   actions: [
            //     IconButton(
            //       icon: Icon(Icons.notifications_none, size: screenWidth * 0.08),
            //       padding:
            //           EdgeInsets.only(right: screenWidth * 0.02), // Adjust padding
            //       onPressed: () {},
            //     ),
            //     IconButton(
            //       icon:
            //           Icon(Icons.shopping_cart_outlined, size: screenWidth * 0.08),
            //       padding:
            //           EdgeInsets.only(left: screenWidth * 0.02), // Adjust padding
            //       onPressed: () {},
            //     ),
            //   ],
            // ),

            AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          flexibleSpace: Container(
            height: screenHeight * 0.2, // Adjusted height
            child: Center(
              child: Image.asset(
                "assets/images/download.png",
                height: screenHeight * 0.050,
                fit: BoxFit.contain,
              ),
            ),
            padding: EdgeInsets.only(
                // bottom: 0,
                top: screenHeight * 0.04), // Adjust padding to move logo down
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none, size: screenHeight * 0.035),
              // padding:
              //     EdgeInsets.only(right: 0), // Reduce padding to reduce space
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined,
                  size: screenHeight * 0.035),
              // padding:
              //     EdgeInsets.only(left: 0), // Reduce padding to reduce space
              onPressed: () {},
            ),
          ],
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.035,
                  vertical: screenHeight * 0.02,
                ),
                child: Container(
                  height: screenHeight * 0.06, // Adjusted height
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.search, size: screenWidth * 0.08),
                        prefixIconColor: Colors.black54,
                        hintText: 'Search by Categories',
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.015),
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
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    child: const Text(
                      "Shop By Categories",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.025),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: screenWidth * 0.025,
                    crossAxisSpacing: screenWidth * 0.025,
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
