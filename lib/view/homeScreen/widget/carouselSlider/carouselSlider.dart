import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'slider.dart';

class CarousleSlider extends StatefulWidget {
  const CarousleSlider({super.key});

  @override
  _CarousleSliderState createState() => _CarousleSliderState();
}

class _CarousleSliderState extends State<CarousleSlider> {
  int _current = 0;

  final List<Widget> imageSliders = const [
    HomeSlider(
      isNetworkImage: false,
      imageUrl: "assets/images/ban1.jpeg",
    ),
    HomeSlider(
      isNetworkImage: false,
      imageUrl: "assets/images/ban6.jpg",
    ),
    HomeSlider(
      isNetworkImage: false,
      imageUrl: "assets/images/ban3.jpeg",
    ),
    HomeSlider(
      isNetworkImage: false,
      imageUrl: "assets/images/ban5.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              height: screenHeight * 0.22,
              width: screenWidth * 1,
              child: CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageSliders.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => setState(() {
                  _current = entry.key;
                }),
                child: Container(
                  width: 9.0,
                  height: 9.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == entry.key ? Colors.blue : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
