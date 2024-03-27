// // import 'package:flutter/material.dart';

// // class OTPScreen extends StatefulWidget {
// //   @override
// //   _OTPScreenState createState() => _OTPScreenState();
// // }

// // class _OTPScreenState extends State<OTPScreen> {
// //   TextEditingController _otpController = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('OTP Verification'),
// //       ),
// //       body: Padding(
// //         padding: EdgeInsets.all(20.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(
// //               'Enter OTP',
// //               style: TextStyle(
// //                 fontSize: 20.0,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             SizedBox(height: 20.0),
// //             TextField(
// //               controller: _otpController,
// //               keyboardType: TextInputType.number,
// //               decoration: InputDecoration(
// //                 labelText: 'OTP',
// //                 hintText: 'Enter OTP',
// //                 border: OutlineInputBorder(),
// //               ),
// //             ),
// //             SizedBox(height: 20.0),
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Add logic to verify OTP
// //                 // For now, print the entered OTP
// //                 // print('Entered OTP: ${_otpController.text}');
// //               },
// //               child: Text('Verify OTP'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class OTPScreen extends StatefulWidget {
//   @override
//   _OTPScreenState createState() => _OTPScreenState();
// }

// class _OTPScreenState extends State<OTPScreen> {
//   late List<TextEditingController> _otpControllers;

//   @override
//   void initState() {
//     super.initState();
//     _otpControllers = List.generate(4, (_) => TextEditingController());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('OTP Verification'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Enter OTP',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                 4,
//                 (index) => SizedBox(
//                   width: 50.0,
//                   child: TextField(
//                     controller: _otpControllers[index],
//                     keyboardType: TextInputType.number,
//                     maxLength: 1,
//                     textAlign: TextAlign.center,
//                     decoration: InputDecoration(
//                       counterText: '',
//                       border: OutlineInputBorder(),
//                     ),
//                     onChanged: (value) {
//                       if (value.isNotEmpty) {
//                         if (index < 3) {
//                           FocusScope.of(context).nextFocus();
//                         }
//                       }
//                     },
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 String otp = _otpControllers
//                     .map((controller) => controller.text)
//                     .join('');
//                 // Add logic to verify OTP
//                 print('Entered OTP: $otp');
//               },
//               child: Text('Verify OTP'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late List<TextEditingController> _otpControllers;

  @override
  void initState() {
    super.initState();
    _otpControllers = List.generate(4, (_) => TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter OTP',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: 50.0,
                  child: TextField(
                    controller: _otpControllers[index],
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        if (index < 3) {
                          FocusScope.of(context).nextFocus();
                        }
                      }
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // String otp = _otpControllers
                  //     .map((controller) => controller.text)
                  //     .join('');
                  // // Add logic to verify OTP
                  // print('Entered OTP: $otp');

                  Get.toNamed("/ResetScreen");
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.black,
                  minimumSize: Size(screenWidth * 0.80, screenHeight * 0.07),
                ),
                child: Text(
                  'Verify OTP',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.white, // Change to white color
                  ),
                ),
              ),
            ),

            SizedBox(height: 100), // Added SizedBox for spacing
            TextButton(
              onPressed: () {
                // Implement logic to resend OTP
                print('Resend OTP');
              },
              child: Text('Didn\'t receive code? Resend it'),
            ),
          ],
        ),
      ),
    );
  }
}
