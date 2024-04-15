import 'package:flutter/material.dart';

import '../homeScreen/widget/AppDrawer/appDrawer.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Cart Screen"),
        ),
        drawer: AppDrawer(),
        body: Column());
  }
}
