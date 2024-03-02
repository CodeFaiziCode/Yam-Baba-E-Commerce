import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:yam_baba_e_commerce/resources/routes/routes_name.dart';
// import 'package:yam_baba_e_commerce/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("LogIn"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/HomeScreen');
              },
              child: Text('Login'),
            ),
            Spacer(),
            TextButton(
                onPressed: () {
                  Get.toNamed('/SignupScreen');
                },
                child: Text("Don't have an account , Sign Up here"))
          ])),
    );
  }
}
