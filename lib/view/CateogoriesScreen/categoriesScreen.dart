import 'package:flutter/material.dart';

import '../homeScreen/widget/AppDrawer/appDrawer.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Categories"),
        ),
        drawer: AppDrawer(),
        body: Column());
  }
}
