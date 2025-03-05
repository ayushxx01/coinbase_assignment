import 'package:coinboost/presentation/widgets/custom_bottom_bar.dart';
import 'package:coinboost/presentation/widgets/instruction_card.dart';
import 'package:flutter/material.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFFF7931A)),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            SizedBox(height: 20),
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
                  'Rewarding Levels',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFF7931A),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),

            ProgressCard(progress: 0.5, level: '1', price: 50, price2: 100),
            const SizedBox(height: 20),
            ProgressCard(progress: 0.0, level: '2', price: 100, price2: 200),
            const SizedBox(height: 20),
            ProgressCard(progress: 0.0, level: '3', price: 200, price2: 400),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
