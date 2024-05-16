import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class horizontalCateogorySlider extends StatelessWidget {
  const horizontalCateogorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Center(
                        child: FaIcon(
                      FontAwesomeIcons.shoePrints,
                      color: Colors.white,
                    )),
                    // color: Colors.white,
                    // Adjust the size of the icon as needed
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 41,
                    child: Text(
                      "",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    //  child: Text(
                    //   "Shoes Category",
                    //   maxLines: 2,
                    //   overflow: TextOverflow.ellipsis,
                    // ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
