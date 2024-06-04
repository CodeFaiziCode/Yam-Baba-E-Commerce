// // // import 'package:flutter/material.dart';

// // // class CustomTextField extends StatelessWidget {
// // //   final TextEditingController controller;
// // //   final String hintText;
// // //   final bool obscureText;
// // //   final TextInputType keyboardType;
// // //   final int maxLines;

// // //   const CustomTextField({
// // //     Key? key,
// // //     required this.controller,
// // //     required this.hintText,
// // //     this.obscureText = false,
// // //     this.keyboardType = TextInputType.text,
// // //     this.maxLines = 1,
// // //   }) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return TextFormField(
// // //       controller: controller,
// // //       keyboardType: keyboardType,
// // //       obscureText: obscureText,
// // //       maxLines: maxLines,
// // //       decoration: InputDecoration(
// // //         filled: true,
// // //         fillColor: Colors.grey[200], // Change the color as per your requirement
// // //         hintText: hintText,
// // //         border: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(10.0),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // class CustomTextField extends StatelessWidget {
// //   final TextEditingController controller;
// //   final String hintText;
// //   final String labelText; // Added labelText parameter
// //   final bool obscureText;
// //   final TextInputType keyboardType;
// //   final int maxLines;

// //   const CustomTextField({
// //     Key? key,
// //     required this.controller,
// //     required this.hintText,
// //     required this.labelText, // Pass label text in constructor
// //     this.obscureText = false,
// //     this.keyboardType = TextInputType.text,
// //     this.maxLines = 1,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return TextFormField(
// //       controller: controller,
// //       keyboardType: keyboardType,
// //       obscureText: obscureText,
// //       maxLines: maxLines,
// //       decoration: InputDecoration(
// //         labelText: labelText, // Added label text
// //         hintText: hintText,
// //         border: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(10.0),

// //         ),
// //       ),

// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// String? validateEmptyText(String? value) {
//   if (value == null || value.isEmpty) {
//     return 'Please enter a value';
//   }
//   return null; // No error message to return means valid input
// }

// class CustomTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final String labelText;
//   final bool obscureText;
//   final TextInputType keyboardType;
//   final int maxLines;
//   final String? Function(String?)? validator; // Optional validator function

//   const CustomTextField({
//     Key? key,
//     required this.controller,
//     required this.hintText,
//     required this.labelText,
//     this.obscureText = false,
//     this.keyboardType = TextInputType.text,
//     this.maxLines = 1,
//     this.validator,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//       maxLines: maxLines,
//       decoration: InputDecoration(
//         labelText: labelText,
//         hintText: hintText,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//       ),
//       validator:
//           validator ?? validateEmptyText, // Use provided validator or default
//     );
//   }
// }

import 'package:flutter/material.dart';

String? validateEmailOrPhone(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email or phone number';
  }

  // Basic validation for email or phone format (can be enhanced)
  if (!value.contains('@') && !value.startsWith('+')) {
    return 'Invalid email or phone number format';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your password';
  }

  // Password complexity rules can be added here (optional)
  return null;
}

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool obscureText; // For password field
  final TextInputType keyboardType;
  final int maxLines;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.obscureText = false, // Default for email/phone
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.validator,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText:
          widget.obscureText ? showPassword : false, // Toggle for password
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  showPassword ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              )
            : null, // Only show icon for password field
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      validator: widget.validator ??
          (widget.obscureText ? validatePassword : validateEmailOrPhone),
    );
  }
}
