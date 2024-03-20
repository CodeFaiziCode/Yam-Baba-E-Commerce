// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:flutter/widgets.dart';

// // // // // import 'Widget/pageIndicator.dart';

// // // // // // import 'Widget/pageIndicator.dart';

// // // // // class GetStartedScreen extends StatefulWidget {
// // // // //   const GetStartedScreen({super.key});

// // // // //   @override
// // // // //   State<GetStartedScreen> createState() => _GetStartedScreenState();
// // // // // }

// // // // // class _GetStartedScreenState extends State<GetStartedScreen> {
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //         body: SafeArea(
// // // // //       child: Column(
// // // // //         crossAxisAlignment: CrossAxisAlignment.center,
// // // // //         children: [
// // // // //           Expanded(
// // // // //             child: Container(
// // // // //                 color: Colors.black,
// // // // //                 child: Center(
// // // // //                     child: Image.asset(
// // // // //                   "assets/images/YambabaLogo.png",
// // // // //                   fit: BoxFit.cover,
// // // // //                 ))),
// // // // //             flex: 3,
// // // // //           ),
// // // // //           Expanded(
// // // // //             flex: 2,
// // // // //             child: Column(
// // // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // // //               children: [
// // // // //                 Text(
// // // // //                   'Market for everything',
// // // // //                   style: TextStyle(
// // // // //                     fontSize: 24,
// // // // //                     fontWeight: FontWeight.bold,
// // // // //                   ),
// // // // //                 ),
// // // // //                 SizedBox(height: 20),
// // // // //                 Row(
// // // // //                   mainAxisAlignment: MainAxisAlignment.center,
// // // // //                   children: [
// // // // //                     buildPageIndicator(isActive: true),
// // // // //                     buildPageIndicator(),
// // // // //                     buildPageIndicator(),
// // // // //                     buildPageIndicator(),
// // // // //                   ],
// // // // //                 ),
// // // // //                 Spacer(),
// // // // //                 Padding(
// // // // //                   padding: EdgeInsets.only(bottom: 20),
// // // // //                   child: Text(
// // // // //                     'Already have an account? Sign In here',
// // // // //                     style: TextStyle(
// // // // //                       fontSize: 16,
// // // // //                       color: Colors.grey,
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     ));
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter/widgets.dart';

// // // // import 'Widget/pageIndicator.dart';

// // // // class GetStartedScreen extends StatefulWidget {
// // // //   const GetStartedScreen({Key? key}) : super(key: key);

// // // //   @override
// // // //   State<GetStartedScreen> createState() => _GetStartedScreenState();
// // // // }

// // // // class _GetStartedScreenState extends State<GetStartedScreen> {
// // // //   int _currentPageIndex = 0;

