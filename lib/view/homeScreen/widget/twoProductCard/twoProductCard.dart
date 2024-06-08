import 'package:flutter/material.dart';

import '../../home_screen.dart';

class TwoProductCardWidget extends StatelessWidget {
  final TwoProduct twoProduct;

  const TwoProductCardWidget({Key? key, required this.twoProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 200,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 2.5),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset(
                twoProduct.TwoProduct_imageUrl,
                width: double.infinity,
                height: 130,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.5, left: 8, right: 7),
            child: Text(
              twoProduct.Two_name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 8, right: 7),
            child: Text(
              twoProduct.TwoProduct_description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 10),
            child: Row(
              children: [
                Text(
                  '\AED ${twoProduct.TwoProduct_price.toStringAsFixed(2)}',
                  style: const TextStyle(
                      fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                const Icon(
                  Icons.favorite_outline,
                  size: 22,
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.add_shopping_cart_outlined,
                  size: 22,
                ),
              ],
            ),
          ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}
