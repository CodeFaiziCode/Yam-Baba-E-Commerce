import 'package:flutter/material.dart';

import '../homeScreen/widget/AppDrawer/appDrawer.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Profile"),
        ),
        drawer: AppDrawer(),
        body: Column());
  }
}
