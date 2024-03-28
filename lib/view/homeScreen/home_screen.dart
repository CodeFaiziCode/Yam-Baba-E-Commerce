// // import 'package:flutter/material.dart';

// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({Key? key}) : super(key: key);

// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.blue,
// //         centerTitle: true,
// //         title: Text("Yam Baba"),
// //       ),
// //       drawer: Drawer(
// //         child: ListView(
// //           padding: EdgeInsets.zero,
// //           children: <Widget>[
// //             DrawerHeader(
// //               decoration: BoxDecoration(
// //                 color: Colors.blue,
// //               ),
// //               child: Text(
// //                 'Welcome User',
// //                 style: TextStyle(
// //                   color: Colors.white,
// //                   fontSize: 24,
// //                 ),
// //               ),
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.home),
// //               title: Text('Home'),
// //               onTap: () {},
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.person),
// //               title: Text('Profiles'),
// //               onTap: () {},
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.shopping_cart),
// //               title: Text('My Orders'),
// //               onTap: () {},
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.location_on),
// //               title: Text('Track Your Orders'),
// //               onTap: () {},
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.help_rounded),
// //               title: Text('Help Center'),
// //               onTap: () {},
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.rate_review),
// //               title: Text('My Reviews'),
// //               onTap: () {},
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.settings),
// //               title: Text('Setting'),
// //               onTap: () {},
// //             ),
// //             Spacer(),
// //             ElevatedButton(
// //               onPressed: () {},
// //               child: Text("Log Out"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0; // Index of the selected tab

//   // List of screens to be displayed on each tab
//   final List<Widget> _screens = [
//     // Add your screens here
//     Placeholder(), // Placeholder for demonstration, replace with your actual screens
//     Placeholder(),
//     Placeholder(),
//   ];

//   // Function to handle tab selection
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text("Yam Baba"),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Welcome User',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Profiles'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.shopping_cart),
//               title: Text('My Orders'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.location_on),
//               title: Text('Track Your Orders'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.help_rounded),
//               title: Text('Help Center'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.rate_review),
//               title: Text('My Reviews'),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Setting'),
//               onTap: () {},
//             ),
//             Spacer(),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text("Log Out"),
//             ),
//           ],
//         ),
//       ),
//       body: Stack(
//         children: [
//           // Displaying the selected screen based on the current index
//           _screens[_selectedIndex],
//           // Positioned the BottomNavigationBar at the bottom of the screen
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: BottomNavigationBar(
//               currentIndex: _selectedIndex,
//               onTap: _onItemTapped,
//               items: const <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.notifications),
//                   label: 'Notifications',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: 'Profile',
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Import necessary packages if not already imported
import 'package:flutter/material.dart';
import 'package:yam_baba_e_commerce/view/homeScreen/widget/appDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; // Index of the selected tab

  // List of screens to be displayed on each tab
  final List<Widget> _screens = [
    // Featured products screen
    FeaturedProductsScreen(),
    // Categories screen
    CategoriesScreen(),
    // Promotions screen
    PromotionsScreen(),
  ];

  // Function to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Yam Baba"),
      ),
      drawer: AppDrawer(),
      body: Stack(
        children: [
          // Displaying the selected screen based on the current index
          _screens[_selectedIndex],
          // Positioned the BottomNavigationBar at the bottom of the screen
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer),
                  label: 'Promotions',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Placeholder widget for Featured Products screen
class FeaturedProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Featured Products Screen"),
    );
  }
}

// Placeholder widget for Categories screen
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Categories Screen"),
    );
  }
}

// Placeholder widget for Promotions screen
class PromotionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Promotions Screen"),
    );
  }
}
