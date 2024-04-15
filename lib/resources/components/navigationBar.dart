import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/view/CartScreen/cartScreen.dart';
import 'package:yam_baba_e_commerce/view/homeScreen/home_screen.dart';

import '../../view/CateogoriesScreen/categoriesScreen.dart';
import '../../view/ProfileScreen/profileScreen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: "Home"),
                NavigationDestination(
                    icon: Icon(Icons.category), label: "Category"),
                NavigationDestination(icon: Icon(Icons.trolley), label: "Cart"),
                NavigationDestination(
                    icon: Icon(Icons.person), label: "Profile"),
              ])),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    ProfileScreen()
  ];
}
