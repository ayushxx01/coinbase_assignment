import 'package:coinboost/presentation/screens/profile.dart';
import 'package:coinboost/presentation/screens/reward.dart';
import 'package:coinboost/presentation/screens/task_instruc.dart';
import 'package:coinboost/presentation/widgets/card.dart';
import 'package:coinboost/presentation/widgets/custom_bottom_bar.dart';
import 'package:coinboost/presentation/widgets/daily.dart';
import 'package:flutter/material.dart';

class AssignmentPage extends StatefulWidget {
  const AssignmentPage({super.key});

  @override
  State<AssignmentPage> createState() => _AssignmentPageState();
}

class _AssignmentPageState extends State<AssignmentPage> {
  int _selectedIndex = 0; // Track the selected tab index

  // List of pages corresponding to each tab
  final List<Widget> _pages = [AssignmentPage(), TaskPage(), RewardPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/profile.png', height: 30, width: 30),
                      SizedBox(width: 5),
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Image.asset('assets/medal.png', height: 25, width: 25),
                      Text(
                        'Level 01',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Row(
                    children: [
                      Image.asset('assets/wallet.png', height: 25, width: 25),
                      Text(
                        ' \$25.00',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            DailyRewards(),

            const SizedBox(height: 30),

            Column(
              children: [
                Text(
                  'Do Tasks, Earn Reward',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF965200),
                  ),
                ),

                Text(
                  'You can do these tasks as many times as you want to',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 40),
            GameCard(
              imagePath: 'assets/game1.png',
              title: 'Play Game',
              price: 'Earn \$10',
              location: () {},
            ),

            const SizedBox(height: 40),

            GameCard(
              imagePath: 'assets/task2.png',
              title: 'Read News',
              price: 'Earn \$5',
              location: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TaskPage()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
