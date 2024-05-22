// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yam_baba_e_commerce/resources/colors/colors.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

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
//               width: screenWidth * 0.9,
//               height: screenHeight * 0.5,
//               child: Center(
//                 child: Center(
//                   child: Image.asset(
//                     "assets/images/YambabaLogo.png",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             Text(
//               "Start Your Shopping\nJourney Now",
//               style: TextStyle(
//                 fontSize: 30.0,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),

//             SizedBox(height: screenHeight * 0.02),

//             Text(
//               "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
//               "Sed do eiusmod ho haai aliqua.",
//               style: TextStyle(
//                 fontSize: 17.0,
//                 color: Colors.grey,
//               ),
//               textAlign: TextAlign.center,
//             ),

//             SizedBox(height: screenHeight * 0.04),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                     height: 50,
//                     width: screenWidth * 0.8,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Get.toNamed('/LoginScreen');
//                       },
//                       child: Text(
//                         "Log In",
//                         style:
//                             TextStyle(fontSize: 20, color: AppColor.blackColor),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.white,
//                         elevation: 5.0,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                       ),
//                     )),
//                 SizedBox(height: screenHeight * 0.015),
//                 Container(
//                     height: 50,
//                     width: screenWidth * 0.8,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Get.toNamed('/SignupScreen');
//                       },
//                       child: Text(
//                         "Sign Up",
//                         style:
//                             TextStyle(fontSize: 20, color: AppColor.blackColor),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         elevation: 5.0,
//                         foregroundColor: Colors.white, // Text color
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                       ),
//                     )),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yam_baba_e_commerce/resources/components/blackButton.dart';
import 'package:yam_baba_e_commerce/resources/components/whiteButton.dart';

import '../../resources/components/clipPath.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(heightFactor: 1, curveHeight: 60),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  // color: Color(0xFF2C93FD),

                  color: Colors.blue,
                  child: const Center(
                    child: Image(
                      image: AssetImage("assets/images/YambabaLogoWhite.png"),
                      height: 300,
                    ),
                  ), // Blue color
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Pellentesque finibus dui sed porta blandit. '
                  'Fusce maximus, nisi vel dictum',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 30),
                BlackButton(
                  onPressed: () {
                    Get.toNamed("/LoginScreen");
                  },
                  text: " Sign In",
                  backgroundColor: Colors.blue,
                 
                ),
                const SizedBox(height: 20),
                WhiteButton(
                  text: "Register",
                  onPressed: () {
                    Get.toNamed("/SignupScreen");
                  },
                  textColor: Colors.blue,
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    // Just Browse action
                    Get.toNamed("/HomeScreen");
                  },
                  child: const Text(
                    'Just Browse!',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
