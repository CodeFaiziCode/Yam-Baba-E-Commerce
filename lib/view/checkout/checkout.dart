import 'package:flutter/material.dart';

import '../homeScreen/widget/AppDrawer/appDrawer.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
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
            Center(
              child: Text(
                'Check out',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Items',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle add voucher
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(138.75, 30),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
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
            SizedBox(height: 16),
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
            SizedBox(height: 16),
            _buildInfoContainer('Shipping Address', 'Edit'),
            SizedBox(height: 16),
            _buildInfoContainer('Contact Info', 'Edit'),
            SizedBox(height: 16),
            Text(
              'Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              title: Text('Card'),
              value: 'card',
              groupValue: 'payment',
              onChanged: (value) {
                // Handle payment method selection
              },
            ),
            RadioListTile(
              title: Text('Cash on Delivery'),
              value: 'cod',
              groupValue: 'payment',
              onChanged: (value) {
                // Handle payment method selection
              },
            ),
            SizedBox(height: 16),
            Text(
              'Billing Address',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              title: Text('Use shipping address'),
              value: 'same',
              groupValue: 'billing',
              onChanged: (value) {
                // Handle billing address selection
              },
            ),
            RadioListTile(
              title: Text('Use different billing address'),
              value: 'different',
              groupValue: 'billing',
              onChanged: (value) {
                // Handle billing address selection
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: \$65.00',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle pay now
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(138.75, 30),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: Text('Pay Now', style: TextStyle(color: Colors.white)),
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
      trailing: Text('\$$price'),
    );
  }

  Widget _buildInfoContainer(String title, String action) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Handle edit action
            },
          ),
        ],
      ),
    );
  }
}
