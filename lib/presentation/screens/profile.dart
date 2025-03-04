import 'package:coinboost/presentation/screens/assignment_page.dart';
import 'package:coinboost/presentation/screens/reward.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF7931A), // Orange background
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AssignmentPage()),
                );
              },
              icon: Icon(Icons.home, size: 50, color: Colors.white),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RewardPage()),
                );
              },
              icon: Image.asset('assets/app.png', height: 30, width: 30),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              icon: Icon(Icons.person, size: 30, color: Colors.white),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
