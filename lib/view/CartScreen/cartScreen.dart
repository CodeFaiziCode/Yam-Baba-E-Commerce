import 'package:flutter/material.dart';

import '../../functions/navbarNavigation.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        navigateToIndex(0); // Use the dynamic navigation function on back press
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                navigateToIndex(0); // Use the dynamic navigation function
              },
            ),
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: Text("Cart Screen"),
          ),
          body: Column()),
    );
  }
}
