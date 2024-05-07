// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'phoneNoRegistrationModel.dart';

// // class MobileNumberRegistrationScreen extends StatelessWidget {
// //   final MobileNumberRegistrationModel controller =
// //       Get.put(MobileNumberRegistrationModel());

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Register Mobile Number'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           children: [
// //             Text(
// //               'Enter your country code',
// //               style: TextStyle(fontSize: 20.0),
// //             ),
// //             SizedBox(height: 20.0),
// //             GetBuilder<MobileNumberRegistrationModel>(
// //               builder: (controller) => DropdownButton<String>(
// //                 value: controller.selectedCountryCode.value,
// //                 onChanged: (String? newValue) {
// //                   if (newValue != null) {
// //                     controller.updateSelectedCountryCode(newValue);
// //                   }
// //                 },
// //                 items: <String>['+1', '+91', '+44', '+86', '+61']
// //                     .map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Row(
// //                       children: [
// //                         Image.asset(
// //                           'assets/flags/$value.png', // Provide path to your flags images
// //                           width: 24,
// //                           height: 24,
// //                         ),
// //                         SizedBox(width: 10.0),
// //                         Text(value),
// //                       ],
// //                     ),
// //                   );
// //                 }).toList(),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

// class MobileNumberRegistrationScreen extends StatefulWidget {
//   const MobileNumberRegistrationScreen({super.key});

//   @override
//   State<MobileNumberRegistrationScreen> createState() =>
//       _MobileNumberRegistrationScreenState();
// }

// class _MobileNumberRegistrationScreenState
//     extends State<MobileNumberRegistrationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Column(
//         children: [
//           Text("Phone Number Verification"),
//           Container(
//             padding: EdgeInsets.symmetric(
//                 horizontal: screenWidth * 0.1, vertical: screenHeight * 0.1),
//             decoration: BoxDecoration(color: Colors.white),
//             child: InternationalPhoneNumberInput(onInputChanged: (Value) {}),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:yam_baba_e_commerce/resources/components/blackButton.dart';

class MobileNumberRegistrationScreen extends StatefulWidget {
  const MobileNumberRegistrationScreen({super.key});

  @override
  State<MobileNumberRegistrationScreen> createState() =>
      _MobileNumberRegistrationScreenState();
}

class _MobileNumberRegistrationScreenState
    extends State<MobileNumberRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.1),
          Text(
            "Phone Number Verification",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "Please enter your phone number below to verify your account.",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.1),
          Container(
            margin: EdgeInsets.only(
                top: screenHeight * 0.07,
                left: screenWidth * 0.05,
                right: screenWidth * 0.05),
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.08, vertical: screenHeight * 0.005),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffeeeeee),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13))),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
            ),
          ),
          SizedBox(
            height: screenHeight * 0.075,
          ),
          Container(
            child: BlackButton(
                onPressed: () {
                  Get.toNamed("/HomeScreen");
                },
                text: "Verify Mobile Number"),
          )
        ],
      ),
    );
  }
}
