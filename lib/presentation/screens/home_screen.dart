import 'package:coinboost/presentation/widgets/my_button.dart';
import 'package:coinboost/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/splash_logo.png', height: 120),
            SizedBox(height: 30),
            Text(
              'C O I N B O O S T',
              style: TextStyle(
                fontSize: 32,
                color: Color(0xFFF7931A),
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(height: 30),
            Image.asset('assets/savings.png', height: 250),

            SizedBox(height: 40),

            MyTextField(title: 'Enter your Mobile Number'),

            SizedBox(height: 20),

            MyButton(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
