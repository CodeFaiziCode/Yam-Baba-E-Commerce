//   import 'package:flutter/material.dart';
//   import 'package:get/get.dart';
//   import 'package:yam_baba_e_commerce/resources/colors/colors.dart';
//   import 'package:yam_baba_e_commerce/resources/components/clipPath.dart';
//   import 'package:yam_baba_e_commerce/resources/components/textField.dart';
//   import '../../resources/components/blackButton.dart';
//   import 'loginScreenModel.dart';

//   class LoginScreen extends StatefulWidget {
//     const LoginScreen({Key? key});

//     @override
//     State<LoginScreen> createState() => _LoginScreenState();
//   }

//   class _LoginScreenState extends State<LoginScreen> {
//     final loginSM = Get.put(LoginScreenModel());
//     final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//     @override
//     Widget build(BuildContext context) {
//       final screenWidth = MediaQuery.of(context).size.width;
//       final screenHeight = MediaQuery.of(context).size.height;

//       return Scaffold(
//         backgroundColor: AppColor.whiteColor,
//         body: Column(
//           children: [
//             Stack(
//               children: [
//                 ClipPath(
//                   clipper: CustomClipPath(heightFactor: 1, curveHeight: 60),
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.3,
//                     color: Colors.blue,
//                     child: const Center(
//                       child: Image(
//                         image: AssetImage("assets/images/YambabaLogoWhite.png"),
//                         height: 190,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     left: screenWidth * 0.05,
//                     right: screenWidth * 0.05,
//                     bottom: screenWidth * 0.05),
//                 child: Form(
//                   key: _formKey,
//                   child: ListView(
//                     children: [
//                       Center(
//                         child: Text(
//                           'Sign In',
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.15,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: screenHeight * 0.01),
//                       Center(
//                         child: Text(
//                           'Welcome to the Yam Baba',
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.04,
//                             color: AppColor.blackColor,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: screenHeight * 0.02),
//                       // TextFormField(
//                       //   controller: loginSM.emailController.value,
//                       //   keyboardType: TextInputType.emailAddress,
//                       //   decoration: InputDecoration(
//                       //     filled: true,
//                       //     fillColor: AppColor.fieldColor,
//                       //     hintText: 'Email',
//                       //     border: OutlineInputBorder(
//                       //       borderRadius: BorderRadius.circular(10.0),
//                       //     ),
//                       //   ),
//                       //   validator: (value) {
//                       //     if (value == null || value.isEmpty) {
//                       //       return 'Please enter your email';
//                       //     }
//                       //     if (!RegExp(
//                       //             r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
//                       //         .hasMatch(value)) {
//                       //       return 'Please enter a valid email address';
//                       //     }
//                       //     return null;
//                       //   },
//                       // ),

//                       CustomTextField(
//                         controller: loginSM.emailController.value,
//                         hintText: "Email or Phone Number",
//                         labelText: "Email or Phone",
//                         validator:
//                             validateEmailOrPhone, // Use the appropriate validator
//                       ),

