// // // import 'package:flutter/material.dart';

// // // class HomeScreen extends StatefulWidget {
// // //   const HomeScreen({Key? key}) : super(key: key);

// // //   @override
// // //   State<HomeScreen> createState() => _HomeScreenState();
// // // }

// // // class _HomeScreenState extends State<HomeScreen> {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         backgroundColor: Colors.blue,
// // //         centerTitle: true,
// // //         title: Text("Yam Baba"),
// // //       ),
// // //       drawer: Drawer(
// // //         child: ListView(
// // //           padding: EdgeInsets.zero,
// // //           children: <Widget>[
// // //             DrawerHeader(
// // //               decoration: BoxDecoration(
// // //                 color: Colors.blue,
// // //               ),
// // //               child: Text(
// // //                 'Welcome User',
// // //                 style: TextStyle(
// // //                   color: Colors.white,
// // //                   fontSize: 24,
// // //                 ),
// // //               ),
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.home),
// // //               title: Text('Home'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.person),
// // //               title: Text('Profiles'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.shopping_cart),
// // //               title: Text('My Orders'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.location_on),
// // //               title: Text('Track Your Orders'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.help_rounded),
// // //               title: Text('Help Center'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.rate_review),
// // //               title: Text('My Reviews'),
// // //               onTap: () {},
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.settings),
// // //               title: Text('Setting'),
// // //               onTap: () {},
// // //             ),
// // //             Spacer(),
// // //             ElevatedButton(
// // //               onPressed: () {},
// // //               child: Text("Log Out"),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({Key? key}) : super(key: key);

// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
// //   int _selectedIndex = 0; // Index of the selected tab

// //   // List of screens to be displayed on each tab
// //   final List<Widget> _screens = [
// //     // Add your screens here
// //     Placeholder(), // Placeholder for demonstration, replace with your actual screens
// //     Placeholder(),
// //     Placeholder(),
// //   ];

// //   // Function to handle tab selection
// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

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
// //       body: Stack(
// //         children: [
// //           // Displaying the selected screen based on the current index
// //           _screens[_selectedIndex],
// //           // Positioned the BottomNavigationBar at the bottom of the screen
// //           Positioned(
// //             bottom: 0,
// //             left: 0,
// //             right: 0,
// //             child: BottomNavigationBar(
// //               currentIndex: _selectedIndex,
// //               onTap: _onItemTapped,
// //               items: const <BottomNavigationBarItem>[
// //                 BottomNavigationBarItem(
// //                   icon: Icon(Icons.home),
// //                   label: 'Home',
// //                 ),
// //                 BottomNavigationBarItem(
// //                   icon: Icon(Icons.notifications),
// //                   label: 'Notifications',
// //                 ),
// //                 BottomNavigationBarItem(
// //                   icon: Icon(Icons.person),
// //                   label: 'Profile',
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // Import necessary packages if not already imported
// import 'package:flutter/material.dart';
// // import 'package:yam_baba_e_commerce/view/homeScreen/widget/NavigationBar/customNavBar.dart';
// import 'package:yam_baba_e_commerce/view/homeScreen/widget/AppDrawer/appDrawer.dart';

// import '../CartScreen/cartScreen.dart';
// import '../CateogoriesScreen/categoriesScreen.dart';
// // import '../ProfileScreen/profileScreen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0; // Index of the selected tab

//   // List of screens to be displayed on each tab
//   final List<Widget> _screens = [
//     // Featured products screen
//     FeaturedProductsScreen(),
//     // Categories screen
//     CategoriesScreen(),
//     // Promotions screen
//     CartScreen(),
//     // ProfileScreen()
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
//       drawer: AppDrawer(),
//       body: Stack(
//         children: [
//           // Displaying the selected screen based on the current index

//           // Positioned the BottomNavigationBar at the bottom of the screen
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: CustomNavBar(
//                 currentIndex: _selectedIndex, onTap: _onItemTapped),
//             // child: BottomNavigationBar(
//             //   currentIndex: _selectedIndex,
//             //   onTap: _onItemTapped,
//             //   items: const <BottomNavigationBarItem>[
//             //     BottomNavigationBarItem(
//             //       icon: Icon(Icons.home),
//             //       label: 'Home',
//             //     ),
//             //     BottomNavigationBarItem(
//             //       icon: Icon(Icons.category_rounded),
//             //       label: 'Categories',
//             //     ),
//             //     BottomNavigationBarItem(
//             //       icon: Icon(Icons.shopping_cart),
//             //       label: 'Cart',
//             //     ),
//             //     BottomNavigationBarItem(
//             //       icon: Icon(Icons.account_box),
//             //       label: 'Profile',
//             //     ),
//             //   ],
//             // ),
//           ),
//           _screens[_selectedIndex],
//         ],
//       ),
//     );
//   }
// }

// // Placeholder widget for Featured Products screen
// class FeaturedProductsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("Featured Products Screen"),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widget/AppDrawer/appDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // title: Text("YamBaba"),
          // actions: [
          //   Image.asset(
          //     "assets/images/YambabaLogo.png",
          //     fit: BoxFit.cover,
          //   )
          // ]
          flexibleSpace: Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            height: 43,
            width: 50,
            child: Center(
              child: Image.asset("assets/images/YambabaLogo.png",
                  fit: BoxFit.cover),
            ),
          ),
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 15),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(36),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        style: TextStyle(fontSize: 17),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform search action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: () {
                      // Perform voice search action
                    },
                  ),
                  IconButton(
                      onPressed: () {}, icon: FaIcon(FontAwesomeIcons.sliders))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              width: 360,
              color: Colors.grey,
            )
          ]),
        ));
  }
}
