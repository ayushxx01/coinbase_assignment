import 'package:coinboost/presentation/screens/news_screen.dart';
import 'package:coinboost/presentation/widgets/custom_bottom_bar.dart';
import 'package:coinboost/presentation/widgets/my_button.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 8, right: 8, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset('assets/Back.png'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 60),
                Text(
                  'Read News',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFF7931A),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            Image.asset('assets/task2.png', height: 358),

            Text(
              'Rules of Task',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),

            Text(
              '1. Keep scrolling for 10 minutes.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '2.Keep clicking every 30 seconds.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '3.Don\'t leave still screen for more than 30 seconds.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 40),
            MyButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => NewsScreen()),
                );
              },
              title: 'Start Task',
              side: 193,
              top: 48,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
