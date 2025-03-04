import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String title;
  const MyTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 307,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300, // Light grey shadow
            blurRadius: 8, // Smooth blur
            offset: Offset(0, 8), // Only bottom shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Enter Your Mobile Number",
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
            fontWeight: FontWeight.w600,
          ),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.phone,
      ),
    );
  }
}
