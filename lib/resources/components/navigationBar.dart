// // // import 'package:flutter/material.dart';
// // // import 'package:flutter/widgets.dart';
// // // import 'package:get/get.dart';
// // // import 'package:yam_baba_e_commerce/view/CartScreen/cartScreen.dart';
// // // import 'package:yam_baba_e_commerce/view/homeScreen/home_screen.dart';

// // // import '../../view/CateogoriesScreen/categoriesScreen.dart';
// // // import '../../view/ProfileScreen/profileScreen.dart';

// // // class NavigationMenu extends StatelessWidget {
// // //   const NavigationMenu({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final controller = Get.put(NavigationController());

// // //     return Scaffold(
// // //       bottomNavigationBar: Obx(() => NavigationBar(
// // //               height: 80,
// // //               elevation: 0,
// // //               selectedIndex: controller.selectedIndex.value,
// // //               onDestinationSelected: (index) =>
// // //                   controller.selectedIndex.value = index,
// // //               destinations: const [
// // //                 NavigationDestination(icon: Icon(Icons.home), label: "Home"),
// // //                 NavigationDestination(
// // //                     icon: Icon(Icons.category), label: "Category"),
// // //                 NavigationDestination(icon: Icon(Icons.trolley), label: "Cart"),
// // //                 NavigationDestination(
// // //                     icon: Icon(Icons.person), label: "Profile"),
// // //               ])),
// // //       body: Obx(() => controller.screens[controller.selectedIndex.value]),
// // //     );
// // //   }
// // // }

// // // class NavigationController extends GetxController {
// // //   final Rx<int> selectedIndex = 0.obs;
// // //   final screens = [
// // //     HomeScreen(),
// // //     CategoriesScreen(),
// // //     CartScreen(),
// // //     ProfileScreen()
// // //   ];
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // import '../../view/CartScreen/cartScreen.dart';
// // import '../../view/CateogoriesScreen/categoriesScreen.dart';
// // import '../../view/ProfileScreen/profileScreen.dart';
// // import '../../view/homeScreen/home_screen.dart';

// // class NavigationMenu extends StatelessWidget {
// //   const NavigationMenu({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     final controller = Get.put(NavigationController());

// //     return Scaffold(
// //       bottomNavigationBar: Obx(() => NavigationBar(
// //             height: 80,
// //             elevation: 0,
// //             selectedIndex: controller.selectedIndex.value,
// //             onDestinationSelected: (index) =>
// //                 controller.selectedIndex.value = index,
// //             destinations: const [
// //               NavigationDestination(icon: Icon(Icons.home), label: "Home"),
// //               NavigationDestination(
// //                   icon: Icon(Icons.category), label: "Category"),
// //               NavigationDestination(
// //                   icon: Icon(Icons.shopping_cart), label: "Cart"),
// //               NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
// //             ],
// //           )),
// //       body: Obx(() => controller.screens[controller.selectedIndex.value]),
// //     );
// //   }
// // }

// // class NavigationController extends GetxController {
// //   final Rx<int> selectedIndex = 0.obs;
// //   final screens = [
// //     HomeScreen(),
// //     CategoriesScreen(),
// //     CartScreen(),
// //     ProfileScreen(),
// //   ];
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// // import '../../view/CartScreen/cartScreen.dart';
// import '../../view/CateogoriesScreen/categoriesScreen.dart';
// import '../../view/ProfileScreen/profileScreen.dart';
// import '../../view/homeScreen/home_screen.dart';
// // import '../../view/WishListScreen/wish_list_screen.dart';
// // import '../../view/NewScreen/new_screen.dart';

// class NavigationMenu extends StatelessWidget {
//   const NavigationMenu({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavigationController());

//     return Scaffold(
//       bottomNavigationBar: Obx(() => BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             currentIndex: controller.selectedIndex.value,
//             onTap: (index) => controller.selectedIndex.value = index,
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite_border),
//                 label: 'Wish List',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.new_releases),
//                 label: 'New',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.category),
//                 label: 'Category',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 label: 'Profile',
//               ),
//             ],
//             selectedItemColor: Colors.blue,
//             unselectedItemColor: Colors.black,
//             showSelectedLabels: true,
//             showUnselectedLabels: true,
//           )),
//       body: Obx(() => controller.screens[controller.selectedIndex.value]),
//     );
//   }
// }

// class NavigationController extends GetxController {
//   final Rx<int> selectedIndex = 0.obs;
//   final screens = [
//     HomeScreen(),
//     HomeScreen(),
//     HomeScreen(),
//     CategoriesScreen(),
//     ProfileScreen(),
//   ];
// }

import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../view/CateogoriesScreen/categoriesScreen.dart';
import '../../view/ProfileScreen/profileScreen.dart';
import '../../view/homeScreen/home_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  //color: Color(0xff595959),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  //color: Color(0xff595959),
                ),
                label: 'Wish List',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  //color: Color(0xff595959),
                  AssetImage("assets/images/Y.png"),
                ),
                label: 'New',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  //color: Color(0xff595959),
                  // size: 25,
                  AssetImage("assets/images/search.png"),
                ),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    //color: Color(0xff595959),
                    Icons.person_outline),
                label: 'Profile',
              ),
            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: const Color(0xff595959),
            showSelectedLabels: true,
            showUnselectedLabels: true,
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    CategoriesScreen(),
    ProfileScreen(),
  ];
}
