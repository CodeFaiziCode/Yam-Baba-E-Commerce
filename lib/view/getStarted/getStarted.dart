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
    {'imagePath': 'assets/images/onb2.png', 'text': 'Easy Checkout'},
    {'imagePath': 'assets/images/onb4.png', 'text': 'Market for everything'},
    {'imagePath': 'assets/images/onb1.png', 'text': 'Online Settlements'},
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
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.6,
                      child: Center(
                        child: Image.asset(
                          _pages[index]['imagePath'],
                          fit: BoxFit.cover,
                        ),
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
                    style: const TextStyle(
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
                        Get.toNamed("WelcomeScreen");
                      },
                      child: const Text(
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
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.013),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('LoginScreen');
                      },
                      child: const Text(
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
