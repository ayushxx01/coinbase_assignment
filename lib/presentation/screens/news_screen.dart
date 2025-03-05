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
      appBar: AppBar(backgroundColor: Color(0xFFF7931A)),
      body: Column(
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                child: Center(
                  child: SizedBox(
                    height: 700,
                    child: Image.asset('assets/news_task.png'),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                right: 20,
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 4),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close, size: 20),
                      Text("10.00", style: TextStyle(fontSize: 16)),
                      ElevatedButton(onPressed: () {}, child: Text("Claim")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
