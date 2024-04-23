import 'package:flutter/material.dart';

class horizontalCateogorySlider extends StatelessWidget {
  const horizontalCateogorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Column(
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(66, 21, 7, 51),
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Image(
                        image: AssetImage(
                          "assets/images/logo.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 41,
                    child: Text(
                      "Shoes Category",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
