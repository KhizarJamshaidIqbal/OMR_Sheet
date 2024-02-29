// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color borderColor;
  final Color hintTextColor;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.borderColor,
    required this.hintTextColor,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: hintTextColor, fontSize: 14, fontWeight: FontWeight.w500),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        ),
      ),
    );
  }
}
