import 'package:flutter/material.dart';

class HomeScreenModel extends StatefulWidget {
  const HomeScreenModel({super.key});

  @override
  State<HomeScreenModel> createState() => _HomeScreenModelState();
}

class _HomeScreenModelState extends State<HomeScreenModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Model"),
      ),
    );
  }
}
