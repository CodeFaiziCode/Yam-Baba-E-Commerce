// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';

// // import '../../resources/colors/colors.dart';
// // import 'ResetPasswordScreenModel.dart';

// // class ResetPasswordScreen extends StatefulWidget {
// //   @override
// //   State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
// // }

// // class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
// //   final forgotEmail = Get.put(ResetPasswordScreenModel());

// //   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;
// //     final screenHeight = MediaQuery.of(context).size.height;
// //     return Scaffold(
// //       appBar: AppBar(),
// //       body: Padding(
// //         padding: EdgeInsets.all(screenWidth * 0.05),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               'Password Recovery',
// //               style: TextStyle(
// //                 fontSize: screenWidth * 0.09,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             SizedBox(height: screenHeight * 0.02),
// //             Text(
// //               'Please enter the new password to reset your password.',
// //               style: TextStyle(
// //                 fontSize: screenWidth * 0.0459,
// //                 color: Colors.grey,
// //               ),
// //             ),
// //             SizedBox(height: screenHeight * 0.09),
// //             TextFormField(
// //               // controller: forgotEmail.emailController.value,
// //               keyboardType: TextInputType.emailAddress,
// //               decoration: InputDecoration(
// //                 filled: true,
// //                 fillColor: AppColor.fieldColor,
// //                 hintText: 'Email',
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(screenWidth * 0.05),
// //                 ),
// //               ),
// //               style: TextStyle(fontSize: screenWidth * 0.04),
// //               validator: (value) {
// //                 if (value == null || value.isEmpty) {
// //                   return 'Please enter your email';
// //                 }
// //                 if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
// //                     .hasMatch(value)) {
// //                   return 'Please enter a valid email address';
// //                 }
// //                 return null;
// //               },
// //             ),
// //             SizedBox(height: screenHeight * 0.03),
// //             Center(
// //               child: ElevatedButton(
// //                 onPressed: () {
// //                   Get.toNamed("/OtpScreen");

// //                   if (_formKey.currentState != null &&
// //                       _formKey.currentState!.validate()) {
// //                     // Implement login action
// //                   }
// //                 },
// //                 style: ElevatedButton.styleFrom(
// //                   shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(screenWidth * 0.06)),
// //                   backgroundColor: Colors.black,
// //                   minimumSize: Size(screenWidth * 0.8, screenHeight * 0.07),
// //                 ),
// //                 child: Text(
// //                   'Login',
// //                   style: TextStyle(
// //                       fontSize: screenWidth * 0.04, color: AppColor.whiteColor),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../resources/colors/colors.dart';
// import 'ResetPasswordScreenModel.dart';

// class ResetPasswordScreen extends StatefulWidget {
//   @override
//   State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
// }

// class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
//   final forgotEmail = Get.put(ResetPasswordScreenModel());

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   TextEditingController _newPasswordController = TextEditingController();
//   TextEditingController _confirmPasswordController = TextEditingController();

//   String? _validatePassword(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter a password';
//     }
//     return null;
//   }

//   String? _validateConfirmPassword(String? value) {
//     if (value != _newPasswordController.text) {
//       return 'Passwords do not match';
//     }
//     return null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(screenWidth * 0.05),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Password Recovery',
//                 style: TextStyle(
//                   fontSize: screenWidth * 0.09,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.02),
//               Text(
//                 'Please enter the new password to reset your password.',
//                 style: TextStyle(
//                   fontSize: screenWidth * 0.0459,
//                   color: Colors.grey,
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.09),
//               TextFormField(
//                 controller: _newPasswordController,
//                 keyboardType: TextInputType.visiblePassword,
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: AppColor.fieldColor,
//                   hintText: 'Enter New Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(screenWidth * 0.05),
//                   ),
//                 ),
//                 style: TextStyle(fontSize: screenWidth * 0.04),
//                 validator: _validatePassword,
//               ),
//               SizedBox(height: screenHeight * 0.03),
//               TextFormField(
//                 controller: _confirmPasswordController,
//                 keyboardType: TextInputType.visiblePassword,
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: AppColor.fieldColor,
//                   hintText: 'Confirm New Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(screenWidth * 0.05),
//                   ),
//                 ),
//                 style: TextStyle(fontSize: screenWidth * 0.04),
//                 validator: _validateConfirmPassword,
//               ),
//               SizedBox(height: screenHeight * 0.03),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState != null &&
//                         _formKey.currentState!.validate()) {
//                       // Passwords are valid, proceed with the reset
//                       // You can access the passwords using _newPasswordController.text
//                       // and _confirmPasswordController.text
//                       // Add your reset logic here
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius:
//                             BorderRadius.circular(screenWidth * 0.06)),
//                     backgroundColor: Colors.black,
//                     minimumSize: Size(screenWidth * 0.8, screenHeight * 0.07),
//                   ),
//                   child: Text(
//                     'Reset Password',
//                     style: TextStyle(
//                         fontSize: screenWidth * 0.04,
//                         color: AppColor.whiteColor),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/colors.dart';
// import '../../resetPasswordScreen/ResetPasswordScreenModel.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  // final forgotEmail = Get.put(ResetPasswordScreenModel());

  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value != _newPasswordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password Recovery',
                style: TextStyle(
                  fontSize: screenWidth * 0.09,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                'Please enter the new password to reset your password.',
                style: TextStyle(
                  fontSize: screenWidth * 0.0459,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: screenHeight * 0.09),
              TextFormField(
                controller: _newPasswordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.fieldColor,
                  hintText: 'Enter New Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.05),
                  ),
                ),
                style: TextStyle(fontSize: screenWidth * 0.04),
                validator: _validatePassword,
              ),
              SizedBox(height: screenHeight * 0.03),
              TextFormField(
                controller: _confirmPasswordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.fieldColor,
                  hintText: 'Confirm New Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.05),
                  ),
                ),
                style: TextStyle(fontSize: screenWidth * 0.04),
                validator: _validateConfirmPassword,
              ),
              SizedBox(height: screenHeight * 0.03),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/NavigationMenu");
                    // if (_formKey.currentState != null &&
                    //     _formKey.currentState!.validate()) {
                    //   // Check if passwords match
                    //   if (_newPasswordController.text ==
                    //       _confirmPasswordController.text) {
                    //     Get.toNamed("/HomeScreen");
                    //     // Passwords match, proceed with the reset
                    //     // You can access the passwords using _newPasswordController.text
                    //     // and _confirmPasswordController.text
                    //     // Add your reset logic here
                    //     print('Passwords matched');
                    //   } else {
                    //     // Passwords do not match, show error message
                    //     ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(
                    //         content: Text('Passwords do not match'),
                    //       ),
                    //     );
                    //   }
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.06),
                    ),
                    backgroundColor: Colors.black,
                    minimumSize: Size(screenWidth * 0.8, screenHeight * 0.07),
                  ),
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: AppColor.whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
