import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  final double progress;
  final String level;
  final double price;
  final double price2;

  const ProgressCard({
    super.key,
    required this.progress,
    required this.level,
    required this.price,
    required this.price2,
  }); // 50% progress

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      width: 342,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Orange Header
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Text(
              level,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          SizedBox(height: 12),

          // Minimum Withdrawal Text
          Text(
            "Minimum Withdrawal =  \$$price",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),

          // Earnings Text
          Text(
            "Your earnings = \$$price2",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),

          SizedBox(height: 16),

          // Progress Bar with Text Overlay
          Stack(
            alignment: Alignment.center,
            children: [
              // Progress Bar
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.orange.withOpacity(0.1),
                  color: Colors.orange,
                  minHeight: 16,
                ),
              ),

              // Percentage Text on Progress Bar
              Text(
                "${(progress * 100).toInt()}%",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
