import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final double side;
  final double top;
  const MyButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.side,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: side,
        height: top,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xFFF7931A), // Orange color
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300, // Light grey shadow
              blurRadius: 8, // Smooth blur
              offset: Offset(0, 8), // Only bottom shadow
            ),
          ],
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
