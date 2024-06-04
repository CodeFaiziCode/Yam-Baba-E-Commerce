import 'package:flutter/material.dart';

import 'package:yam_baba_e_commerce/resources/components/blackButton.dart';

import '../../resources/components/textField.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  TextEditingController orderIdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.031),
          Text(
            "Track Your Order",
            style: TextStyle(
              fontSize: screenHeight * 0.052,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Text(
              "Please enter your order Id to track your order",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          Container(
            margin: EdgeInsets.only(
                top: screenHeight * 0.07,
                left: screenWidth * 0.05,
                right: screenWidth * 0.05),
            child: CustomTextField(
              controller: orderIdController,
              hintText: "Enter your ID",
              labelText: 'ID',
            ),
          ),
          SizedBox(
            height: screenHeight * 0.075,
          ),
          Container(
            child: BlackButton(onPressed: () {}, text: "Track Your Order"),
          )
        ],
      ),
    );
  }
}
