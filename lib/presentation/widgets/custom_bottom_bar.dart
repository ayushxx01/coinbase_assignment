import 'package:coinboost/presentation/screens/assignment_page.dart';
import 'package:coinboost/presentation/screens/profile.dart';
import 'package:coinboost/presentation/screens/reward.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80, // Reduce overall navbar height
      decoration: BoxDecoration(
        color: Color(0xFFF7931A), // Orange background
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AssignmentPage()),
              );
            },
            icon: Image.asset(
              'assets/home.png',
              height: 40,
              width: 40,
            ), // Reduced size
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => RewardPage()),
              );
            },
            icon: Image.asset(
              'assets/app.png',
              height: 45,
              width: 45,
            ), // Reduced size
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            icon: Image.asset(
              'assets/user.png',
              height: 40,
              width: 40,
            ), // Reduced size
          ),
        ],
      ),
    );
  }
}
