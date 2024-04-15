// import 'package:flutter/material.dart';

// class CustomNavBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;

//   const CustomNavBar({
//     required this.currentIndex,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       bottom: 0,
//       left: 0,
//       right: 0,
//       child: BottomNavigationBar(
//         fixedColor: Colors.black,
//         currentIndex: currentIndex,
//         onTap: onTap,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.category),
//             label: 'Categories',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.trolley),
//             label: 'Cart',
//           ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.account_box),
//           //   label: 'Profile',
//           // ),
//         ],
//       ),
//     );
//   }
// }
