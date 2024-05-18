import 'package:get/get.dart';

import '../resources/components/navigationBar.dart';

void navigateToIndex(int index) {
  final controller =
      Get.find<NavigationController>(); // Find the NavigationController
  controller.selectedIndex.value = index;
}
