import 'package:coinboost/presentation/screens/assignment_page.dart';
import 'package:coinboost/presentation/screens/profile.dart';
import 'package:coinboost/presentation/screens/reward.dart';
import 'package:coinboost/presentation/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Container(height: 37, width: 400, color: Color(0xFFF7931A)),
            const SizedBox(height: 20),
            Image.asset('assets/news_task.png'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
