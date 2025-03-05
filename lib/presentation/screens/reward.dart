import 'package:coinboost/presentation/screens/assignment_page.dart';
import 'package:coinboost/presentation/screens/profile.dart';
import 'package:coinboost/presentation/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: CustomBottomBar());
  }
}