// // // //   final List<Map<String, dynamic>> _pages = [
// // // //     {
// // // //       'imagePath': 'assets/images/YambabaLogo.png',
// // // //       'text': 'Market for everything'
// // // //     },
// // // //     {
// // // //       'imagePath': 'assets/images/YambabaLogo.png',
// // // //       'text': 'Market for everything'
// // // //     },
// // // //     {
// // // //       'imagePath': 'assets/images/YambabaLogo.png',
// // // //       'text': 'Market for everything'
// // // //     },
// // // //     {
// // // //       'imagePath': 'assets/images/YambabaLogo.png',
// // // //       'text': 'Market for everything'
// // // //     },
// // // //   ];

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       body: SafeArea(
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.center,
// // // //           children: [
// // // //             Expanded(
// // // //               child: PageView.builder(
// // // //                 itemCount: _pages.length,
// // // //                 onPageChanged: (index) {
// // // //                   setState(() {
// // // //                     _currentPageIndex = index;
// // // //                   });
// // // //                 },
// // // //                 itemBuilder: (context, index) {
// // // //                   return Container(
// // // //                     color: Colors.black,
// // // //                     child: Center(
// // // //                       child: Image.asset(
// // // //                         _pages[index]['imagePath'],
// // // //                         fit: BoxFit.cover,
// // // //                       ),
// // // //                     ),
// // // //                   );
// // // //                 },
// // // //               ),
// // // //               flex: 3,
// // // //             ),
// // // //             Expanded(
// // // //               flex: 2,
// // // //               child: Column(
// // // //                 mainAxisAlignment: MainAxisAlignment.center,
// // // //                 children: [
// // // //                   Text(
// // // //                     _pages[_currentPageIndex]['text'],
// // // //                     style: TextStyle(
// // // //                       fontSize: 24,
// // // //                       fontWeight: FontWeight.bold,
// // // //                     ),
// // // //                   ),
// // // //                   SizedBox(height: 20),
// // // //                   Row(
// // // //                     mainAxisAlignment: MainAxisAlignment.center,
// // // //                     children: [
// // // //                       for (int i = 0; i < _pages.length; i++)
// // // //                         buildPageIndicator(isActive: i == _currentPageIndex),
// // // //                     ],
// // // //                   ),
// // // //                   SizedBox(height: 20),
// // // //                   ElevatedButton(
// // // //                     onPressed: () {
// // // //                       // Action when Get Started button is pressed
// // // //                     },
// // // //                     child: Text('Get Started'),
// // // //                   ),
// // // //                   Spacer(),
// // // //                   Padding(
// // // //                     padding: EdgeInsets.only(bottom: 20),
// // // //                     child: Text(
// // // //                       'Already have an account? Sign In here',
// // // //                       style: TextStyle(
// // // //                         fontSize: 16,
// // // //                         color: Colors.grey,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';

// // // import '../../resources/colors/colors.dart';
// // // import 'Widget/pageIndicator.dart';

// // // class GetStartedScreen extends StatefulWidget {
// // //   const GetStartedScreen({Key? key}) : super(key: key);

// // //   @override
// // //   State<GetStartedScreen> createState() => _GetStartedScreenState();
// // // }

// // // class _GetStartedScreenState extends State<GetStartedScreen> {
// // //   int _currentPageIndex = 0;

// // //   final List<Map<String, dynamic>> _pages = [
// // //     {
// // //       'imagePath': 'assets/images/YambabaLogo.png',
// // //       'text': 'Market for everything'
// // //     },
// // //     {
// // //       'imagePath': 'assets/images/YambabaLogo.png',
// // //       'text': 'Another text for page 2'
// // //     },
// // //     {'imagePath': 'assets/images/YambabaLogo.png', 'text': 'Text for page 3'},
// // //     {'imagePath': 'assets/images/YambabaLogo.png', 'text': 'Text for page 4'},
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final screenWidth = MediaQuery.of(context).size.width;
// // //     // final screenHeight = MediaQuery.of(context).size.height;
// // //     return Scaffold(
// // //       body: SafeArea(
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.stretch,
// // //           children: [
// // //             Expanded(
// // //               flex: 3,
// // //               child: SingleChildScrollView(
// // //                 scrollDirection: Axis.horizontal,
// // //                 child: Row(
// // //                   children: _pages.map((page) {
// // //                     return Container(
// // //                       width: MediaQuery.of(context).size.width,
// // //                       child: Image.asset(
// // //                         page['imagePath'],
// // //                         fit: BoxFit.cover,
// // //                       ),
// // //                     );
// // //                   }).toList(),
// // //                 ),
// // //               ),
// // //             ),
// // //             Expanded(
// // //               flex: 2,
// // //               child: Column(
// // //                 mainAxisAlignment: MainAxisAlignment.center,
// // //                 children: [
// // //                   Text(
// // //                     _pages[_currentPageIndex]['text'],
// // //                     style: TextStyle(
// // //                       fontSize: 24,
// // //                       fontWeight: FontWeight.bold,
// // //                     ),
// // //                   ),
// // //                   SizedBox(height: 20),
// // //                   Row(
// // //                     mainAxisAlignment: MainAxisAlignment.center,
// // //                     children: [
// // //                       for (int i = 0; i < _pages.length; i++)
// // //                         buildPageIndicator(isActive: i == _currentPageIndex),
// // //                     ],
// // //                   ),
// // //                   SizedBox(height: 80),
// // //                   Container(
// // //                       height: 50,
// // //                       width: screenWidth * 0.8,
// // //                       child: ElevatedButton(
// // //                         onPressed: () {
// // //                           // Get.toNamed('/SignupScreen');
// // //                         },
// // //                         child: Text(
// // //                           "Get Started",
// // //                           style: TextStyle(
// // //                               fontSize: 20, color: AppColor.blackColor),
// // //                         ),
// // //                         style: ElevatedButton.styleFrom(
// // //                           elevation: 5.0,
// // //                           foregroundColor: Colors.white, // Text color
// // //                           shape: RoundedRectangleBorder(
// // //                             borderRadius: BorderRadius.circular(10.0),
// // //                           ),
// // //                         ),
// // //                       )),
// // //                   Spacer(),
// // //                   Padding(
// // //                     padding: EdgeInsets.only(bottom: 20),
// // //                     child: Text(
// // //                       'Already have an account? Sign In here',
// // //                       style: TextStyle(
// // //                         fontSize: 16,
// // //                         color: Colors.grey,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // import '../../resources/colors/colors.dart';
// // import 'Widget/pageIndicator.dart';

// // class GetStartedScreen extends StatefulWidget {
// //   const GetStartedScreen({Key? key}) : super(key: key);

// //   @override
// //   State<GetStartedScreen> createState() => _GetStartedScreenState();
// // }

// // class _GetStartedScreenState extends State<GetStartedScreen> {
// //   int _currentPageIndex = 0;

// //   final List<Map<String, dynamic>> _pages = [
// //     {
// //       'imagePath': 'assets/images/YambabaLogo.png',
// //       'text': 'Market for everything'
// //     },
// //     {
// //       'imagePath': 'assets/images/YambabaLogo.png',
// //       'text': 'Another text for page 2'
// //     },
// //     {'imagePath': 'assets/images/YambabaLogo.png', 'text': 'Text for page 3'},
// //     {'imagePath': 'assets/images/YambabaLogo.png', 'text': 'Text for page 4'},
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;
// //     final screenHeight = MediaQuery.of(context).size.height;

// //     return Scaffold(
// //       body: SafeArea(
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: [
// //             Expanded(
// //               flex: 3,
// //               child: PageView.builder(
// //                 itemCount: _pages.length,
// //                 onPageChanged: (index) {
// //                   setState(() {
// //                     _currentPageIndex = index;
// //                   });
// //                 },
// //                 itemBuilder: (context, index) {
// //                   return Container(
// //                     width: screenWidth,
// //                     height: screenHeight * 0.6,
// //                     child: Center(
// //                       child: Image.asset(
// //                         _pages[index]['imagePath'],
// //                         fit: BoxFit.cover,
// //                       ),
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //             Expanded(
// //               flex: 3,
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Text(
// //                     _pages[_currentPageIndex]['text'],
// //                     style: TextStyle(
// //                       fontSize: 24,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                   ),
// //                   SizedBox(height: 200),
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       for (int i = 0; i < _pages.length; i++)
// //                         buildPageIndicator(isActive: i == _currentPageIndex),
// //                     ],
// //                   ),
// //                   SizedBox(height: 20),
// //                   Container(
// //                       height: 50,
// //                       width: screenWidth * 0.8,
// //                       child: ElevatedButton(
// //                         onPressed: () {},
// //                         child: Text(
// //                           "Get Started",
// //                           style: TextStyle(
// //                               fontSize: 20, color: AppColor.blackColor),
// //                         ),
// //                         style: ElevatedButton.styleFrom(
// //                           elevation: 5.0,
// //                           foregroundColor: Colors.white, // Text color
// //                           shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(10.0),
// //                           ),
// //                         ),
// //                       )),
// //                   Spacer(),
// //                   Padding(
// //                     padding: EdgeInsets.only(bottom: 20),
// //                     child: Text(
// //                       'Already have an account? Sign In here',
// //                       style: TextStyle(
// //                         fontSize: 16,
// //                         color: Colors.grey,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import '../../resources/colors/colors.dart';
// import 'Widget/pageIndicator.dart';

// class GetStartedScreen extends StatefulWidget {
//   const GetStartedScreen({Key? key}) : super(key: key);

//   @override
//   State<GetStartedScreen> createState() => _GetStartedScreenState();
// }

// class _GetStartedScreenState extends State<GetStartedScreen> {
//   int _currentPageIndex = 0;

//   final List<Map<String, dynamic>> _pages = [
//     {
//       'imagePath': 'assets/images/YambabaLogo.png',
//       'text': 'Market for everything'
//     },
//     {
//       'imagePath': 'assets/images/YambabaLogo.png',
//       'text': 'Another text for page 2'
//     },
//     {'imagePath': 'assets/images/YambabaLogo.png', 'text': 'Text for page 3'},
//     {'imagePath': 'assets/images/YambabaLogo.png', 'text': 'Text for page 4'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               flex: 3,
//               child: PageView.builder(
//                 itemCount: _pages.length,
//                 onPageChanged: (index) {
//                   setState(() {
//                     _currentPageIndex = index;
//                   });
//                 },
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: screenWidth,
//                     height: screenHeight * 0.6,
//                     child: Center(
//                       child: Image.asset(
//                         _pages[index]['imagePath'],
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     _pages[_currentPageIndex]['text'],
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       for (int i = 0; i < _pages.length; i++)
//                         buildPageIndicator(isActive: i == _currentPageIndex),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Container(
//                     height: 50,
//                     width: screenWidth * 0.8,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Text(
//                         "Get Started",
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: AppColor.blackColor,
//                         ),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.white,
//                         backgroundColor: Colors.blue,
//                         elevation: 5.0, // Text color
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 20),
//                     child: Text(
//                       'Already have an account? Sign In here',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/colors/colors.dart';
import 'widgets/pageIndicator.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  int _currentPageIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'imagePath': 'assets/images/YambabaLogo.png',
      'text': 'Market for everything'
    },
    {'imagePath': 'assets/images/YambabaLogo.png', 'text': 'Easy Checkout'},
    {
      'imagePath': 'assets/images/YambabaLogo.png',
      'text': 'Online Settlements'
    },
    {'imagePath': 'assets/images/YambabaLogo.png', 'text': 'Fast Delivery'},
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Container(
                    width: screenWidth,
                    height: screenHeight * 0.6,
                    child: Center(
                      child: Image.asset(
                        _pages[index]['imagePath'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _pages[_currentPageIndex]['text'],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < _pages.length; i++)
                        buildPageIndicator(isActive: i == _currentPageIndex),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Container(
                    height: screenHeight * 0.065,
                    width: screenWidth * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('WelcomeScreen');
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColor.blackColor,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 5.0,
                        foregroundColor: Colors.white, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.013),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('LoginScreen');
                      },
                      child: Text(
                        'Already have an account? Log In here',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
