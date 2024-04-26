// import 'package:flutter/material.dart';

// import 'package:carousel_slider/carousel_slider.dart';

// import '../Slider/slider.dart';

// class CarouselSlider extends StatelessWidget {
//    CarouselSlider({super.key});

//   @override
//   Widget build(BuildContext context) {

//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Container(
//             height: screenHeight * 0.22,
//             width: screenWidth * 0.9,
//             child: CarouselSlider(

//               items: const [
//               HomeSlider(
//                 isNetworkImage: false,
//                 imageUrl: "assets/images/YambabaLogo.png",
//               ),
//               HomeSlider(
//                 isNetworkImage: false,
//                 imageUrl: "assets/images/logo.png",
//               ),
//               HomeSlider(
//                 isNetworkImage: false,
//                 imageUrl: "assets/images/YambabaLogo.png",
//               ),
//               HomeSlider(
//                 isNetworkImage: false,
//                 imageUrl: "assets/images/logo.png",
//               ),
//             ], options: CarouselOptions(viewportFraction: 1)
//             ),

//     );

// }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Slider/slider.dart';

class CarousleSlider extends StatelessWidget {
  const CarousleSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 13),
      child: Container(
        height: screenHeight * 0.22,
        width: screenWidth * 1,
        child: CarouselSlider(items: const [
          HomeSlider(
            isNetworkImage: false,
            imageUrl: "assets/images/YambabaLogo.png",
          ),
          HomeSlider(
            isNetworkImage: false,
            imageUrl: "assets/images/logo.png",
          ),
          HomeSlider(
            isNetworkImage: false,
            imageUrl: "assets/images/YambabaLogo.png",
          ),
          HomeSlider(
            isNetworkImage: false,
            imageUrl: "assets/images/logo.png",
          ),
        ], options: CarouselOptions(viewportFraction: 1)),
      ),
    );
  }
}
