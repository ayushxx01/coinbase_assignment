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
        padding: const EdgeInsets.only(top: 40, left: 16, right: 20, bottom: 8),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset('assets/Back.png'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 85),
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

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rules of Task',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 40),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '1. Keep scrolling for 10 minutes.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '2.Keep clicking every 30 seconds.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '3.Don\'t leave still screen for more than 30 seconds.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: MyButton(
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
