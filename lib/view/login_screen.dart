import 'package:flutter/material.dart';
import 'package:yam_baba_e_commerce/resources/colors/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColor.whiteColor, // Set background color as needed
      body: ListView(
        padding: EdgeInsets.all(0), // Remove default padding
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.13),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: screenWidth * 0.09,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.001),
                Text(
                  'Sign in to your account',
                  style: TextStyle(
                      fontSize: screenWidth * 0.04, color: AppColor.blackColor),
                ),
                SizedBox(height: screenHeight * 0.1),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.fieldColor,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.026),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.fieldColor,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.001),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Implement forgot password action
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement login action
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      backgroundColor: Colors.black,
                      minimumSize:
                          Size(screenWidth * 0.80, screenHeight * 0.07),
                    ),
                    child: Text('Login',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: AppColor.whiteColor)),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                // Divider(),
                Row(
                  children: [
                    Container(
                        // height: screenHeight * 0.01,
                        width: screenWidth * 0.2,
                        child: Divider()),
                    SizedBox(
                      width: screenWidth * 0.1,
                    ),
                    Text("Or continue with"),
                    SizedBox(
                      width: screenWidth * 0.1,
                    ),
                    Container(
                        // height: screenHeight * 0.01,
                        width: screenWidth * 0.2,
                        child: Divider()),
                  ],
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: screenWidth * 0.4,
                      color: Color(0xff316FF6),
                      child: IconButton(
                        onPressed: () {
                          // Implement action for the first social login button
                        },
                        icon: Icon(Icons.facebook_outlined),
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.4,
                      color: Colors.green,
                      child: IconButton(
                        onPressed: () {
                          // Implement action for the second social login button
                        },
                        icon: Icon(Icons.facebook_sharp),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.064),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                    child: TextButton(
                      onPressed: () {
                        // Implement action for "Not a member? Join Now"
                      },
                      child: Text('Not a member? Join Now'),
                    ),
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
