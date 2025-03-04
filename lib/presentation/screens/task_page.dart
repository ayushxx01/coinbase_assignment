import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(children: []),

          Image.asset('assets/task2.png', height: 358),

          Text('Rules of Task'),

          Text('1. Keep scrolling for 10 minutes.'),

          Text('2.Keep clicking every 30 seconds.'),

          Text('3.Don\'t leave still screen for more than 30 seconds.'),
        ],
      ),
    );
  }
}
