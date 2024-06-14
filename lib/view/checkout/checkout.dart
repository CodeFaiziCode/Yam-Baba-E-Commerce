// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:yam_baba_e_commerce/utils/seprator.dart';
import 'package:yam_baba_e_commerce/view/checkout/controller/checkout_controller.dart';

import '../homeScreen/widget/AppDrawer/appDrawer.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CheckoutController controller = CheckoutController();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        flexibleSpace: Container(
          height: screenHeight * 0.2, // Adjusted height
          child: Center(
            child: Image.asset(
              "assets/images/download.png",
              height: screenHeight * 0.050,
              fit: BoxFit.contain,
            ),
          ),
          padding: EdgeInsets.only(
              // bottom: 0,
              top: screenHeight * 0.04), // Adjust padding to move logo down
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, size: screenHeight * 0.035),
            // padding:
            //     EdgeInsets.only(right: 0), // Reduce padding to reduce space
            onPressed: () {},
          ),
          IconButton(
            icon:
                Icon(Icons.shopping_cart_outlined, size: screenHeight * 0.035),
            // padding:
            //     EdgeInsets.only(left: 0), // Reduce padding to reduce space
            onPressed: () {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Check out',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Items',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle add voucher
                  },
                  style: ElevatedButton.styleFrom(
                    //fixedSize: const Size(150, 30),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add Voucher',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.clear, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildCartItem('assets/images/product1.jpg', 'Item 1',
                      'Description of Item 1', 20.0),
                  _buildCartItem('assets/images/product3.jpg', 'Item 2',
                      'Description of Item 2', 15.0),
                  _buildCartItem('assets/images/product2.jpg', 'Item 3',
                      'Description of Item 3', 30.0),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildInfoContainer(
                'Shipping Address',
                'Magadi Main Rd, next to Prasanna Theatre, Cholourpalya, Bengaluru, Karnataka 560023',
                'Edit'),
            const SizedBox(height: 16),
            _buildInfoContainer(
                'Contact Info', '+91987654321 \n gmail@example.com', 'Edit'),
            const SizedBox(height: 16),
            Text(
              'Payment Method',
              style: TextStyle(
                  fontSize: Get.height * 0.025, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Obx(
                    () => ChoiceChip(
                      backgroundColor: const Color(0xff2C93FD).withOpacity(0.3),
                      side: const BorderSide(
                          color: Color.fromARGB(0, 246, 246, 246)),
                      disabledColor: const Color(0xffE5EBFC),
                      selectedColor: const Color(0xff2C93FD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Adjust this value for more roundness
                      ),
                      onSelected: (value) {
                        controller.isCOD.value = !value;
                      },
                      showCheckmark: false,
                      label: Obx(
                        () => Text(
                          'Card',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (!controller.isCOD.value)
                                ? Colors.white
                                : const Color(0xff2C93FD),
                          ),
                        ),
                      ),
                      selected: !controller.isCOD.value,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Obx(
                    () => ChoiceChip(
                      backgroundColor: const Color(0xff2C93FD).withOpacity(0.3),
                      side: const BorderSide(
                          color: Color.fromARGB(0, 246, 246, 246)),
                      disabledColor: const Color(0xffE5EBFC),
                      selectedColor: const Color(0xff2C93FD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Adjust this value for more roundness
                      ),
                      onSelected: (value) {
                        controller.isCOD.value = value;
                      },
                      showCheckmark: false,
                      label: Obx(
                        () => Text(
                          'Cash on Delivery',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (controller.isCOD.value)
                                ? Colors.white
                                : const Color(0xff2C93FD),
                          ),
                        ),
                      ),
                      selected: controller.isCOD.value,
                    ),
                  ),
                ),
              ],
            ),
            // RadioListTile(
            //   title: Text('Card'),
            //   value: 'card',
            //   groupValue: 'payment',
            //   onChanged: (value) {
            //     // Handle payment method selection
            //   },
            // ),
            // RadioListTile(
            //   title: Text('Cash on Delivery'),
            //   value: 'cod',
            //   groupValue: 'payment',
            //   onChanged: (value) {
            //     // Handle payment method selection
            //   },
            // ),
            const SizedBox(height: 16),
            Text(
              'Billing Address',
              style: TextStyle(
                  fontSize: Get.height * 0.025, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Obx(
                () => Radio<String>(
                  activeColor: Colors.blue,
                  value: 'same',
                  groupValue: controller.billingAddressVal.value,
                  onChanged: (value) {
                    // Handle billing address selection
                    controller.billingAddressVal.value = value!;
                  },
                ),
              ),
              title: const Text('Use shipping address'),
            ),
            ListTile(
              leading: Obx(
                () => Radio<String>(
                  activeColor: Colors.blue,
                  value: 'different',
                  groupValue: controller.billingAddressVal.value,
                  onChanged: (value) {
                    // Handle billing address selection
                    controller.billingAddressVal.value = value!;
                  },
                ),
              ),
              title: const Text('Use different billing address'),
            ),

            // RadioListTile(
            //   selected: true,
            //   selectedTileColor: Colors.blue.withOpacity(0.1),
            //   title: const Text('Use shipping address'),
            //   value: 'same',
            //   groupValue: 'billing',
            //   onChanged: (value) {
            //     // Handle billing address selection
            //   },
            // ),
            // RadioListTile(
            //   title: const Text('Use different billing address'),
            //   value: 'different',
            //   groupValue: 'billing',
            //   onChanged: (value) {
            //     // Handle billing address selection
            //   },
            // ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total: \$65.00',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle pay now
                    // showModalBottomSheet(
                    //     context: context,
                    //     builder: (context) {
                    //       return Container(
                    //         width: screenWidth,
                    //         height: screenHeight * 0.5,
                    //         decoration: const BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.only(
                    //             topLeft: Radius.circular(20),
                    //             topRight: Radius.circular(20),
                    //           ),
                    //         ),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           children: [
                    //             Container(
                    //               padding: const EdgeInsets.symmetric(
                    //                   horizontal: 15),
                    //               height: screenHeight * 0.1,
                    //               width: screenWidth,
                    //               decoration: BoxDecoration(
                    //                   color: Colors.blue.withOpacity(0.1)),
                    //               child: Row(
                    //                 children: [
                    //                   Text(
                    //                     "Active Vouchers",
                    //                     style: TextStyle(
                    //                         fontSize: Get.height * 0.025,
                    //                         color: Colors.black,
                    //                         fontWeight: FontWeight.bold),
                    //                   ),
                    //                   const Spacer(),
                    //                   InkWell(
                    //                     onTap: () {
                    //                       // Handle close action
                    //                       Navigator.pop(context);
                    //                     },
                    //                     child: const CircleAvatar(
                    //                       backgroundColor: Colors.blue,
                    //                       child: Icon(
                    //                         Icons.clear,
                    //                         color: Colors.white,
                    //                       ),
                    //                     ),
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //             const SizedBox(height: 16),
                    //             couponWidget(),
                    //           ],
                    //         ),
                    //       );
                    //     });
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(138.75, 30),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: const Text('Pay Now',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem(
      String imagePath, String title, String description, double price) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(title),
      subtitle: Text(description),
      trailing: Text('\$$price',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildInfoContainer(String title, String address, String action) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  address,
                  style: const TextStyle(fontSize: 14),
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ),
          IconButton(
            icon: CircleAvatar(
                radius: Get.height * 0.022,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: Get.height * 0.026,
                )),
            onPressed: () {
              // Handle edit action
            },
          ),
        ],
      ),
    );
  }

  // Widget couponWidget() {
  //   return Stack(
  //     children: [
  //       Container(
  //         height: 100,
  //         width: Get.width * 0.8, //Add width as per requirement,
  //         margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
  //         child: ClipPath(
  //           clipper: DolDurmaClipper(holeRadius: 20),
  //           child: Container(
  //             decoration: BoxDecoration(
  //               color: Colors.blue,
  //               borderRadius: BorderRadius.circular(10),
  //               border: Border.all(color: Colors.blue, width: 2),
  //             ),
  //             child: Container(
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   const SizedBox(height: 15), // Top widgets
  //                   Padding(
  //                     //Separater line
  //                     padding: const EdgeInsets.only(left: 20, right: 20),
  //                     child: Container(
  //                       color: Colors.grey,
  //                       height: 2,
  //                     ),
  //                   ),
  //                   const SizedBox(height: 32), // Bottom widgets
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         top: 0.5,
  //         left: 0.5,
  //         right: 0.5,
  //         bottom: 0.5,
  //         //make same shape as clipper but with slide padding that it can look as a border
  //         child: Container(
  //           height: 100,
  //           width: Get.width * 0.8, //Add width as per requirement,
  //           margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
  //           child: ClipPath(
  //             clipper: DolDurmaClipper(holeRadius: 24),
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 borderRadius: BorderRadius.circular(10),
  //                 border: Border.all(color: Colors.blue, width: 2),
  //               ),
  //               child: Container(
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   children: [
  //                     const Padding(
  //                       padding: EdgeInsets.symmetric(horizontal: 10.0),
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Text('Voucher',
  //                               style: TextStyle(
  //                                   color: Colors.blue,
  //                                   fontSize: 22,
  //                                   fontWeight: FontWeight.bold)),
  //                           //valid untill date
  //                           Text('Valid until 12.12.2024',
  //                               style: TextStyle(
  //                                   fontSize: 12, fontWeight: FontWeight.bold)),
  //                         ],
  //                       ),
  //                     ), // Top widgets
  //                     //dotted seprarator
  //                     const MySeparator(color: Colors.blue),
  //                     Column(
  //                       mainAxisAlignment: MainAxisAlignment.end,
  //                       children: [
  //                         const Padding(
  //                           padding: EdgeInsets.symmetric(
  //                             horizontal: 10.0,
  //                           ),
  //                           child: Row(
  //                             mainAxisAlignment: MainAxisAlignment.start,
  //                             children: [
  //                               Icon(Icons.shopping_bag,
  //                                   color: Colors.blue, size: 18),
  //                               Text('First Purchase',
  //                                   style: TextStyle(
  //                                       color: Colors.black,
  //                                       fontSize: 18,
  //                                       fontWeight: FontWeight.bold)),
  //                             ],
  //                           ),
  //                         ),
  //                         Padding(
  //                           padding:
  //                               const EdgeInsets.symmetric(horizontal: 10.0),
  //                           child: Row(
  //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                             children: [
  //                               const Text('5% off on first purchase',
  //                                   style: TextStyle(
  //                                       color: Colors.black,
  //                                       fontSize: 14,
  //                                       fontWeight: FontWeight.bold)),
  //                               //valid untill date
  //                               InkWell(
  //                                 child: Container(
  //                                   padding: const EdgeInsets.symmetric(
  //                                       horizontal: 13.0, vertical: 5.0),
  //                                   decoration: BoxDecoration(
  //                                     color: Colors.blue,
  //                                     borderRadius: BorderRadius.circular(10),
  //                                   ),
  //                                   child: const Text('Apply',
  //                                       style: TextStyle(
  //                                           color: Colors.white,
  //                                           fontSize: 14,
  //                                           fontWeight: FontWeight.bold)),
  //                                 ),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}

// class DolDurmaClipper extends CustomClipper<Path> {
//   final double holeRadius;

//   DolDurmaClipper({required this.holeRadius});

//   @override
//   Path getClip(Size size) {
//     var bottom = size.height / 2;
//     final path = Path()
//       ..moveTo(0, 0)
//       ..lineTo(0.0, size.height - bottom - holeRadius)
//       ..arcToPoint(
//         Offset(0, size.height - bottom),
//         clockwise: true,
//         radius: const Radius.circular(1),
//       )
//       ..lineTo(0.0, size.height)
//       ..lineTo(size.width, size.height)
//       ..lineTo(size.width, size.height - bottom)
//       ..arcToPoint(
//         Offset(size.width, size.height - bottom - holeRadius),
//         clockwise: true,
//         radius: const Radius.circular(1),
//       );

//     path.lineTo(size.width, 0.0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(DolDurmaClipper oldClipper) => true;
// }