//                       SizedBox(height: screenHeight * 0.026),
//                       CustomTextField(
//                         controller: loginSM.passwordController.value,
//                         hintText: "Password",
//                         labelText: "Password",
//                         obscureText: true, // Enable password hiding
//                         validator: validatePassword, // Use the password validator
//                       ),
//                       SizedBox(height: screenHeight * 0.01),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: TextButton(
//                           onPressed: () {
//                             Get.toNamed("/ForgotPasswordScreen");
//                           },
//                           child: const Text(
//                             'Forgot Password?',
//                             style: TextStyle(color: Colors.blue),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: screenHeight * 0.035),
//                       Center(
//                         child: BlackButton(
//                           onPressed: () {
//                             if (_formKey.currentState!.validate()) {
//                               // Implement login action
//                             }
//                           },
//                           text: "Sign In",
//                           backgroundColor: Colors.blue,
//                         ),
//                       ),
//                       SizedBox(height: screenHeight * 0.02),
//                       Align(
//                         alignment: Alignment.center,
//                         child: TextButton(
//                           onPressed: () {
//                             Get.toNamed('/SignupScreen');
//                           },
//                           child: const Text(
//                             'Not a member? Join Now',
//                             style: TextStyle(color: Colors.blue),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     }
//   }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';
import 'package:yam_baba_e_commerce/resources/components/clipPath.dart';
import 'package:yam_baba_e_commerce/resources/components/textField.dart';
import '../../resources/components/blackButton.dart';
import 'loginScreenModel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginSM = Get.put(LoginScreenModel());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
        // Wrap content with SafeArea for additional spacing control
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClipPath(heightFactor: 1, curveHeight: 60),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Colors.blue,
                    child: const Center(
                      child: Image(
                        image: AssetImage("assets/images/YambabaLogoWhite.png"),
                        height: 190,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.05,
                  bottom: screenWidth * 0.05,
                ),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: screenWidth * 0.15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.001),
                      Center(
                        child: Text(
                          'Welcome to the Yam Baba',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            color: AppColor.blackColor,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      CustomTextField(
                        controller: loginSM.emailController.value,
                        hintText: "Email or Phone Number",
                        labelText: "Email or Phone",
                        validator: validateEmailOrPhone,
                      ),
                      SizedBox(height: screenHeight * 0.015),
                      CustomTextField(
                        controller: loginSM.passwordController.value,
                        hintText: "Password",
                        labelText: "Password",
                        obscureText: true,
                        validator: validatePassword,
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Get.toNamed("/ForgotPasswordScreen"),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.035),
                      Center(
                        child: BlackButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          text: "Sign In",
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () => Get.toNamed('/SignupScreen'),
                          child: const Text(
                            'Not a member? Join Now',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}














// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:yam_baba_e_commerce/resources/colors/colors.dart';
// // import 'package:yam_baba_e_commerce/resources/components/clipPath.dart';
// // import 'package:yam_baba_e_commerce/resources/components/blackButton.dart';

// // import 'login_screen_model.dart';


// // class LoginScreen extends StatefulWidget {
// //   const LoginScreen({Key? key});

// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   final loginSM = Get.put(LoginScreenModel());
// //   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;
// //     final screenHeight = MediaQuery.of(context).size.height;

// //     return Scaffold(
// //       backgroundColor: AppColor.whiteColor,
// //       body: Column(
// //         children: [
// //           Stack(
// //             children: [
// //               ClipPath(
// //                 clipper: CustomClipPath(heightFactor: 1, curveHeight: 60),
// //                 child: Container(
// //                   height: MediaQuery.of(context).size.height * 0.3,
// //                   color: Colors.blue,
// //                   child: const Center(
// //                     child: Image(
// //                       image: AssetImage("assets/images/YambabaLogoWhite.png"),
// //                       height: 190,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //           Expanded(
// //             child: Padding(
// //               padding: EdgeInsets.only(
// //                   left: screenWidth * 0.05,
// //                   right: screenWidth * 0.05,
// //                   bottom: screenWidth * 0.05),
// //               child: Form(
// //                 key: _formKey,
// //                 child: ListView(
// //                   children: [
// //                     Center(
// //                       child: Text(
// //                         'Welcome Back!',
// //                         style: TextStyle(
// //                           fontSize: screenWidth * 0.09,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(height: screenHeight * 0.01),
// //                     Center(
// //                       child: Text(
// //                         'Sign in to your account',
// //                         style: TextStyle(
// //                           fontSize: screenWidth * 0.04,
// //                           color: AppColor.blackColor,
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(height: screenHeight * 0.02),
// //                     TextFormField(
// //                       controller: loginSM.emailController.value,
// //                       keyboardType: TextInputType.emailAddress,
// //                       decoration: InputDecoration(
// //                         filled: true,
// //                         fillColor: AppColor.fieldColor,
// //                         hintText: 'Email',
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                         ),
// //                       ),
// //                       validator: (value) {
// //                         if (value == null || value.isEmpty) {
// //                           return 'Please enter your email';
// //                         }
// //                         if (!RegExp(
// //                                 r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
// //                             .hasMatch(value)) {
// //                           return 'Please enter a valid email address';
// //                         }
// //                         return null;
// //                       },
// //                     ),
// //                     SizedBox(height: screenHeight * 0.026),
// //                     TextFormField(
// //                       controller: loginSM.passwordController.value,
// //                       obscureText: true,
// //                       decoration: InputDecoration(
// //                         filled: true,
// //                         fillColor: AppColor.fieldColor,
// //                         hintText: 'Password',
// //                         border: OutlineInputBorder(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                         ),
// //                       ),
// //                       validator: (value) {
// //                         if (value == null || value.isEmpty) {
// //                           return 'Please enter your password';
// //                         }
// //                         return null;
// //                       },
// //                     ),
// //                     SizedBox(height: screenHeight * 0.01),
// //                     Align(
// //                       alignment: Alignment.centerRight,
// //                       child: TextButton(
// //                         onPressed: () {
// //                           Get.toNamed("/ForgotPasswordScreen");
// //                         },
// //                         child: const Text(
// //                           'Forgot Password?',
// //                           style: TextStyle(color: Colors.blue),
// //                         ),
// //                       ),
// //                     ),
// //                     SizedBox(height: screenHeight * 0.035),
// //                     Center(
// //                       child: Obx(() {
// //                         if (loginSM.isLoading.value) {
// //                           return CircularProgressIndicator();
// //                         } else {
// //                           return BlackButton(
// //                             onPressed: () {
// //                               if (_formKey.currentState!.validate()) {
// //                                 loginSM.login();
// //                               }
// //                             },
// //                             text: "Sign In",
// //                             backgroundColor: Colors.blue,
// //                           );
// //                         }
// //                       }),
// //                     ),
// //                     SizedBox(height: screenHeight * 0.02),
// //                     Align(
// //                       alignment: Alignment.center,
// //                       child: TextButton(
// //                         onPressed: () {
// //                           Get.toNamed('/SignupScreen');
// //                         },
// //                         child: const Text(
// //                           'Not a member? Join Now',
// //                           style: TextStyle(color: Colors.blue),
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
