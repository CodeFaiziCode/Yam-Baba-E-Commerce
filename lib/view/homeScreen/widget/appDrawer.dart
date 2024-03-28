// import 'package:flutter/material.dart';

// // Custom Drawer widget
// class AppDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Text(
//               'Welcome User',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.home),
//             title: Text('Home'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text('Profiles'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.shopping_cart),
//             title: Text('My Orders'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.location_on),
//             title: Text('Track Your Orders'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.help_rounded),
//             title: Text('Help Center'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.rate_review),
//             title: Text('My Reviews'),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text('Setting'),
//             onTap: () {},
//           ),
//           Spacer(),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text("Log Out"),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:yam_baba_e_commerce/resources/components/blackButton.dart';

// Custom Drawer widget
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
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profiles'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('My Orders'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Track Your Orders'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.help_rounded),
                  title: Text('Help Center'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.rate_review),
                  title: Text('My Reviews'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Setting'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlackButton(
                text: "Log out",
                onPressed: () {},
                backgroundColor: Colors.black,
              ))
        ],
      ),
    );
  }
}
