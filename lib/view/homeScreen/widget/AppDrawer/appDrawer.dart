// // import 'package:flutter/material.dart';

// // // Custom Drawer widget
// // class AppDrawer extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       child: ListView(
// //         padding: EdgeInsets.zero,
// //         children: <Widget>[
// //           DrawerHeader(
// //             decoration: BoxDecoration(
// //               color: Colors.blue,
// //             ),
// //             child: Text(
// //               'Welcome User',
// //               style: TextStyle(
// //                 color: Colors.white,
// //                 fontSize: 24,
// //               ),
// //             ),
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.home),
// //             title: Text('Home'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.person),
// //             title: Text('Profiles'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.shopping_cart),
// //             title: Text('My Orders'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.location_on),
// //             title: Text('Track Your Orders'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.help_rounded),
// //             title: Text('Help Center'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.rate_review),
// //             title: Text('My Reviews'),
// //             onTap: () {},
// //           ),
// //           ListTile(
// //             leading: Icon(Icons.settings),
// //             title: Text('Setting'),
// //             onTap: () {},
// //           ),
// //           Spacer(),
// //           ElevatedButton(
// //             onPressed: () {},
// //             child: Text("Log Out"),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yam_baba_e_commerce/resources/components/blackButton.dart';

// // Custom Drawer widget
// class AppDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: <Widget>[
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: <Widget>[
//                 DrawerHeader(
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                   ),
//                   child: Text(
//                     'Welcome User',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.home),
//                   title: Text('Home'),
//                   onTap: () {
//                     Get.toNamed("/NavigationMenu");
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.person),
//                   title: Text('Profiles'),
//                   onTap: () {
//                     Get.toNamed("/NavigationMenu");
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text('My Orders'),
//                   onTap: () {},
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.location_on),
//                   title: Text('Track Your Orders'),
//                   onTap: () {
//                     Get.toNamed("/TrackOrderScreen");
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.help_rounded),
//                   title: Text('Help Center'),
//                   onTap: () {},
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.rate_review),
//                   title: Text('My Reviews'),
//                   onTap: () {},
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.settings),
//                   title: Text('Setting'),
//                   onTap: () {},
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: BlackButton(
//                 text: "Log out",
//                 onPressed: () {
//                   Get.toNamed("/LoginScreen");
//                 },
//                 backgroundColor: Colors.black,
//               ))
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/components/blackButton.dart';

import '../../../../resources/components/navigationBar.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Welcome User',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Get.find<NavigationController>().selectedIndex.value =
                        0; // Set selected index to HomeScreen (0)
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  onTap: () {
                    Get.find<NavigationController>().selectedIndex.value =
                        3; // Set selected index to ProfileScreen (3)
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('My Orders'),
                  onTap: () {
                    // Handle My Orders onTap behavior here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Track Your Orders'),
                  onTap: () {
                    Get.toNamed('/TrackOrderScreen');

                    // Navigator.pop(context); // Close the drawer after navigating
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help_rounded),
                  title: Text('Help Center'),
                  onTap: () {
                    // Handle Help Center onTap behavior here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.rate_review),
                  title: Text('My Reviews'),
                  onTap: () {
                    // Handle My Reviews onTap behavior here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Setting'),
                  onTap: () {
                    // Handle Setting onTap behavior here
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlackButton(
              text: "Log out",
              onPressed: () {
                Get.toNamed("/LoginScreen");
                // Navigator.pop(context); // Close the drawer after navigating
              },
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
