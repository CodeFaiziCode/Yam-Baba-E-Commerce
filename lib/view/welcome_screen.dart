import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo in the center of the screen
            Container(
              width: screenWidth * 0.5,
              height: screenHeight * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue, // Replace with your logo or image
              ),
              // You can replace the child with your logo/image widget
              child: Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.6,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: screenHeight * 0.02),

            // Heading "Start Your Shopping Journey Now"
            Text(
              "Start Your Shopping\nJourney Now",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: screenHeight * 0.02),

            // Dummy text (Heading 03)
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: screenHeight * 0.04),

            // Login and Signup Buttons (aligned vertically)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle login button press
                  },
                  child: Text("Login"),
                ),
                SizedBox(
                    height: screenHeight *
                        0.015), // Adjust the spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Handle signup button press
                  },
                  child: Text("Signup"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Logo in the center of the screen
//             Container(
//               width: screenWidth * 0.8,
//               height: screenHeight * 0.4,
//               child: Center(
//                 child: Image.asset(
//                   "assets/images/logo.png",
//                   height: screenHeight * 0.3,
//                   width: screenWidth * 0.5,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),

//             SizedBox(height: screenHeight * 0.02),

//             // Heading "Start Your Shopping Journey Now"
//             Text(
//               "Start Your Shopping\nJourney Now",
//               style: TextStyle(
//                 fontSize: 10.0,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),

//             SizedBox(height: screenHeight * 0.02),

//             // Dummy text (Heading 03)
//             Text(
//               "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
//               "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
//               style: TextStyle(
//                 fontSize: 06.0,
//                 color: Colors.grey,
//               ),
//               textAlign: TextAlign.center,
//             ),

//             SizedBox(height: screenHeight * 0.04),

//             // Login and Signup Buttons (aligned vertically)
//             ElevatedButton(
//               onPressed: () {
//                 // Handle login button press
//               },
//               child: Text(
//                 "Login",
//               ),
//             ),
//             SizedBox(
//               height: screenHeight * 0.015,
//             ), // Adjust the spacing between buttons
//             ElevatedButton(
//               onPressed: () {
//                 // Handle signup button press
//               },
//               child: Text(
//                 "Signup",
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
